package todolist

class TaskController {

    def operationsService

    //static scaffold = Task

    def index() {
        def finishedStatus = params["finished"]
        def searchField = params["search"]
        def taskId = operationsService.getFirstId(finishedStatus, searchField)

        if((finishedStatus != null)&&(searchField != null)){
            redirect(action: "display", id:taskId, params:[finished: params["finished"], search: params["search"]])
        }else if((finishedStatus != null)&&(searchField == null)){
            redirect(action: "display", id:taskId, params:[finished: params["finished"]])
        }else if(searchField != null){
            redirect(action: "display", id:taskId, params:[search: params["search"]])
        }else{
            redirect(action: "display", id:taskId)
        }
    }

    def display(Long id) {
        def finished = params["finished"]
        def searchValue = params["search"]
        def taskList = operationsService.getTaskList(finished, searchValue)
        def selectedTask= Task.get(id)
        def listSize = taskList.size()
        //selectedTask.subName = "Subtitle 01"

        [taskList: taskList, taskCount: listSize, selectedTask: selectedTask, show: true]

    }

    def edit(Long id){
        def finished = params["finished"]
        def searchValue = params["search"]
        def taskList = operationsService.getTaskList(finished, searchValue)
        def selectedTask= Task.get(id)
        def listSize = taskList.size()
        //selectedTask.subName = "Subtitle 01"
        render(view: "display", model:[taskList: taskList, taskCount: Task.count(), selectedTask: selectedTask, show: false])
    }

    def update(Long id){
        def updatedTask= Task.get(id)
        updatedTask.properties = params
        updatedTask.save(flush: true)
        redirect(action: "display", id: id)
    }

    def delete(Long id){
        def task= Task.get(id)
        task.delete(flush: true)
        redirect(action: "index")
    }

    def finished(Long id){
        def updatedTask= Task.get(id)
        updatedTask.finished = !updatedTask.finished
        updatedTask.save(flush: true)
        redirect(action: "display", id: id)
    }

}

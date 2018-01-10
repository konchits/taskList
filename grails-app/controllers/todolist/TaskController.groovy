package todolist

class TaskController {

    def operationsService

    //static scaffold = Task

    def index() {
        def taskId = operationsService.getFirstId()
        redirect(action: "display", id:taskId)
    }

    def display(Long id) {
        def taskList = Task.list()
        def selectedTask= Task.get(id)
        //selectedTask.subName = "Subtitle 01"
        [taskList: taskList, taskCount: Task.count(), selectedTask: selectedTask, show: true]

    }

    def edit(Long id){
        def taskList = Task.list()
        def selectedTask= Task.get(id)
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

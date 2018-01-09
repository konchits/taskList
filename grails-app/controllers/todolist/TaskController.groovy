package todolist

class TaskController {

    //static scaffold = Task

    def index() {
        redirect(action: "display", id:"1")
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
        updatedTask.save()
        redirect(action: "display", id: id)
    }
}

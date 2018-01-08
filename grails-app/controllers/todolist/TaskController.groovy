package todolist

class TaskController {

    //static scaffold = Task

    def index() {
        redirect(action: "display", id:"1")
    }

    def display() {
        def taskList = Task.list()
        def selectedTask= Task.get(params.id)
        [taskList: taskList, taskCount: Task.count(), selectedTask: selectedTask]

    }
}

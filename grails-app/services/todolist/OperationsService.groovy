package todolist

import grails.gorm.transactions.Transactional

@Transactional
class OperationsService {

    def getFirstId(String finishedStatus, String searchField){
        def taskList = getTaskList(finishedStatus, searchField)
        def firstTask = taskList.get(0)

        return firstTask.id
    }

    def getTaskList(String finishedStatus, String searchField){
        def taskList = null
        if(searchField == ""){
            searchField = null
        }

        if((finishedStatus != null)&&(searchField != null)){
            taskList = Task.findAllByFinished(finishedStatus)
            taskList = taskList.findAllByNameOrSubNameOrText("%" + searchField + "%")
        }else if((finishedStatus != null)&&(searchField == null)){
            taskList = Task.findAllByFinished(finishedStatus)
        }else if(searchField != null){
            taskList = Task.findAllByNameLike("%" + searchField + "%")
        }else{
            taskList = Task.list()
        }
        return taskList
    }
}

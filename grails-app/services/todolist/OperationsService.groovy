package todolist

import grails.gorm.transactions.Transactional

@Transactional
class OperationsService {

    def getFirstId(){
        def taskList = Task.list()
        def firstTask = taskList.get(1)

        return firstTask.id
    }
}

package todolist

class Task {

    String  name
    String  subName
    String  text
    Boolean finished
    String  cretaedBy
    Date    createdDate
    String  modifiedBy
    Date    modifiedDate

    static constraints = {
        name            nullable: false
        subName         nullable: true
        text            nullable: false
        finished        nullable: true
        cretaedBy       nullable: true
        createdDate     nullable: true
        modifiedBy      nullable: true
        modifiedDate    nullable: true


    }
}

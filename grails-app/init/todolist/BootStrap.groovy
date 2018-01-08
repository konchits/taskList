package todolist

class BootStrap {

    def init = { servletContext ->
        new todolist.Task(name: "Task 01", text:"The scheduled task  01 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 02", text:"The scheduled task  02 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: true).save()
        new todolist.Task(name: "Task 03", text:"The scheduled task  03 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 04", text:"The scheduled task  04 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 05", text:"The scheduled task  05 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: true).save()
        new todolist.Task(name: "Task 06", text:"The scheduled task  06 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: true).save()
        new todolist.Task(name: "Task 07", text:"The scheduled task  07 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 08", text:"The scheduled task  08 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 09", text:"The scheduled task  09 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 10", text:"The scheduled task  10 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 11", text:"The scheduled task  11 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 12", text:"The scheduled task  12 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: true).save()
        new todolist.Task(name: "Task 13", text:"The scheduled task  13 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 14", text:"The scheduled task  14 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 15", text:"The scheduled task  15 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 16", text:"The scheduled task  16 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 17", text:"The scheduled task  17 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 18", text:"The scheduled task  18 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 19", text:"The scheduled task  19 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
        new todolist.Task(name: "Task 20", text:"The scheduled task  20 that recurs, select the checkboxes for the days of the week the task should run in the Recurring section.", finished: false).save()
    }
    def destroy = {
    }
}

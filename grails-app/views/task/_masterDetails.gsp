<div class="container custom-scroll-main" style="border-left-style: groove; border-right-style: groove;" >
    <div class="row custom-top-header-menu-color">
        <div class="col-sm-4 text-center" >
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <span class="nav-link" >Tasks(${taskCount})</span>
                </li>
            </ul>
         </div>
        <div class="col-sm-8 text-center" style="border-left-style: groove;">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <span class="nav-link" >Details Page </span>
                </li>
            </ul>
        </div>
    </div><!-- header menu -->
    <div class="row" style="height: 84vh" >
        <div class="col-sm-4" style="padding-right: 0; padding-left: 0; height: 100%;" >
            <div class="row">
                <div class="col-sm-12" >

                    <g:form name="searchForm" action="display">
                        <g:hiddenField name="version" value="${selectedTask?.version}" />
                        <g:hiddenField name="id" value="${selectedTask?.id}"/>
                        <div class="input-group" style="padding: 4px;">
                            <g:field name="search" type="text" class="form-control" aria-label="Search Word"
                                     value="${params?.search}" onsubmit="startSearch()" />
                            <button type="submit" class="input-group-text"
                                    style="border-top-left-radius: 0; border-bottom-left-radius: 0;" onclick="startSearch()">
                                    <i class="fa fa-search fa-fw"></i>
                            </button>
                        </div>
                    </g:form>

                </div>
            </div> <!-- search area -->
            <div class="row custom-scroll-row" style="margin-right: 0; height: 100%">
                <div class="col-sm-12 custom-scroll-column" style="padding-right: 0; margin-bottom: 3em;">
                    <div id="tasklist" class="list-group list-group-flush">
                        <g:each in="${taskList}" var="task">
                            <g:link action="display" id="${task.id}" params="${params}" class="list-group-item list-group-item-action">
                                <h5>${task.name}</h5>
                                <p> Task ID: ${task.id}
                                    <g:if test="${task.finished == true}">
                                        <span style="float: right"  class="text-success">completed</span>
                                    </g:if>
                                    <g:else>
                                        <span style="float: right"  class="text-danger">not completed</span>
                                    </g:else>
                                </p>
                            </g:link>
                        </g:each>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-8" style="height: 100%;border-left-style: groove;">
            <div class="row" style="background-color: #fafafa; height: 10em">
                <div style="margin: 2em; width: 100%">
                    <div >
                        <h4 >${selectedTask?.name}</h4>
                    </div>
                    <div >
                        <h1></h1>
                    </div>
                    <div  style="display: flow-root;">
                            <span style="float: left">
                                Task ID: ${selectedTask.id}
                            </span>

                            <g:if test="${selectedTask.finished == true}">
                                <span style="float: right"  class="text-success">completed</span>
                            </g:if>
                            <g:else>
                                <span style="float: right"  class="text-danger text-center">not completed</span>
                            </g:else>
                    </div>
                </div>
            </div> <!-- Header -->
        <div class="row custom-tabs-panel">
            <nav style="margin: 1em; width: 100%">
                <div class="nav nav-tabs " id="nav-tab" role="tablist" >
                    <a class="nav-item nav-link active text-sm-center custom-tabs" id="nav-info-tab" data-toggle="tab" href="#nav-info" role="tab" aria-controls="nav-info" aria-selected="true">
                        <i class="fa fa-info-circle fa-3x" aria-hidden="true"></i><br>Info
                    </a>
                    <a class="nav-item nav-link custom-tabs text-sm-center" id="nav-comment-tab" data-toggle="tab" href="#nav-comment" role="tab" aria-controls="nav-comment" aria-selected="false">
                        <i class="fa fa-comments-o fa-3x" aria-hidden="true"></i><br>Comments
                    </a>
                </div>
            </nav>
        </div> <!-- Tabs -->
        <div class="row" style="margin: 2em">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-info" role="tabpanel" aria-labelledby="nav-info-tab" style="margin: 2em">
                    <!-- switch edit and display mode -->
                    <g:if test="${show}">
                        <table>
                            <tr>
                                <td class="custom-label">Title:</td>
                                <td>${selectedTask.name}</td>
                            </tr>

                            <tr id="subTitleLine" >
                                <td class="custom-label" style="padding-top: 0.5rem">Subtitle:</td>
                                <td  id="subTitleValue" style="padding-top: 0.5rem">${selectedTask.subName}</td>
                            </tr>

                            <tr>
                                <td class="custom-label"  style="padding-top: 0.5rem">Description:</td>
                                <td  style="padding-top: 0.5rem">${selectedTask.text}</td>
                            </tr>
                        </table>
                    </g:if>
                    <g:else >
                        <g:form name="taskData" url="[resource:selectedTask, action:'update']" id="${selectedTask.id}"
                                params="${params}" >
                            <g:hiddenField name="version" value="${selectedTask?.version}" />
                            <g:hiddenField name="id" value="${selectedTask?.id}"/>
                            <fieldset class="form">
                                <div style="margin-bottom: 0.5rem" class="fieldcontain ${hasErrors(bean: selectedTask, field: 'name', 'error')} ">
                                    <label class="custom-label" for="taskName">Title:</label>
                                    <g:textField type="text" name="taskName" value="${selectedTask?.name}" size="40"></g:textField>
                                </div>
                                <div style="margin-bottom: 0.5rem" class="fieldcontain ${hasErrors(bean: selectedTask, field: 'subName', 'error')} ">
                                    <label class="custom-label" for="subName">Subtitle:</label>
                                    <g:textField type="text" name="subName" value="${selectedTask?.subName}" size="40"></g:textField>
                                </div>
                                <div style="margin-bottom: 0.5rem" class="fieldcontain ${hasErrors(bean: selectedTask, field: 'text', 'error')} ">
                                    <label class="custom-label" for="taskText">Description:</label>
                                    <g:textArea name="taskText" value="${selectedTask?.text}" rows="5" cols="41"></g:textArea>
                                </div>
                            </fieldset>
                        </g:form>
                    </g:else>
                    <!-- end switch mode -->
                </div>
                <div class="tab-pane fade" id="nav-comment" role="tabpanel" aria-labelledby="nav-comment-tab" style="margin: 2em">


                </div>
            </div>
        </div> <!-- Tabs content -->
        </div>


    </div> <!-- workspace -->
    <div class="row">
        <div class="col-sm-4 custom-column-wo-padding" >
            <div class="custom-footer "
                 style="border-top-right-radius: 0; border-bottom-right-radius: 0;">
                <div id="filterDropDownMenu" class="btn-group dropup">
                    <button  type="button" class="btn btn-dark btn-outline-light dropdown-toggle"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="pushFilter()">
                        <i id="filterIcon" class="fa fa-filter"></i>
                    </button>
                    <div  class="dropdown-menu" >
                        <g:link class="dropdown-item" action="display" id="${selectedTask.id}" params="[finished:true]">completed</g:link>
                        <g:link class="dropdown-item" action="display" id="${selectedTask.id}" params="[finished:false]">not completed</g:link>
                        <div class="dropdown-divider"></div>
                        <g:link class="dropdown-item" action="display" id="${selectedTask.id}">All statuses</g:link>
                    </div>
                </div>
            </div>

        </div>

        <div class="col-sm-8 custom-column-wo-padding " style="border-left-style: groove;">
            <nav class="navbar navbar-dark bg-dark custom-footer justify-content-end "
                 style="border-top-left-radius: 0; border-bottom-left-radius: 0;">
                <g:if test="${show}">
                    <g:link action="edit" id="${selectedTask.id}" params="${params}">
                        <button type="button" class="btn btn-primary btn-sm custom-btn custom-showBtn" ><i class="fa fa-pencil" aria-hidden="true"></i>
                            Edit</button>
                    </g:link>
                </g:if>
                <g:else>

                        <button type="submit" class="btn btn-success btn-sm custom-btn custom-editBtn" onclick="submitData()">
                            <i class="fa fa-save" aria-hidden="true"></i>
                            Save
                        </button>


                    <g:link action="display" id="${selectedTask.id}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default:'Are you sure?')}')">
                        <button type="button" class="btn btn-secondary btn-sm custom-btn custom-editBtn"><i class="fa fa-times" aria-hidden="true"></i>
                            Cancel</button>
                    </g:link>
                    <g:link action="delete" id="${selectedTask.id}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default:'Are you sure?')}')">
                        <button type="button" class="btn btn-danger btn-sm custom-btn custom-editBtn">
                            <i class="fa fa-trash" aria-hidden="true"></i> Delete</button>
                    </g:link>
                </g:else>
                    <g:link action="finished" id="${selectedTask.id}">
                        <button type="button" class="btn btn-outline-light ">
                            <g:if test="${selectedTask.finished}">
                                <i class="fa fa-undo" aria-hidden="true"></i>
                            </g:if>
                            <g:else>
                                <i class="fa fa-flag-checkered" aria-hidden="true"></i>
                            </g:else>
                        </button>
                    </g:link>
            </nav>
        </div>
    </div> <!-- footer -->

</div>

<script>

    // check if subtitle is empty then hide it
    var subTitleValue = document.getElementById("subTitleValue"),
        subTitleLine = document.getElementById("subTitleLine");



    if(subTitleValue){
        if(subTitleValue.textContent.length > 0){
            subTitleLine.hidden = false;
        }else{
            subTitleLine.hidden = true;
        }
    }

    // events for dropdown menu of filter
    function pushFilter(){

        if(!($("#filterIcon").hasClass("pushedFilter"))) {
            $('#filterIcon').addClass("pushedFilter");

            //event for closing menu
            $('#filterDropDownMenu').on('hide.bs.dropdown', function () {
                $("#filterIcon").removeClass("pushedFilter");
            })
        }
    }
    
    function startSearch() {
        var i = 0;

        if($("#search")['0'].value.length === 0){
            $("#search").attr('disabled', true);
        }

    }

    function submitData(){
        var i = 0;
    }





</script>


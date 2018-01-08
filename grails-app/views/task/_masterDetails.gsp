<div class="container custom-scroll-main" style="border-left-style: groove; border-right-style: groove;" >
    <div class="row custom-top-header-menu-color">
        <div class="col-sm-4 custom-column-wo-padding" >
            <nav class="navbar  custom-nav-bar text-center">
                   Tasks(${taskCount})
            </nav>
        </div>
        <div class="col-sm-8 text-center" style="border-left-style: groove;">
            <nav class="navbar  custom-nav-bar text-center">
                Details Page
            </nav>
        </div>
    </div><!-- header menu -->
    <div class="row" style="height: 90vh" >
        <div class="col-sm-4" style="padding-right: 0; padding-left: 0; height: 100%;" >
            <div class="row">
                <div class="col-sm-12" >
                    <div class="input-group">
                        <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
                        <div class="input-group-append">
                            <span class="input-group-text" style="font-size: 1.5rem;">
                                <i class="fa fa-search fa-fw"></i>
                            </span>
                        </div>
                    </div>

                </div>
            </div>
            <div class="row custom-scroll-row" style="margin-right: 0; height: 100%">
                <div class="col-sm-12 custom-scroll-column" style="padding-right: 0; margin-bottom: 2.5em;">
                    <div id="tasklist" class="list-group list-group-flush">
                        <g:each in="${taskList}" var="task">
                            <a href="#" class="list-group-item list-group-item-action">
                                <h5>${task.name}</h5>
                                <p> Task ID: ${task.id}
                                    <g:if test="${task.finished == true}">
                                        <span style="float: right"  class="text-success">completed</span>
                                    </g:if>
                                    <g:else>
                                        <span style="float: right"  class="text-danger">not completed</span>
                                    </g:else>
                                </p>
                            </a>
                        </g:each>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-8" style="height: 100%;border-left-style: groove;">
            <div class="row" style="background-color: #fafafa; height: 15%">
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
        <div class="row" style="margin: 1em; ">
            <nav style="width: 100%">
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
                <div class="tab-pane fade show active" id="nav-info" role="tabpanel" aria-labelledby="nav-home-tab">

                </div>
                <div class="tab-pane fade" id="nav-comment" role="tabpanel" aria-labelledby="nav-profile-tab">

                </div>
            </div>
        </div> <!-- Tabs content -->
        </div>


    </div> <!-- workspace -->
    <div class="row">
        <div class="col-sm-4 custom-column-wo-padding" >
            <div class="navbar navbar-dark bg-dark custom-footer"
                 style="border-top-right-radius: 0; border-bottom-right-radius: 0;">
                Footer of Master Page
            </div>
        </div>

        <div class="col-sm-8 custom-column-wo-padding custom-footer" style="border-left-style: groove;">
            <div class="navbar navbar-dark bg-dark "
                 style="border-top-left-radius: 0; border-bottom-left-radius: 0;">
                Footer of Details Page
            </div>
        </div>
    </div> <!-- footer -->

</div>


    <!--<div class="row">
        <div class="col-sm-4 custom-column-wo-padding" >
            <nav class="navbar navbar-light fixed-top custom-nav-bar">
                <p class="text-center h4">Tasks(${taskCount})</p>
            </nav>
        </div>

        <div class="col-sm-8 custom-column-wo-padding">
            <nav class="navbar navbar-light fixed-top custom-nav-bar" }">
                <p class="text-center h4">Details Page</p>
            </nav>
        </div>

    </div>

    <div class="row" style="height: 90vh" >
        <div class="col-sm-4" style="border-left-style: groove; padding-right: 0; padding-left: 0; height: 100%;" >
            <div class="row">
                <div class="col-sm-12" >
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
                        <span class="input-group-addon" id="basic-addon1">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </span>
                        <span class="input-group-addon" id="basic-addon1">
                            <i class="fa fa-refresh" aria-hidden="true"></i>
                        </span>
                    </div>
                </div>
            </div>
            <div class="row custom-scroll-row" style="margin-right: 0; height: 100%">
                <div class="col-sm-12 custom-scroll-column" style="padding-right: 0; margin-bottom: 2.5em;">
                    <div id="tasklist" class="list-group list-group-flush">
                        <g:each in="${taskList}" var="task">
                            <a href="#" class="list-group-item list-group-item-action">
                                <h4>${task.name}</h4>
                                <p> Task ID: ${task.id}
                                    <g:if test="${task.finished == true}">
                                        <span style="float: right"  class="text-success">completed</span>
                                    </g:if>
                                    <g:else>
                                        <span style="float: right"  class="text-danger">not completed</span>
                                    </g:else>
                                </p>
                            </a>
                        </g:each>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-8" style="border-left-style: groove; border-right-style: groove;height: 100%;">
            <div class="row" style="background-color: #fafafa; height: 15%">
                <div class="row">
                    <h1></h1>
                </div>
                <div class="row "style="margin-left: 3em;">
                    <h3 >${selectedTask?.name}</h3>
                </div>
                <div class="row">
                    <h1></h1>
                </div>
                <div class="row"style="margin-left: 3em; margin-right: 3em;">
                    <p> Task ID: ${selectedTask.id}
                        <g:if test="${selectedTask.finished == true}">
                            <span style="float: right"  class="text-success">completed</span>
                        </g:if>
                        <g:else>
                            <span style="float: right"  class="text-danger">not completed</span>
                        </g:else>
                    </p>
                </div>
            </div> <!-- Header -->
            <!--<div class="row" >
            <ul class="nav nav-tabs nav" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">Home Details</div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">Profile Details</div>
                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">Contact Details</div>
            </div>

        </div> <!-- Tabs -->
        <!--</div>
    </div>


    <div class="row ">
        <div class="col-sm-4 custom-column-wo-padding" >
            <div class="navbar navbar-inverse fixed-bottom custom-footer "
                 style="border-top-right-radius: 0; border-bottom-right-radius: 0;">
                Footer of Master Page
            </div>
        </div>

        <div class="col-sm-8 custom-column-wo-padding">
            <div class="navbar navbar-inverse fixed-bottom custom-footer"
                 style="border-top-left-radius: 0; border-bottom-left-radius: 0;">
                Footer of Details Page
            </div>
        </div>
    </div>-->


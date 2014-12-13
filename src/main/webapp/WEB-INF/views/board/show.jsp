	

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<jsp:include page="../fragments/headTag.jsp"/>
<body>
    <div class="wrap">
        <jsp:include page="../fragments/header.jsp"/>

        <section>
            <div class="container-fluid">
                <!-- <h1>${board.name} ${id}</h1> --> 

                <h1>Projet IHM</h1>


                <button class="btn btn-xs btn-success" data-toggle="modal" data-target="#accessBoardModal">
                    <span class="glyphicon glyphicon-lock"></span> Public
                </button>

                <button class="btn btn-xs btn-primary" data-toggle="modal" data-target="#filterBoardModal">
                    <span class="glyphicon glyphicon-filter"></span> Show filter
                </button>

                <div class="modal fade" id="accessBoardModal" tabindex="-1" role="dialog" aria-labelledby="accessModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x
                                </button>
                                <h4 class="modal-title" id="accessModalLabel">Access to Projet
                                    IHM</h4>
                                </div>
                                <div class="modal-body">
                                    <form id="formLog" method="POST" action="application.html">

                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <p>
                                        <a class="form-control btn btn-primary" href="javascript: submitform('formLog')">Save</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="filterBoardModal" tabindex="-1"
                    role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"
                                aria-hidden="true">x</button>
                                <h4 class="modal-title" id="filterModalLabel">Filter to
                                    TaskList</h4>
                                </div>
                                <!-- /.modal-header -->
                                <div class="modal-body">
                                    <form id="formFilter" class="form-horizontal" method="POST"
                                    action="application.html">
                                    <div class="">
                                        <table class="table table-filter-taskList">
                                            <thead>
                                                <tr>
                                                    <th>Date</th>
                                                    <th>Groups</th>
                                                    <th>States</th>
                                                    <th>Tasklists</th>
                                                    <th>Me</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>


                                        </table>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <p>
                                    <a class="form-control btn btn-primary">Filter</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="tasklists">
            <c:forEach items="${ board.taskLists }" var="tasklist">
            <div class="tasklist portlet1">
                <div class="osef portlet-header1">${tasklist.name}</div>
                <c:forEach items="${ tasklist.tasks }" var="task">

                <div class="portlet portlet-content1">
                    <div class="portlet-header">${task.getName()}</div>
                    <div class="portlet-content">${task.getDescription()}</div>
                    <div class="portlet-content"> <a href="#" class="btn btn-info" data-toggle="modal" data-target="#toto" onclick="resetform('formBoard')"><span class="glyphicon glyphicon-search"></span> Show task</a>
                    </div>
                </div>



            </c:forEach>
            <div class = "addNewTask">
                <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#${tasklist.name}" onclick="resetform('formBoard')" ><span class="glyphicon glyphicon-plus"></span> Add new task</a>
            </div>
        </div>



    </c:forEach>
</section>


<jsp:include page="../fragments/footer.jsp"/>


<c:forEach items="${ board.taskLists }" var="tasklist">

<c:forEach items="${ tasklist.tasks }" var="task">
<div class="modal fade" id="toto" tabindex="-1" role="dialog" aria-labelledby="taskModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="taskModalLabel">${tasklist.name} : ${task.getName()}</h4>
            </div> <!-- /.modal-header -->
            <div class="modal-body">
                <form id="formBoard" class="form-horizontal" method="POST" action="boardTC.html">
                    <div class="form-group">
                        <label for="stateTask" class="col-sm-4 control-label">State :</label> 
                        <div id="contenerStateTask" class = "col-sm-4">
                            <p class="form-control" id="stateTask" >${task.getState()}</p>
                        </div>
                        <div class = "col-sm-4">
                            <a href="#" class="btn btn-sm btn-danger">cancel</a>
                            <a href="#" class="btn btn-sm btn-success">terminate</a>
                        </div>
                    </div>  
                    <div class="form-group">
                        <label for="groupTask" class="col-sm-4 control-label">Group :</label> 
                        <div id="contenerGroupTask" class = "col-sm-8">
                            <p class="form-control" id="groupTask" >${task.getGroup()}</p>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="descriptionTask" class="col-sm-4 control-label">Description :</label> 
                        <div id="contenerDescriptionTask" class = "col-sm-8">
                            <textarea class="form-control" id="descriptionTask" readonly="readonly">${task.getDescription()}</textarea>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="creationDateTask" class="col-sm-4 control-label">Creation Date :</label> 
                        <div id="contenerCreationDateTask" class = "col-sm-8">
                            <p class="form-control" id="creationDateTask" >${task.getCreationDate()}</p>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="dueDateTask" class="col-sm-4 control-label">Due Date :</label> 
                        <div id="contenerDueDateTask" class = "col-sm-8">
                            <p class="form-control" id="dueDateTask" >${task.getDueDate()}</p>
                        </div>
                    </div> 
                    <div class="form-group">
                        <div class="panel-group contenerTask" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="otherThesoOne">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#otherBoard" aria-expanded="false" href="#collapseOtherThesoOne" aria-controls="collapseOtherThesoOne">
                                            Active member<span class="glyphicon glyphicon-chevron-down"></span>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOtherThesoOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="otherThesoThree">
                                    <div class="panel-body">

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="otherThesoTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#otherBoard" aria-expanded="false" href="#collapseOtherThesoTwo" aria-controls="collapseOtherThesoTwo">
                                            logs <span class="glyphicon glyphicon-chevron-down"></span>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOtherThesoTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="otherThesoTwo">
                                    <div class="panel-body">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</c:forEach>

<div class="modal fade" id="${tasklist.name}" tabindex="-1" role="dialog" aria-labelledby="tasklistModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="tasklistModalLabel">Creation of a new task</h4>
            </div> <!-- /.modal-header -->
            <div class="modal-body">
                <form id="formBoard" class="form-horizontal" method="POST" action="boardTC.html">
                    <div class="form-group">
                        <label for="titleUser" class="col-sm-3 control-label">Tasklist :</label> 
                        <div id="contenerInputTitleUser" class = "col-sm-8">
                            <input class="form-control" id="titleUser" type="text" name="titleBoard" placeholder="${tasklist.name}" disabled>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="titleUser" class="col-sm-3 control-label">Title :</label> 
                        <div id="contenerInputTitleUser" class = "col-sm-8">
                            <input class="form-control" id="titleUser" type="text" name="titleBoard" required>
                        </div>
                    </div>  
                    <div class="form-group">
                        <label for="descriptifBoardUser" class="col-sm-3 control-label">Description</label>
                        <div id="contenerInputdescriptifBoardUser" class = "col-sm-8">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="titleUser" class="col-sm-3 control-label">Group :</label> 
                        <div id="contenerInputTitleUser" class = "col-sm-8">
                            <input class="form-control" id="titleUser" type="text" name="titleBoard" required>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="titleUser" class="col-sm-3 control-label">Due date :</label> 
                        <div id="contenerInputTitleUser" class = "col-sm-8">
                            <input class="form-control" id="titleUser" type="text" name="titleBoard" required>
                        </div>
                    </div> 
                </form>
            </div>
            <div class="modal-footer">
                <p>
                    <a class="form-control btn btn-success" href="javascript: submitform('formBoard')" >Create</a>
                </p>
            </div> 
        </div>
    </div>
</div>

</c:forEach>

<span id="taskLength" style="display:none"> ${board.taskLists.size()} </span>
</div>


</body>
</html>


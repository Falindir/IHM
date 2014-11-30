<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<jsp:include page="../fragments/headTag.jsp"/>
<body>
	<div class="wrap"> 
		<header>	
			<nav class="navbar navbar-inverse" role="navigation">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a target="_blank" href="#" class="navbar-brand">TaskCreator</a>
					</div>

					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-left">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle glyphicon glyphicon-list" data-toggle="dropdown"> <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<div class="navbar-login navbar-login-session">
										<div class="row">
											<div class="col-lg-12">
												<p>
													<a href="#" class="btn btn-primary btn-block">New Board</a>
													<a href="boardTC.html" class="btn btn-primary btn-block">My Boards</a>
												</p>
											</div>
										</div>
									</div>
								</ul>
							</li>

						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<span class="glyphicon glyphicon-user"></span> 
									<strong>Lopez Jimmy</strong>
									<span class="glyphicon glyphicon-chevron-down"></span>
								</a>
								<ul class="dropdown-menu">
									<li>
										<div class="navbar-login">
											<div class="row">
												<div class="col-lg-12">
													<p>
														<a href="profilTC.html" class="btn btn-primary btn-block">View profil</a>
													</p>
												</div>
											</div>
										</div>
									</li>
									<li class="divider"></li>
									<li>
										<div class="navbar-login navbar-login-action">
											<div class="row">
												<div class="col-lg-12">
													<p>
														<a href="#" class="btn btn-success btn-block">My groups</a>
														<a href="#" class="btn btn-success btn-block">My contacts</a>
														<a href="#" class="btn btn-success btn-block">Get bilan</a>
													</p>
												</div>
											</div>
										</div>
										<li class="divider"></li>
										<li>
											<div class="navbar-login navbar-login-session">
												<div class="row">
													<div class="col-lg-12">
														<p>
															<a href="#" class="btn btn-danger btn-block">Log out</a>
														</p>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</nav>
			</header> 

			<section>
				<div class="container-fluid">
					<h1>Board</h1>
				</div>
			</section>

			<section>
				<div class="container-fluid">
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
						<div class="panel panel-primary">
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
										Board : Projet IHM <span class="glyphicon glyphicon-chevron-down"></span>
									</a>

								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body">
									<p> Descriptif : not documented </p>
									<a href="file:///home/jimmy/Bureau/TaskCreator/taskListTC.html" class="btn btn-sm btn-success">Show board</a>
								</div>
							</div>
						</div>
						<div class="panel panel-primary">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										Board : Projet BDD <span class="glyphicon glyphicon-chevron-down"></span>
									</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								<div class="panel-body">
									<p> Descriptif : not documented </p>
									<a href="#" class="btn btn-sm btn-success">Show board</a>
								</div>
							</div>
						</div>
						<div class="panel panel-primary">
							<div class="panel-heading" role="tab" id="headingThree">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
										Board : Projet EFG <span class="glyphicon glyphicon-chevron-down"></span>
									</a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
								<div class="panel-body">
									<p> Descriptif : not documented </p>
									<a href="#" class="btn btn-sm btn-success">Show board</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>


			<section>
				<div class = "container-fluid">
					<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#newBoardModal" onclick="resetform('formBoard')"> Create new board </button>

					<div class="modal fade" id="newBoardModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title" id="myModalLabel">Creation of a new board</h4>
								</div> <!-- /.modal-header -->
								<div class="modal-body">
									<form id="formBoard" class="form-horizontal" method="POST" action="boardTC.html">
										<div class="form-group">
											<label for="titleUser" class="col-sm-4 control-label">Title :</label> 
											<div id="contenerInputTitleUser" class = "col-sm-8">
												<input class="form-control" id="titleUser" type="text" name="titleBoard" required>
											</div>
										</div>  
										<div class="form-group">
											<label for="accessUser" class="col-sm-4 control-label">Access :</label> 
											<div id="contenerSelectAccessUser" class = "col-sm-8">
												<select class="form-control" id="accessUser" type="text" name="titleBoard" required>
													<option value="public" selected>Public</option>
													<option value="private" >Private</option>
												</select>
											</div>
										</div> 
										<div class="form-group">
											<label for="descriptifBoardUser" class="col-sm-4 control-label">Descriptif (optional)</label>
											<div id="contenerInputdescriptifBoardUser" class = "col-sm-8">
												<textarea class="form-control" rows="3"></textarea>
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
				</div>
			</section>

			<footer>
				<div class="container-fluid">
					<p>@copyright 2014 : Beugnon Sébastien and Lopez Jimmy and Turpault Arlémi</p>
				</div>
			</footer> 
		</div>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <c:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJS"/>
        <script type="text/javascript" src="${bootstrapJS}"></script>
		<script type="text/javascript">
	function submitform(name)
	{
		document.forms[name].submit();
	}

	function resetform(name)
	{
		document.getElementById(name).reset();
	}

	</script>
		
	</body>
	</html>

	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<jsp:include page="../fragments/headTag.jsp" />
<body>
	<div class="wrap">
		<header>
			<nav class="navbar navbar-inverse" role="navigation">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a target="_blank" href="#" class="navbar-brand"></a>
					</div>

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-left">
							<li class="dropdown"><a href="#"
								class="dropdown-toggle glyphicon glyphicon-list"
								data-toggle="dropdown"> <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<div class="navbar-login navbar-login-session">
										<div class="row">
											<div class="col-lg-12">
												<p>
													<a href="#" class="btn btn-primary btn-block">New Board</a>
													<a href="boardTC.html" class="btn btn-primary btn-block">My
														Boards</a>
												</p>
											</div>
										</div>
									</div>
								</ul></li>

						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <span
									class="glyphicon glyphicon-user"></span> <strong>Lopez
										Jimmy</strong> <span class="glyphicon glyphicon-chevron-down"></span>
							</a>
								<ul class="dropdown-menu">
									<li>
										<div class="navbar-login">
											<div class="row">
												<div class="col-lg-12">
													<p>
														<a href="profilTC.html" class="btn btn-primary btn-block">View
															profil</a>
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
														<a href="#" class="btn btn-success btn-block">My
															groups</a> <a href="#" class="btn btn-success btn-block">My
															contacts</a> <a href="#" class="btn btn-success btn-block">Get
															bilan</a>
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
									</li></li>
						</ul>
						</li>
						</ul>
					</div>
				</div>
			</nav>
		</header>

		<section>
			<div class="container-fluid">
				<h1>${board.name} ${id}</h1>

				<button class="btn btn-xs btn-success" data-toggle="modal"
					data-target="#accessBoardModal">
					<span class="glyphicon glyphicon-lock"></span> Public
				</button>

				<button class="btn btn-xs btn-primary" data-toggle="modal"
					data-target="#filterBoardModal">
					<span class="glyphicon glyphicon-filter"></span> Show filter
				</button>

				<div class="modal fade" id="accessBoardModal" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-sm">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">Ã—</button>
								<h4 class="modal-title" id="myModalLabel">Access to Projet
									IHM</h4>
							</div>
							<div class="modal-body">
								<form id="formLog" method="POST" action="application.html">

								</form>
							</div>
							<div class="modal-footer">
								<p>
									<a class="form-control btn btn-primary"
										href="javascript: submitform('formLog')">Save</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="filterBoardModal" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">Ã—</button>
								<h4 class="modal-title" id="myModalLabel">Filter to
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
												<!--
                              <tr>
                                <td>Before</td>
                                <td>All</td>
                              </tr>
                              <tr>
                                <td>All</td>
                                <td>My Groups</td>
                                <td>Group : 1</td>
                                <td>Group : 2</td>
                                <td>Group : 3</td>
                                <td>Group : 4</td>
                              </tr>
                              <tr>
                                <td>3</td>
                                <td>Larry</td>
                                <td>the Bird</td>
                                <td>@twitter</td>
                              </tr>
                              <tr>
                                <td>3</td>
                                <td>Larry</td>
                                <td>the Bird</td>
                                <td>@twitter</td>
                              </tr>
                              <tr>
                                <td>3</td>
                                <td>Larry</td>
                                <td>the Bird</td>
                                <td>@twitter</td>
                            </tr> -->
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

		<footer>
			<div class="container-fluid">
				<p>@copyright 2014 : Beugnon Sébastien and Lopez Jimmy and
					Turpault Arlémi</p>
			</div>
		</footer>
		<script
			src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<c:url value="/resources/bootstrap/js/bootstrap.min.js"
			var="bootstrapJS" />
		<script type="text/javascript" src="${bootstrapJS}"></script>

		<script type="text/javascript">
			function submitform(name) {
				document.forms[name].submit();
			}

			function resetform(name) {
				document.getElementById(name).reset();
			}
		</script>

	</div>
</body>
</html>

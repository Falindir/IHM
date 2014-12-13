<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<jsp:include page="fragments/headTag.jsp"/>
<body>
	<div class="wrap">

		<jsp:include page="fragments/headerHome.jsp"/>

		<section>
			<div class="underConstructionWebSite">
				<div class="alert alert-warning">
					<a href="#" class="close" data-dismiss="alert">&times;</a>
					<strong>Warning : </strong> This website is under construction.
				</div>
			</div>
		</section>

		<section>
			<div class="container-fluid">
				<p>TaskCreator is the free, flexible, and visual way to organize anything with anyone </p>
			</div>
		</section>

		<section>
			<div class="container-fluid">
				<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#signUpTCModal" onclick="resetform('formRegister')"> Sign Up - It's Free </button>
				<p id = "orIndexTC"> or </p>
				<button class="btn btn-success btn-lg" data-toggle="modal" data-target="#logInTCModal" onclick="resetform('formLog')"> Log in </button>

				<div class="modal fade" id="logInTCModal" tabindex="-1" role="dialog" aria-labelledby="connectionModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-sm">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								<h4 class="modal-title" id="connectionModalLabel">Connection to TaskCreator</h4>
							</div>
							<div class="modal-body">
								<form id="formLog" method="POST" action="connection">
									<div class="form-group">
										<div class="input-group">
											<label for="uLogin" class="input-group-addon primary glyphicon glyphicon-user"></label>
											<input type="text" class="form-control" id="uLogin" name="login" placeholder="Login">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<label for="uPassword" class="input-group-addon primary glyphicon glyphicon-lock"></label>
											<input type="password" class="form-control" id="uPassword" name="password" placeholder="Password">
										</div>
									</div>
									<div class="checkbox">
										<label>
											<input type="checkbox"> Remember me
										</label>
									</div>
									<div id="forgotPassword"><a href="#">Forgot password ?</a></div>
								</form>
							</div>
							<div class="modal-footer">
								<p>
									<a  class="form-control btn btn-primary" href="javascript: submitform('formLog')">Log in</a>
								</p>
							</div>
						</div>
					</div>
				</div>

				<div class="modal fade" id="signUpTCModal" tabindex="-1" role="dialog" aria-labelledby="inscriptionModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								<h4 class="modal-title" id="inscriptionModalLabel">Registration to TaskCreator</h4>
							</div> <!-- /.modal-header -->
							<div class="modal-body">
								<form id="formRegister" class="form-horizontal" method="POST" action="inscription">
									<div class="form-group">
										<label for="prenomUser" class="col-sm-4 control-label">First Name :</label>
										<div id="contenerInputPrenomUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="prenomUser" type="text" name="firstName" required>
											<span id="SpanPrenomUser" class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>

									<div class="form-group">
										<label for="nomUser" class="col-sm-4 control-label">Last Name :</label>
										<div id="contenerInputNomUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="nomUser" type="text" name="lastName" required>
											<span id="SpanNomUser" class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>

									<div class="form-group">
										<label for="emailUser" class="col-sm-4 control-label">Email :</label>
										<div id="contenerInputEmailUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="emailUser" type="email" name="email" required>
											<span id="SpanEmailUser" class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>

									<div class="form-group">
										<label for="confirmEmailUser" class="col-sm-4 control-label">Re-enter email :</label>
										<div id="contenerInputConfirmEmailUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="confirmEmailUser" type="email" name="email2" required>
											<span id="SpanConfirmEmailUser" class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>

									<div class="form-group">
										<label for="passwordUser" class="col-sm-4 control-label">Password :</label>
										<div id="contenerInputPasswordUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="passwordUser" type="password" name="password" required>
											<span id="SpanPasswordUser" class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>

									<div class="form-group">
										<label for="confirmPasswordUser" class="col-sm-4 control-label">Re-enter password:</label>
										<div id="contenerInputConfirmPasswordUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="confirmPasswordUser" type="password" name="password2" required>
											<span id="SpanConfirmPasswordUser" class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<p>
									<a id = "sendFormSignUp" class="form-control btn btn-primary" href="javascript: submitform('formRegister')" disabled >Sign up</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<jsp:include page="fragments/footer.jsp"/>
		
		<c:url value="/resources/js/inscription.js" var="inscriptionJS"/>
		<script type="text/javascript" src="${inscriptionJS}"></script>

	</div>

</body>
</html>

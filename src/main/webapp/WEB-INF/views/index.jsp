<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<jsp:include page="fragments/headTag.jsp"/>
<body>
<div class="wrap">
		<header>
			<div class="container-fluid">
				<h1>TaskCreator</h1>
			</div>
		</header>

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

				<div class="modal fade" id="logInTCModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-sm">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								<h4 class="modal-title" id="myModalLabel">Connection to TaskCreator</h4>
							</div>
							<div class="modal-body">
								<form id="formLog" method="POST" action="boardTC.html">
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
									<a class="form-control btn btn-primary" href="javascript: submitform('formLog')">Log in</a>
								</p>
							</div>
						</div>
					</div>
				</div>

				<div class="modal fade" id="signUpTCModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								<h4 class="modal-title" id="myModalLabel">Registration to TaskCreator</h4>
							</div> <!-- /.modal-header -->
							<div class="modal-body">
								<form id="formRegister" class="form-horizontal" method="POST" action="boardTC.html">
									<div class="form-group">
										<label for="prenomUser" class="col-sm-4 control-label">First Name :</label>
										<div id="contenerInputPrenomUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="prenomUser" type="text" name="firstName" required>
											<span id="SpanPrenomUser"class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>

									<div class="form-group">
										<label for="nomUser" class="col-sm-4 control-label">Last Name :</label>
										<div id="contenerInputNomUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="nomUser" type="text" name="lastName" required>
											<span id="SpanNomUser"class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>

									<div class="form-group">
										<label for="emailUser" class="col-sm-4 control-label">Email :</label>
										<div id="contenerInputEmailUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="emailUser" type="email" name="email" required>
											<span id="SpanEmailUser"class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>

									<div class="form-group">
										<label for="confirmEmailUser" class="col-sm-4 control-label">Re-enter email :</label>
										<div id="contenerInputConfirmEmailUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="confirmEmailUser" type="email" name="email2" required>
											<span id="SpanConfirmEmailUser"class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>

									<div class="form-group">
										<label for="passwordUser" class="col-sm-4 control-label">Password :</label>
										<div id="contenerInputPasswordUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="passwordUser" type="password" name="password" required>
											<span id="SpanPasswordUser"class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>

									<div class="form-group">
										<label for="confirmPasswordUser" class="col-sm-4 control-label">Re-enter password:</label>
										<div id="contenerInputConfirmPasswordUser" class = "col-sm-8 has-error has-feedback">
											<input class="form-control" id="confirmPasswordUser" type="password" name="password2" required>
											<span id="SpanConfirmPasswordUser"class="glyphicon glyphicon-remove form-control-feedback"></span>
										</div>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<p>
									<a class="form-control btn btn-primary" href="javascript: submitform('formRegister')" >Sign up</a>
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
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <c:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJS"/>
        <script type="text/javascript" src="${bootstrapJS}"></script>
	</div>

<script type="text/javascript">
function submitform(name)
{
  document.forms[name].submit();
}

function resetform(name)
{
  document.getElementById(name).reset();
}

$("#nomUser").keyup(function() {

  var clas = $("#contenerInputNomUser").prop('class');
  var val = $("#nomUser").val();

  if(val.length > 0)
  {
    if(clas == "col-sm-8 has-error has-feedback")
    {
      $("#contenerInputNomUser").prop('class','col-sm-8 has-success has-feedback');
      $("#SpanNomUser").prop('class','glyphicon glyphicon-ok form-control-feedback');
    }
  }
  else
  {
    if(clas == "col-sm-8 has-success has-feedback")
    {
      $("#contenerInputNomUser").prop('class','col-sm-8 has-error has-feedback');
      $("#SpanNomUser").prop('class','glyphicon glyphicon-remove form-control-feedback');
    }
  }

});

$("#prenomUser").keyup(function() {

  var clas = $("#contenerInputPrenomUser").prop('class');
  var val = $("#prenomUser").val();

  if(val.length > 0)
  {
    if(clas == "col-sm-8 has-error has-feedback")
    {
      $("#contenerInputPrenomUser").prop('class','col-sm-8 has-success has-feedback');
      $("#SpanPrenomUser").prop('class','glyphicon glyphicon-ok form-control-feedback');
    }
  }
  else
  {
    if(clas == "col-sm-8 has-success has-feedback")
    {
      $("#contenerInputPrenomUser").prop('class','col-sm-8 has-error has-feedback');
      $("#SpanPrenomUser").prop('class','glyphicon glyphicon-remove form-control-feedback');
    }
  }

});

$("#confirmEmailUser").keyup(function() {
  var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,20})?$/;
  var clas = $("#contenerInputConfirmEmailUser").prop('class');
  var val1 = $("#emailUser").val();
  var val2 = $("#confirmEmailUser").val();

  if((val2.length > 0) && (val1 == val2) && (emailReg.test(val2)))
  {
    if(clas == "col-sm-8 has-error has-feedback")
    {
      $("#contenerInputConfirmEmailUser").prop('class','col-sm-8 has-success has-feedback');
      $("#SpanConfirmEmailUser").prop('class','glyphicon glyphicon-ok form-control-feedback');
    }
  }
  else
  {
    if(clas == "col-sm-8 has-success has-feedback")
    {
      $("#contenerInputConfirmEmailUser").prop('class','col-sm-8 has-error has-feedback');
      $("#SpanConfirmEmailUser").prop('class','glyphicon glyphicon-remove form-control-feedback');
    }
  }
});

$("#emailUser").keyup(function() {
  var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,20})?$/;
  var clas = $("#contenerInputEmailUser").prop('class');
  var clas2 = $("#contenerInputConfirmEmailUser").prop('class');
  var val = $("#emailUser").val();
  var val2 = $("#confirmEmailUser").val();

  if((val.length > 0) && (emailReg.test(val)))
  {
    if(clas == "col-sm-8 has-error has-feedback")
    {
      $("#contenerInputEmailUser").prop('class','col-sm-8 has-success has-feedback');
      $("#SpanEmailUser").prop('class','glyphicon glyphicon-ok form-control-feedback');
    }
    else
    {
      if (val == val2)
      {
        if(clas2 == "col-sm-8 has-error has-feedback")
        {
          $("#contenerInputConfirmEmailUser").prop('class','col-sm-8 has-success has-feedback');
          $("#SpanConfirmEmailUser").prop('class','glyphicon glyphicon-ok form-control-feedback');
        }
      }
      else
      {
        $("#contenerInputConfirmEmailUser").prop('class','col-sm-8 has-error has-feedback');
        $("#SpanConfirmEmailUser").prop('class','glyphicon glyphicon-remove form-control-feedback');
      }
    }
  }
  else
  {
    if(clas == "col-sm-8 has-success has-feedback")
    {
      $("#contenerInputEmailUser").prop('class','col-sm-8 has-error has-feedback');
      $("#SpanEmailUser").prop('class','glyphicon glyphicon-remove form-control-feedback');
      $("#contenerInputConfirmEmailUser").prop('class','col-sm-8 has-error has-feedback');
      $("#SpanConfirmEmailUser").prop('class','glyphicon glyphicon-remove form-control-feedback');
    }
  }
});

$("#passwordUser").keyup(function() {
  var clas = $("#contenerInputPasswordUser").prop('class');
  var clas2 = $("#contenerInputConfirmPasswordUser").prop('class');
  var val = $("#passwordUser").val();
  var val2 = $("#confirmPasswordUser").val();

  if(val.length > 0)
  {
    if(clas == "col-sm-8 has-error has-feedback")
    {
      $("#contenerInputPasswordUser").prop('class','col-sm-8 has-success has-feedback');
      $("#SpanPasswordUser").prop('class','glyphicon glyphicon-ok form-control-feedback');
    }
    else
    {
      if(val == val2)
      {
        if(clas2 == "col-sm-8 has-error has-feedback")
        {
          $("#contenerInputConfirmPasswordUser").prop('class','col-sm-8 has-success has-feedback');
          $("#SpanConfirmPasswordUser").prop('class','glyphicon glyphicon-ok form-control-feedback');
        }
      }
      else
      {
        $("#contenerInputConfirmPasswordUser").prop('class','col-sm-8 has-error has-feedback');
        $("#SpanConfirmPasswordUser").prop('class','glyphicon glyphicon-remove form-control-feedback');
      }
    }
  }
  else
  {
    if(clas == "col-sm-8 has-success has-feedback")
    {
      $("#contenerInputPasswordUser").prop('class','col-sm-8 has-error has-feedback');
      $("#SpanPasswordUser").prop('class','glyphicon glyphicon-remove form-control-feedback');
      $("#contenerInputConfirmPasswordUser").prop('class','col-sm-8 has-error has-feedback');
      $("#SpanConfirmPasswordUser").prop('class','glyphicon glyphicon-remove form-control-feedback');
    }
  }
});

$("#confirmPasswordUser").keyup(function() {
  var clas = $("#contenerInputConfirmPasswordUser").prop('class');
  var val1 = $("#passwordUser").val();
  var val2 = $("#confirmPasswordUser").val();

  if((val2.length > 0) && (val1 == val2))
  {

    if(clas == "col-sm-8 has-error has-feedback")
    {
      $("#contenerInputConfirmPasswordUser").prop('class','col-sm-8 has-success has-feedback');
      $("#SpanConfirmPasswordUser").prop('class','glyphicon glyphicon-ok form-control-feedback');
    }
  }
  else
  {
    if(clas == "col-sm-8 has-success has-feedback")
    {
      $("#contenerInputConfirmPasswordUser").prop('class','col-sm-8 has-error has-feedback');
      $("#SpanConfirmPasswordUser").prop('class','glyphicon glyphicon-remove form-control-feedback');
    }
  }
});
</script>
</body>
</html>

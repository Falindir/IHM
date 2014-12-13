/**
 * Created by Lopez Jimmy on 30/11/2014.
 * Fonction pour gérer un formulaire d'inscription
 */

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

  var c1 = $("#contenerInputNomUser").prop('class');
  var c2 = $("#contenerInputPrenomUser").prop('class');
  var c3 = $("#contenerInputConfirmEmailUser").prop('class');
  var c4 = $("#contenerInputEmailUser").prop('class');
  var c5 = $("#contenerInputPasswordUser").prop('class');
  var c6 = $("#contenerInputConfirmPasswordUser").prop('class');

  if((c1 == c2) &&  (c2 == c3) && (c3 == c4) && (c4 == c5) && (c6 == c6) &&  (c6 == "col-sm-8 has-success has-feedback")) {

    $('#sendFormSignUp').attr("disabled", false);
  }
  else {
    $('#sendFormSignUp').attr("disabled", true);
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

  var c1 = $("#contenerInputNomUser").prop('class');
  var c2 = $("#contenerInputPrenomUser").prop('class');
  var c3 = $("#contenerInputConfirmEmailUser").prop('class');
  var c4 = $("#contenerInputEmailUser").prop('class');
  var c5 = $("#contenerInputPasswordUser").prop('class');
  var c6 = $("#contenerInputConfirmPasswordUser").prop('class');

  if((c1 == c2) &&  (c2 == c3) && (c3 == c4) && (c4 == c5) && (c6 == c6) &&  (c6 == "col-sm-8 has-success has-feedback")) {

    $('#sendFormSignUp').attr("disabled", false);
  }
  else {
    $('#sendFormSignUp').attr("disabled", true);
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

  var c1 = $("#contenerInputNomUser").prop('class');
  var c2 = $("#contenerInputPrenomUser").prop('class');
  var c3 = $("#contenerInputConfirmEmailUser").prop('class');
  var c4 = $("#contenerInputEmailUser").prop('class');
  var c5 = $("#contenerInputPasswordUser").prop('class');
  var c6 = $("#contenerInputConfirmPasswordUser").prop('class');

  if((c1 == c2) &&  (c2 == c3) && (c3 == c4) && (c4 == c5) && (c6 == c6) &&  (c6 == "col-sm-8 has-success has-feedback")) {

    $('#sendFormSignUp').attr("disabled", false);
  }
  else {
    $('#sendFormSignUp').attr("disabled", true);
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

  var c1 = $("#contenerInputNomUser").prop('class');
  var c2 = $("#contenerInputPrenomUser").prop('class');
  var c3 = $("#contenerInputConfirmEmailUser").prop('class');
  var c4 = $("#contenerInputEmailUser").prop('class');
  var c5 = $("#contenerInputPasswordUser").prop('class');
  var c6 = $("#contenerInputConfirmPasswordUser").prop('class');

  if((c1 == c2) &&  (c2 == c3) && (c3 == c4) && (c4 == c5) && (c6 == c6) &&  (c6 == "col-sm-8 has-success has-feedback")) {

    $('#sendFormSignUp').attr("disabled", false);
  }
  else {
    $('#sendFormSignUp').attr("disabled", true);
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

  var c1 = $("#contenerInputNomUser").prop('class');
  var c2 = $("#contenerInputPrenomUser").prop('class');
  var c3 = $("#contenerInputConfirmEmailUser").prop('class');
  var c4 = $("#contenerInputEmailUser").prop('class');
  var c5 = $("#contenerInputPasswordUser").prop('class');
  var c6 = $("#contenerInputConfirmPasswordUser").prop('class');

  if((c1 == c2) &&  (c2 == c3) && (c3 == c4) && (c4 == c5) && (c6 == c6) &&  (c6 == "col-sm-8 has-success has-feedback")) {

    $('#sendFormSignUp').attr("disabled", false);
  }
  else {
    $('#sendFormSignUp').attr("disabled", true);
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

  var c1 = $("#contenerInputNomUser").prop('class');
  var c2 = $("#contenerInputPrenomUser").prop('class');
  var c3 = $("#contenerInputConfirmEmailUser").prop('class');
  var c4 = $("#contenerInputEmailUser").prop('class');
  var c5 = $("#contenerInputPasswordUser").prop('class');
  var c6 = $("#contenerInputConfirmPasswordUser").prop('class');

  if((c1 == c2) &&  (c2 == c3) && (c3 == c4) && (c4 == c5) && (c6 == c6) &&  (c6 == "col-sm-8 has-success has-feedback")) {

    $('#sendFormSignUp').attr("disabled", false);
  }
  else {
    $('#sendFormSignUp').attr("disabled", true);
  }
});




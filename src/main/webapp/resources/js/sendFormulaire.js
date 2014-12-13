/**
 * Created by Lopez Jimmy on 04/12/2014.
 */

/*envoie un formulaire à la page du formulaire*/
function submitform(name)
{
  document.forms[name].submit();
}

/*rinitialise les champ d'un formulaire */
function resetform(name)
{ 
	if(name == "formRegister") {

		var c1 = $("#contenerInputNomUser");
		var c2 = $("#contenerInputPrenomUser");
  		var c3 = $("#contenerInputConfirmEmailUser");
  		var c4 = $("#contenerInputEmailUser");
  		var c5 = $("#contenerInputPasswordUser");
  		var c6 = $("#contenerInputConfirmPasswordUser");

  		c1.prop('class','col-sm-8 has-error has-feedback');
  		c2.prop('class','col-sm-8 has-error has-feedback');
  		c3.prop('class','col-sm-8 has-error has-feedback');
  		c4.prop('class','col-sm-8 has-error has-feedback');
  		c5.prop('class','col-sm-8 has-error has-feedback');
  		c6.prop('class','col-sm-8 has-error has-feedback');

	}
	
	document.getElementById(name).reset();
}


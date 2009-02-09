<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

	if (isset($actionflag))
		{
		// controllo che abbia selezionato un cliente
		if (!isset($form['ID_Cliente']) || $form['ID_Cliente'] == "")
			{
			$message = "Devi selezionare il Cliente !";
			}
		
		if (isset ($form['ID_Cliente']) && !($form['ID_Cliente'] == ""))
			{
			// trasformo il parametro ID_Cliente in var di sessione
			$session['ID_Cliente'] = $form['ID_Cliente'];
			header("Location: Admin_Composizione_Fattura.php");
			exit;
			}
		}

$form['ID_Cliente'] = "";		
		
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Nuova Fattura</title>



	<link rel="stylesheet" type="text/css" href="Style.css">

</head>



<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 

include("Header.php"); 



?>

<form method="post" action="<? print $PHP_SELF ?>" >

<!-- flag di invio del modulo -->
<input type="Hidden" name="actionflag" value="Invia">

<div align="center"><font class="FacetFormHeaderFont">Nuova Fattura</font></div>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->

  <tr>

    <td colspan="2" class="FacetDataTD">

	<?php

	if (! $message == "")

	{

	print $message;

	}

	?>

	</td>

  </tr>

  <!-- END Error -->

  <tr>

    <td class="FacetFieldCaptionTD">Cliente &nbsp;</td>

    <td class="FacetDataTD">
		<? 
		 // inserisco il select box per i clienti
		   $cliente = new selectCliente("form[ID_Cliente]");
		   $cliente -> addSelected($form['ID_Cliente']); 
		   $cliente-> output();
		 ?>
	 </td>

  </tr>

 

 <td colspan="2" align="right" nowrap class="FacetFooterTD">

      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Prosegui" class="FacetButton"><!-- END Button Insert -->



    </td>

</table>

</form>



</body>

</html>


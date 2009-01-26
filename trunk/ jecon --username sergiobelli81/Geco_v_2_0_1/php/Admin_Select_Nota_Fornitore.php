<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

	if (isset($actionflag))
		{
		// controllo che abbia selezionato un cliente
		if (!isset($form['ID_Fornitore']) || $form['ID_Fornitore'] == "")
			{
			$message = "Devi selezionare il Fornitore !";
			}
		
		if (isset ($form['ID_Fornitore']) && !($form['ID_Fornitore'] == ""))
			{
			// trasformo il parametro ID_Fornitore in var di sessione
			$session['ID_Fornitore'] = $form['ID_Fornitore'];
			header("Location: Admin_Nuova_Nota_Fornitore.php");
			exit;
			}
		}

$form['ID_Fornitore'] = "";		
		
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

<head>

	<title>Nuova Nota Credito Fornitore</title>
	<link rel="stylesheet" type="text/css" href="Style.css">

</head>

<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">
<?
include("Header.php"); 
?>

<form method="post" action="<? print $PHP_SELF ?>" >


<input type="Hidden" name="actionflag" value="Invia">

<div align="center"><font class="FacetFormHeaderFont">Nuova Nota Credito Fornitore</font></div>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

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

    <td class="FacetFieldCaptionTD">Fornitore &nbsp;</td>

    <td class="FacetDataTD">
	<? 
	 // inserisco il select box per i clienti
	   $fornitore = new selectFornitore("form[ID_Fornitore]");
	   $fornitore -> addSelected($form['ID_Fornitore']); 
	   $fornitore -> output();
	 ?>	 </td>

  </tr>

 

 <td colspan="2" align="right" nowrap class="FacetFooterTD">

      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Prosegui" class="FacetButton"><!-- END Button Insert -->



    </td>

</table>

</form>



</body>

</html>


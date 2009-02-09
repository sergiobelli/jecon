<?
include("dblib.inc");
include("clublib.inc");
checkUser();
$message = "";
if (isset($actionflag) && $actionflag=="Update")
	{
	
	if (empty($form["Ragione_Sociale"] ) ||
		empty($form["Cognome"]) ||
		empty($form["Nome"]) ||
		empty($form["PI"]) ||
		empty($form["CF"]) ||
		empty($form["Indirizzo"]) ||
		empty($form["Citta"]) ||
		empty($form["CAP"]) ||
		empty($form["Civico"]) ||
		empty($form["Provincia"]) ||
		empty($form["Telefono"]) ||
		empty($form["Fax"]) ||
		empty($form["Cell"]) ||
		empty($form["E_Mail"]) ||
		empty($form["Password"]) ||
		empty($form["Web"]))
		$message .= "I campi sono tutti obbligatori ! <br>";
	if (!(strlen($form["Password"]) == '8'))
		$message .= "La password deve essere di 8 caratteri<br>";
		
	if ( $message == "") // nessun errore	
		{
		$result = updateUser ( $form["Ragione_Sociale"], $form["Cognome"], $form["Nome"], $form["PI"], $form["CF"], $form["Indirizzo"], $form["Citta"], $form["CAP"], $form["Civico"], $form["Provincia"], $form["Telefono"], $form["Fax"], $form["Cell"], $form["Password"], $form["Web"], $form["E_Mail"]);
// $form = getRow ( "pws_clienti", "E_Mail", $session["Login"]);
		//print $session["Login"];
		print $result;
		}
}		
$form = getRow ( "pws_clienti", "E_Mail", $session["E_Mail"]);
$form["E_Mail"]=$session["E_Mail"];
?>
<html>
<head>
<title>Registrazione</title>
<link rel="stylesheet" type="text/css" href="Themes/Facet/Style.css">
</head>
<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">
<? 
include("Header.php"); 
include("publicnav.php");
?>
<!-- BEGIN Record pws_clienti -->
<form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">
<!-- flag di invio del modulo -->
<input type="Hidden" name="actionflag" value="Update">
<div align="center"><font class="FacetFormHeaderFont">Dati Anagrafici</font></div>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">
  <!-- BEGIN Error -->
  <tr>
    <td colspan="2" class="FacetDataTD">
	<?php
	if (! $message == "")
	{
	print "$message";
	}
	?>
	</td>
  </tr>
  <!-- END Error -->
  <tr>
    <td class="FacetFieldCaptionTD">Ragione Sociale&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Ragione_Sociale]" value="<?php print $form["Ragione_Sociale"] ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Cognome&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Cognome]" value="<?php print $form["Cognome"] ?>" maxlength="30" size="30" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Nome&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Nome]" value="<?php print $form["Nome"] ?>" maxlength="30" size="30" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">PI&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[PI]" value="<?php print $form["PI"] ?>" maxlength="12" size="12" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">CF&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[CF]" value="<?php print $form["CF"] ?>" maxlength="16" size="16" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Indirizzo&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Indirizzo]" value="<?php print $form["Indirizzo"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>
  </tr>
   <tr>
    <td class="FacetFieldCaptionTD">Civico&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Civico]" value="<?php print $form["Civico"] ?>" maxlength="10" size="10" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Citta&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Citta]" value="<?php print $form["Citta"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">CAP&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[CAP]" value="<?php print $form["CAP"] ?>" maxlength="5" size="5" class="FacetInput">&nbsp;</td>
  </tr>
   <tr>
    <td class="FacetFieldCaptionTD">Provincia&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Provincia]" value="<?php print $form["Provincia"] ?>" maxlength="2" size="2" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Telefono&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Telefono]" value="<?php print $form["Telefono"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Fax&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Fax]" value="<?php print $form["Fax"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Cell&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Cell]" value="<?php print $form["Cell"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">E Mail&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[E_Mail]" disabled value="<?php print $form["E_Mail"] ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <input type="hidden" name="form[E_Mail]" value="<?php print $form["E_Mail"] ?>">
   <tr>
    <td class="FacetFieldCaptionTD">Password&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Password]" value="<?php print $form["Password"] ?>" maxlength="10" size="10" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Web&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Web]" value="<?php print $form["Web"] ?>" maxlength="50" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  
    <td colspan="2" align="right" nowrap class="FacetFooterTD">
      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Update" class="FacetButton"><!-- END Button Insert -->

    </td>
  </tr></table>
</form>
<!-- END Record pws_clienti -->
</body>
</html>
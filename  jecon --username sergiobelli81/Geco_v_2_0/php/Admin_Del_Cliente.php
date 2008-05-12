<?
include("dblib.inc");
include("clublib.inc");
checkAdmin();
$message = "Sei sicuro di voler rimuovere il cliente?";
if (isset($actionflag) && $actionflag=="Delete")
	{
	
		$result = delRow($customers_table, "ID_Cliente", $ID_Cliente);
		header("Location: Admin_Clienti.php");
		exit;	
	}
		
$form = getRow ( $customers_table, "ID_Cliente", $ID_Cliente);
//$form["E_Mail"]=$session["E_Mail"];
?>


<html>
<head>
<title>Aggiorna Cliente</title>

<? 
include("Header.php"); 

?>
<!-- BEGIN Record pws_clienti -->
<form method="post" action="<?php print $PHP_SELF;?>" >
<!-- flag di invio del modulo -->
<input type="Hidden" name="actionflag" value="Delete">
<input type="Hidden" name="ID_Cliente" value="<?php print $ID_Cliente?>">
<div align="center"><font class="FacetFormHeaderFont">Dati Cliente</font></div>
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
    <td class="FacetDataTD"><input type="text" name="form[Ragione_Sociale]" disabled value="<?php print $form["Ragione_Sociale"] ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Cognome&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Cognome]" disabled value="<?php print $form["Cognome"] ?>" maxlength="30" size="30" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Nome&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Nome]" disabled value="<?php print $form["Nome"] ?>" maxlength="30" size="30" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">PI&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[PI]" disabled value="<?php print $form["PI"] ?>" maxlength="12" size="12" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">CF&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[CF]" disabled value="<?php print $form["CF"] ?>" maxlength="16" size="16" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Indirizzo&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Indirizzo]" disabled value="<?php print $form["Indirizzo"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Citta&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Citta]" disabled  value="<?php print $form["Citta"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">CAP&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[CAP]" disabled value="<?php print $form["CAP"] ?>" maxlength="5" size="5" class="FacetInput">&nbsp;</td>
  </tr>
   <tr>
    <td class="FacetFieldCaptionTD">Provincia&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Provincia]" disabled value="<?php print $form["Provincia"] ?>" maxlength="2" size="2" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Telefono&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Telefono]" disabled value="<?php print $form["Telefono"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Telefono2&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Telefono2]" disabled value="<?php print $form["Telefono2"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Telefono3&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Telefono3]" disabled value="<?php print $form["Telefono3"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Fax&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Fax]" disabled value="<?php print $form["Fax"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Cell&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Cell]" disabled value="<?php print $form["Cell"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">E Mail&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[E_mail]" disabled value="<?php print $form["E_mail"] ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
  </tr>
   <tr>
    <td class="FacetFieldCaptionTD">Password&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Password]" disabled value="<?php print $form["Password"] ?>" maxlength="10" size="10" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Web&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Web]" disabled value="<?php print $form["Web"] ?>" maxlength="50" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  
    <td colspan="2" align="right" nowrap class="FacetFooterTD">
      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Delete" class="FacetButton"><!-- END Button Insert -->

    </td>
  </tr></table>
</form>
<!-- END Record pws_clienti -->


</body>
</html>
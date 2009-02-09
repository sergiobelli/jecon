<?
include("dblib.inc");
include("clublib.inc");
checkAdmin();
$message = "Sei sicuro di voler rimuovere la Banca?";
if (isset($actionflag) && $actionflag=="Delete")
	{
	
		$result = delRow($bank_table, "ID_Banca", $ID_Banca);
		header("Location: Admin_Banche.php");
		exit;	
	}
		
$form = getRow ( $bank_table, "ID_Banca", $ID_Banca);

?>


<html>
<head>
<title>Rimuovi Banca</title>

<? 
include("Header.php"); 

include("confignav.php");
?>
<!-- BEGIN Record pws_clienti -->
<!-- BEGIN Record pws_clienti -->
<form method="post" action="<?php print $PHP_SELF;?>">
<!-- flag di invio del modulo -->
<input type="Hidden" name="actionflag" value="Delete">
<input type="Hidden" name="ID_Banca" value="<?php print $ID_Banca?>">
<div align="center"><font class="FacetFormHeaderFont">Cancella Banca</div>
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
    <td class="FacetFieldCaptionTD">Banca *&nbsp; </td>
    <td class="FacetDataTD"><input type="text" name="form[Banca]" disabled  value="<?php print $form["Banca"] ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Indirizzo &nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Indirizzo]" disabled  value="<?php print $form["Indirizzo"] ?>" maxlength="30" size="30" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Agenzia &nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Agenzia]" disabled  value="<?php print $form["Agenzia"] ?>" maxlength="30" size="30" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Abi *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Abi]" disabled  value="<?php print $form["Abi"] ?>" maxlength="16" size="12" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Cab *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Cab]" disabled  value="<?php print $form["Cab"] ?>" maxlength="16" size="16" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Numero Conto *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Conto]" disabled  value="<?php print $form["Conto"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Titolare *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Titolare]" disabled  value="<?php print $form["Titolare"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>
  </tr>
    <td colspan="2" align="right" nowrap class="FacetFooterTD">
      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Delete" class="FacetButton"><!-- END Button Insert -->

    </td>
  </tr></table>
</form>
<!-- END Record pws_clienti -->

</body>
</html>
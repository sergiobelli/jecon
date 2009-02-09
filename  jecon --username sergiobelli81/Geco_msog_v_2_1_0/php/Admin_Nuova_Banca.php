<?

include_once("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";



if (isset($actionflag) && $actionflag=="insert")
	{

	//controllo i campi

	if ( 
		empty($form["Banca"]) ||
		empty($form["Abi"]) ||
		empty($form["Cab"]) ||
		empty($form["Conto"]) ||
		empty($form["Titolare"])
		)

		$message .= "Hai dimenticato uno dei campi obbligatori ! <br>";
		// qui posso inserire ulteriori controlli
		// controllo unicita' del cliente
		// controllo unicita' della PI
	if ( getRow ( $bank_table, "Conto", $form["Conto"]))
		$message .= "Esiste gi&agrave; una registrazione con il Conto che hai inserito!<br>";	
	
	if ( $message == "") // nessun errore	
		{
		// aggiorno il db con il nuovo cliente
		bankInsert ($form["Banca"], $form["Indirizzo"], $form["Agenzia"], $form["Abi"], $form["Cab"], $form["Conto"], $form["Titolare"]);
		header("Location: Admin_Banche.php");
		exit;	
		}
	}
elseif (! isset($actionflag))
		{
		// inizializzo l'array associativo del modulo
		$form["Banca"] = "";
		$form["Agenzia"] = "";
		$form["Indirizzo"] = "";
		$form["Cab"] = "";
		$form["Abi"] = "";
		$form["Conto"] = "";
		$form["Titolare"] = "";
		}
		?>
<html>
<head>
<title>Nuova Banca</title>

<? 
include("Header.php");

include("confignav.php");
?>
<!-- BEGIN Record pws_clienti -->
<form method="post" action="<?php print $PHP_SELF;?>">
<!-- flag di invio del modulo -->
<input type="Hidden" name="actionflag" value="insert">
<div align="center"><font class="FacetFormHeaderFont">Nuova Banca</div>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">
  <!-- BEGIN Error -->
  <tr>
    <td colspan="2" class="FacetDataTD">
	<?php
	if (! $message == "")
	{
	print "$message<br><br>";
	
	}
	?>

	</td>
  </tr>
  <!-- END Error -->
  <tr>
    <td class="FacetFieldCaptionTD">Banca *&nbsp; </td>
    <td class="FacetDataTD"><input type="text" name="form[Banca]" value="<?php print $form["Banca"] ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Indirizzo &nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Indirizzo]" value="<?php print $form["Indirizzo"] ?>" maxlength="30" size="30" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Agenzia &nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Agenzia]" value="<?php print $form["Agenzia"] ?>" maxlength="30" size="30" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Abi *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Abi]" value="<?php print $form["Abi"] ?>" maxlength="16" size="12" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Cab *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Cab]" value="<?php print $form["Cab"] ?>" maxlength="16" size="16" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Numero Conto *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Conto]" value="<?php print $form["Conto"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Titolare *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Titolare]" value="<?php print $form["Titolare"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>
  </tr>

  
    <td colspan="2" align="right" nowrap class="FacetFooterTD">
      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Invia" class="FacetButton"><!-- END Button Insert -->
      <!-- BEGIN Button Delete --><input name="Delete" type="reset" value="Cancella" class="FacetButton"><!-- END Button Delete -->&nbsp;
    </td>
  </tr></table>
</form>
<!-- END Record pws_clienti -->
</body>
</html>
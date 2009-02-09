<?

include_once("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";



if (isset($actionflag))
	{

	//controllo i campi

	if ( 
		empty($form["Ragione_Sociale"]) ||
		empty($form["Cognome"]) ||
		empty($form["Nome"]) ||
		empty($form["PI"]) ||
		empty($form["CF"]) ||
		empty($form["Indirizzo"]) ||
		empty($form["Citta"]) ||
		empty($form["CAP"]) ||
		empty($form["Provincia"]) ||
		empty($form["Telefono"])
		)

		$message .= "Hai dimenticato uno dei campi obbligatori ! <br>";

	if ( $message == "" && $actionflag=="insert") // nuovo inserimento
		{
		configInsert ($form["Ragione_Sociale"], $form["Cognome"], $form["Nome"], $form["PI"], $form["CF"], $form["Indirizzo"], $form["Citta"], $form["CAP"], $form["Provincia"], $form["Telefono"],  $form["Telefono2"], $form["Telefono3"], $form["Fax"], $form["Cell"], $form["E_mail"], $form["Web"]);
		header("Location: Admin_Configurazione.php");
		exit;	
		}
	if ( $message == "" && $actionflag=="update") // aggiornamento
		{
		configUpdate ($ID_Azienda, $form["Ragione_Sociale"], $form["Cognome"], $form["Nome"], $form["PI"], $form["CF"], $form["Indirizzo"], $form["Citta"], $form["CAP"], $form["Provincia"], $form["Telefono"],  $form["Telefono2"], $form["Telefono3"], $form["Fax"], $form["Cell"], $form["E_mail"], $form["Web"]);
		header("Location: Admin_Configurazione.php");
		exit;	
		}
	
	}
elseif (! isset($actionflag))
		{
		
		// inizializzo l'array associativo del modulo
		$form = getRow($config_table, "ID_Azienda","1");
		}
		?>
<html>
<head>
<title>Configurazione</title>

<? 
include("Header.php");
// include("adminnav.php");
include("confignav.php");
?>
<!-- BEGIN Record pws_clienti -->
<form method="post" action="<?php print $PHP_SELF;?>">
<!-- flag di invio del modulo -->
<? 
// se checkConfig e' = 0 il value e' 'insert', altrimenti e' 'update'
$action_value = "update";
if (checkConfig() == '0')
	{
	$action_value = "insert";
	}
?>
<input type="Hidden" name="actionflag" value="<? echo $action_value?>">
<input type="Hidden" name="ID_Azienda" value="<? echo $form['ID_Azienda']?>">
<div align="center"><font class="FacetFormHeaderFont">Configurazione Azienda</div>
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
    <td class="FacetFieldCaptionTD">Ragione Sociale *&nbsp; </td>
    <td class="FacetDataTD"><input type="text" name="form[Ragione_Sociale]" value="<?php print $form["Ragione_Sociale"] ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Cognome *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Cognome]" value="<?php print $form["Cognome"] ?>" maxlength="30" size="30" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Nome *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Nome]" value="<?php print $form["Nome"] ?>" maxlength="30" size="30" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Partita Iva *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[PI]" value="<?php print $form["PI"] ?>" maxlength="16" size="12" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Codice Fiscale *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[CF]" value="<?php print $form["CF"] ?>" maxlength="16" size="16" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Indirizzo *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Indirizzo]" value="<?php print $form["Indirizzo"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Citta *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Citta]" value="<?php print $form["Citta"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">CAP *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[CAP]" value="<?php print $form["CAP"] ?>" maxlength="5" size="5" class="FacetInput">&nbsp;</td>
  </tr>
   <tr>
    <td class="FacetFieldCaptionTD">Provincia *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Provincia]" value="<?php print $form["Provincia"] ?>" maxlength="2" size="2" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Telefono *&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Telefono]" value="<?php print $form["Telefono"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
  </tr>
    <tr>
    <td class="FacetFieldCaptionTD">Telefono2 &nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Telefono2]" value="<?php print $form["Telefono2"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
  </tr>
    <tr>
    <td class="FacetFieldCaptionTD">Telefono3&nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Telefono3]" value="<?php print $form["Telefono3"] ?>" maxlength="20" size="20" class="FacetInput">&nbsp;</td>
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
    <td class="FacetDataTD"><input type="text" name="form[E_mail]" value="<?php print $form["E_mail"] ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
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
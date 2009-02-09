<?
include("dblib.inc");
include("clublib.inc");
checkAdmin();
$message = "";

if (isset($actionflag) && $actionflag=="Update")
	{
	
	if (/*// empty($form["Ragione_Sociale"] )  ||*/ empty($form["Cognome"]) || empty($form["Nome"]) /*|| // empty($form["PI"]) || // empty($form["CF"]) || empty($form["Indirizzo"]) || empty($form["Citta"]) || empty($form["CAP"]) || empty($form["Provincia"]) || empty($form["Telefono"]*/)
        {
            $message .= "Hai dimenticato uno dei campi obbligatori ! <br>";
        }
	
	if (!(strlen($form["Password"]) == '8') && !empty($form["Password"]))
		$message .= "La password deve essere di 8 caratteri<br>";
		
/* ------------------- INIZIO CONTROLLO CF E PI ------------------- */
// se e' valorizzata la Ragione Sociale, la PI diventa obbligatoria, altrimenti abbiamo 2 casi 
// 1- e' un ditta individuale PI valorizzata 
// 2- e' un privato quindi solo codice fiscale
// nell'update si e' tenuto conto della possibilita' di modificare un privato facendolo diventare 
// ditta e viceversa, per tener conto di tutti i possibili errori nel data entry, controllando 
// che non ci siano duplicati nella PI o CF
		
/*                
 	if (!empty($form['Ragione_Sociale']))	// e' una persona giuridica o ditta individuale, voglio la PI
	 	{
	 	if (empty($form['PI']))
	 		$message .= "La Partita Iva &egrave; obbligatoria per le Societ&agrave; ! <br>";
	 	}		
		
	if (empty($form['Ragione_Sociale']))	// e' una persona fisica o ditta individuale, voglio il codice fiscale o la PI
		{
		if (empty($form['CF']) && empty($form['PI']) )
			$message .= "Il Codice Fiscale &egrave; obbligatorio per le persone fisiche ! <br>";
		}

	// controllo unicita' del fornitore
	// ricavo quello che e' ancora scritto in tabella
	$cliente = getRow($customers_table, "ID_Cliente", $ID_Cliente);
		
	// controllo unicita' della PI se modificata
	if ( !($cliente['PI'] == $form['PI']) && !(empty($form['PI'])) ) // ha cambiato la PI ma non e' vuota
		{
		if (getRow ( $customers_table, "PI", $form["PI"])) // c'e' un altro cliente con la stessa PI
			$message .= "Esiste gi&agrave; una registrazione con la Partita Iva che hai inserito!<br>";	
		}

	// controllo unicita' del CF se modificata	
	if ( !($cliente['CF'] == $form['CF']) && !(empty($form['CF'])) ) // ha cambiato il cf ma non e' vuoto
		{
		if (getRow ( $customers_table, "CF", $form["CF"])) // c'e' un altro cliente con la stesso CF
			$message .= "Esiste gi&agrave; una registrazione con il codice fiscale che hai inserito!<br>";	
		}
		
	// controllo unicita' della PI se inserita al posto del CF
	if ( !($cliente['CF'] == $form['CF']) && (empty($form['CF'])) ) // ha eliminato il cf
		{

		if ( ($cliente['PI'] == $form['PI']) && (empty($cliente['PI'])) ) //ha tolto il cf ma la PI era vuota 
			$message .= "Se elimini il Codice Fiscale devi inserire una Partita IVA!<br>";	

		if ( !($cliente['PI'] == $form['PI']) && !(empty($form['PI'])) ) // se ha inserito una diversa PI devo controllare se e' unica
			{
			if (getRow ( $customers_table, "PI", $form["PI"])) // c'e' un altro cliente con la stessa PI
				$message .= "Esiste gi&agrave; una registrazione con la Partita Iva che hai inserito!<br>";	
			}
		}
/*------------------- FINE CONTROLLO PI CF ---------------------- */		
/*
	// controllo unicita' della mail se modificata
	if ( !($cliente['E_mail'] == $form['E_mail']) && !(empty($form['E_mail'])) ) // ha cambiato la mail ma non e' vuota
		{
		if (getRow ( $customers_table, "E_mail", $form["E_mail"])) // c'e' un altro fornitore con la stessa email
			$message .= "Esiste gi&agrave; una registrazione con l'email che hai inserito!<br>";	
		}
		
*/	
	if ( $message == "") // nessun errore	
		{
		$result = clientUpdate($ID_Cliente, $form["Ragione_Sociale"], $form["Cognome"], $form["Nome"], $form["PI"], $form["CF"], $form["Indirizzo"], $form["Citta"], $form["CAP"], $form["Provincia"], $form["Telefono"], $form["Telefono2"], $form["Telefono3"], $form["Fax"], $form["Cell"], $form["Password"], $form["Web"], $form["E_mail"]);
		$message = "Dati Aggiornati!";
		}
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
<input type="Hidden" name="actionflag" value="Update">
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
    <td class="FacetFieldCaptionTD">PI &nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[PI]" value="<?php print $form["PI"] ?>" maxlength="12" size="12" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">CF *&nbsp;</td>
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
    <td class="FacetFieldCaptionTD">Telefono2&nbsp;</td>
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
<?
include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

if (isset ($actionflag))

	{

	//controllo sull'esistenza dei campi obbligatori

	if (
		empty($form["N_Fattura"] ) ||		
		empty($form["Tipo_Pagamento"] ) ||
		empty($form["Totale"]) ||
		empty($form["Imposta"]) 
		)
		$message .= "I campi Numero Fattura, Tipo Pagamento, Totale e Imposta sono obbligatori ! <br>";
	
	 if (
		empty($giorno) ||
		empty($mese)   ||
		empty($anno)   ||
		empty($giorno_scadenza) ||
		empty($mese_scadenza)   ||
		empty($anno_scadenza)  
		)
		$message .= "Devi inserire la data fattura e la data scadenza fattura ! <br>";

	/*
	//controllo che il totale sia stato inserito correttamente
	  if (!is_numeric ($form["Totale"]))
		$message .= "Il totale deve essere inserito senza punti e con la virgola tra gli euro e i centesimi, es. 1250,95 <br>";
	
	//controllo che l'imposta sia stata inserita correttamente
	  if (!is_numeric ($form["Imposta"]))
		$message .= "L'imposta deve essere inserita senza punti e con la virgola tra gli euro e i centesimi, es. 1250,95 <br>";
	*/
	// controllo che la data fattura sia corretta	
	  if (!checkdate( $mese, $giorno, $anno))
		$message .= "La data fattura $giorno-$mese-$anno non &egrave; corretta! <br>";	

	// controllo che la data scadenza fattura sia corretta	
	  if (!checkdate( $mese_scadenza, $giorno_scadenza, $anno_scadenza))
		$message .= "La data scadenza $giorno_scadenza-$mese_scadenza-$anno_scadenza non &egrave; corretta! <br>";	

	if ($message == "")

		{
		// se tutto ok inserisco la nuova fattura ma prima faccio qualche operazione sulle variabili
			
		// formatto le date
		$form["Data_Fattura"] = strftime ("$anno-$mese-$giorno");
		$form["Data_Scadenza"] = strftime ("$anno_scadenza-$mese_scadenza-$giorno_scadenza");
		
		$result = spl_invoiceUpdate($ID_Fattura_Acquisto, $form['ID_Fornitore'], $form['N_Fattura'], $form['Data_Fattura'], $form['Ragione_Sociale'], $form['PI'], $form['Indirizzo'], $form['Citta'], $form['CAP'], $form['Provincia'], $form['Descrizione'], $form['Totale'], $form['Imposta'], $form['Tipo_Pagamento'], $form['Data_Scadenza'], $form['Note']);
		
		if (! $result )

			die (" Errore di inserimento: ".mysql_error());

		else 
			{
			$message .= "Fattura aggiornata con successo";	
			// recupero i dati della fattura dal db
			$form = getRow($spl_invoices_table, "ID_Fattura_Acquisto", $ID_Fattura_Acquisto);
			// aggiorno la fattura con i nuovi dati del fornitore se sono cambiati
			$form = array_merge($form, getRow($suppliers_table, "ID_Fornitore", $form['ID_Fornitore']));

			}
		}

	}

if (! isset($actionflag))

		{
		// recupero i dati della fattura dal db
		$form = getRow($spl_invoices_table, "ID_Fattura_Acquisto", $ID_Fattura_Acquisto);
		// aggiorno la fattura con i nuovi dati del fornitore se sono cambiati
		$form = array_merge($form, getRow($suppliers_table, "ID_Fornitore", $form['ID_Fornitore']));
		// faccio qualche operazione sulla data fattura e data scadenza
		// converto le date in Unix timestamp
		$ts_Data_Fattura = strtotime ($form['Data_Fattura']);
		$ts_Data_Scadenza = strtotime ($form['Scadenza']);
				
		// ricavo giorno, mese, anno
		$giorno = strftime("%d", $ts_Data_Fattura);
		$mese = strftime("%m", $ts_Data_Fattura);
		$anno = strftime("%Y", $ts_Data_Fattura);

		$giorno_scadenza = strftime("%d", $ts_Data_Scadenza);
		$mese_scadenza = strftime("%m", $ts_Data_Scadenza);
		$anno_scadenza = strftime("%Y", $ts_Data_Scadenza);

		}

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>

<head>

	<title>Aggiorna Fattura Fornitore</title>



	<link rel="stylesheet" type="text/css" href="Style.css">

</head>



<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 

include("Header.php"); 

?>

<form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">

<!-- flag di invio del modulo -->

<input type="Hidden" name="actionflag" value="insert">
<input type="Hidden" name="ID_Fattura_Acquisto" value="<?php print $ID_Fattura_Acquisto ?>">
<input type="Hidden" name="form[ID_Fornitore]" value="<?php print $form["ID_Fornitore"] ?>">
<input type="Hidden" name="form[Ragione_Sociale]" value="<?php print $form["Ragione_Sociale"] ?>">
<input type="Hidden" name="form[PI]" value="<?php print $form["PI"] ?>">
<input type="Hidden" name="form[Indirizzo]" value="<?php print $form["Indirizzo"] ?>">
<input type="Hidden" name="form[Citta]" value="<?php print $form["Citta"] ?>">
<input type="Hidden" name="form[Ragione_Sociale]" value="<?php print $form["Ragione_Sociale"] ?>">
<input type="Hidden" name="form[CAP]" value="<?php print $form["CAP"] ?>">
<input type="Hidden" name="form[Provincia]" value="<?php print $form["Provincia"] ?>">

<div align="center"><font class="FacetFormHeaderFont">Aggiorna Fattura Fornitore</font></div>

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

    <td class="FacetFieldCaptionTD">Ragione Sociale &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Ragione_Sociale]" disabled value="<?php print $form["Ragione_Sociale"] ?>" maxlength="100" size="30" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">N_Fattura * &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[N_Fattura]" value="<?php print $form["N_Fattura"] ?>" maxlength="100" size="30" class="FacetInput">&nbsp;</td>

  </tr>
 <tr>

    <td class="FacetFieldCaptionTD">Data Fattura &nbsp;</td>
	 <td class="FacetDataTD">
		 <? 
		 // inserisco il select box per il campo data
		   $select_data = new selectDate("giorno", "mese", "anno");
		   $select_data -> daySelected($giorno); 
		   $select_data -> monthSelected($mese); 
		   $select_data -> yearSelected($anno); 	  
		   $select_data -> output();
		 ?>
	 </td>
  </tr>

 <tr>

 	<td class="FacetFieldCaptionTD">Tipo Pagamento * &nbsp;</td>

    <td colspan="2" class="FacetDataTD">
		 <? 
		 // inserisco il select box per il campo tipo pagamento
		   $select_pagamento = new selectPagamento();
		   $select_pagamento -> addSelectName("form[Tipo_Pagamento]");
		   $select_pagamento -> addSelected($form["Tipo_Pagamento"]);
		   $select_pagamento -> output();
		 ?>
	</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">Totale (Iva Compresa) * &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Totale]" value="<?php print $form["Totale"] ?>" maxlength="20" size="10" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">Totale Imposta * &nbsp;</td>
    <td class="FacetDataTD"><input type="text" name="form[Imposta]" value="<?php print $form["Imposta"] ?>" maxlength="20" size="10" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Scadenza Fattura *</td>&nbsp;</td>
    <td class="FacetDataTD">
	  <? 
	 // inserisco il select box per il campo data
	   $select_scdata = new selectDate("giorno_scadenza", "mese_scadenza", "anno_scadenza");
	   $select_scdata -> daySelected($giorno_scadenza); 
	   $select_scdata -> monthSelected($mese_scadenza); 
	   $select_scdata -> yearSelected($anno_scadenza); 	  
	   $select_scdata -> output();
	 ?>
    </td>
  </tr>	

	<tr>
		<td class="FacetFieldCaptionTD">Descrizione &nbsp;</td><td class="FacetDataTD"><textarea name="form[Descrizione]" cols="40" rows="5" class="FacetInput"><? print $form['Descrizione'] ?></textarea></td>
	</tr>

	<tr>
		<td class="FacetFieldCaptionTD">Note &nbsp;</td><td class="FacetDataTD"><textarea name="form[Note]" cols="40" rows="5" class="FacetInput"><? print $form['Note'] ?></textarea></td>
	</tr>

  <td colspan="2" align="right" nowrap class="FacetFooterTD">

      <!-- BEGIN Button Insert --><input name="Update" type="submit" value="Insert" class="FacetButton"><!-- END Button Insert -->
    </td>

</table>

</form>

</body>

</html>


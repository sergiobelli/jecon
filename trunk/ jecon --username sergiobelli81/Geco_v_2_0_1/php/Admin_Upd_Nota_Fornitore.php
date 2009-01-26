<?
include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";


if (isset ($actionflag))

	{
	//controllo sull'esistenza dei campi obbligatori
	if (
		empty($form["N_Nota"] ) ||		
		empty($form["Tipo_Pagamento"] ) ||
		empty($form["Totale"]) ||
		empty($form["Imposta"]) 
		)
		$message .= "I campi Numero Fattura, Tipo Pagamento, Totale e Imposta sono obbligatori ! <br>";

	 if (
		empty($giorno) ||
		empty($mese)   ||
		empty($anno)  
		)
		$message .= "Devi inserire la data emissione della nota di credito ! <br>";

		// controllo che l'imponibile non sia 0
		if ($form['Totale'] == 0)
			{
			$message = "Il totale della nota di credito non pu&ograve; essere nullo!<br>";
			}
		// controllo che sia inserita e corretta la data nota
	    if (!checkdate( $mese, $giorno, $anno))
			$message .= "La data nota di credito $giorno-$mese-$anno non &egrave; corretta! <br>";	
			
		// controllo che la data nota di credito non sia inferiore alla data fattura
		// recupero i dati della fattura da stornare
		$rs_fattura = dynQuery("*", $spl_invoices_table, "ID_Fattura_Acquisto = $form[ID_Fattura_Acquisto]");
		$fattura = dbms_fetch_array ( $rs_fattura );
		
		$ts_data_nota = mktime(0,0,0,$mese,$giorno,$anno);
		$ts_data_fattura = strtotime ($fattura['Data_Fattura']);
		if ( $ts_data_nota < $ts_data_fattura ) 
			$message = "La data della nota di credito ".strftime ("$anno-$mese-$giorno")." non pu&ograve; essere inferiore alla data fattura ".strftime($fattura['Data_Fattura'])."!<br>";	
		
		// controllo che il totale non sia superiore alla fattura da stornare: se prevedo la possibilita' di creare piu' note
		// per la stessa fattura, devo controllare che non sia superiore al saldo tra fattura e note gia' emesse	
		// $form['Totale'] = $form['Imponibile']*1.2;
		
		// calcolo il saldo per fare il casting a float
		$saldo = $fattura['Totale'] - $form['Totale'];
		
		if ( $saldo < 0 )
			$message = "Il totale della nota di credito $form[Totale] non pu&ograve; essere superiore al totale della fattura $fattura[Totale] da stornare!<br>";

	if ($message == "")

		{
		// se tutto ok inserisco la nuova nota di credito ma prima faccio qualche operazione sulle variabili
		
		// recupero di nuovo il fornitore
		$fornitore = getRow($suppliers_table, "ID_Fornitore", $form['ID_Fornitore']);
		$rs_fatture = dynQuery ('*', $spl_invoices_table, "ID_Fornitore = $form[ID_Fornitore]" );
		
		// formatto la data
		$form["Data_Nota"] = strftime ("$anno-$mese-$giorno");

		
		$result = spl_noteUpdate($ID_Nota, $form['ID_Fornitore'], $form['N_Nota'], $form['ID_Fattura_Acquisto'], $form['Data_Nota'], $fornitore['Ragione_Sociale'], $fornitore['PI'], $fornitore['Indirizzo'], $fornitore['Citta'], $fornitore['CAP'], $fornitore['Provincia'], $form['Descrizione'], $form['Totale'], $form['Imposta'], $form['Tipo_Pagamento'], $form['Note']);
		
		if (! $result )

			die (" Errore di inserimento: ".mysql_error());

		else 
			{

			$message .= "Dati aggiornati con successo";	

			}
		}

	}

if (! isset($actionflag))

		{
		// recupero i dati della nota
		$form = getRow($spl_credit_notes_table, "ID_Nota", $ID_Nota);
		
		// recupero i dati del fornitore e relative fatture per lo storno
		$fornitore = getRow($suppliers_table, "ID_Fornitore", $form['ID_Fornitore']);
		$rs_fatture = dynQuery ('*', $spl_invoices_table, "ID_Fornitore = $form[ID_Fornitore]" );

		// faccio qualche operazione sulla data
		// converto la data in Unix timestamp
		$ts_Data_Nota = strtotime ($form['Data_Nota']);
		
		// ricavo giorno, mese, anno
		$giorno = strftime("%d", $ts_Data_Nota);
		$mese = strftime("%m", $ts_Data_Nota);
		$anno = strftime("%Y", $ts_Data_Nota);
		// print $giorno ."-".$mese."-".$anno  ;
		// print strftime ($form['Data_Ordine']);

		}

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

<form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">

<input type="Hidden" name="actionflag" value="insert">

<input type="Hidden" name="ID_Nota" value="<? print $ID_Nota ?>">

<input type="Hidden" name="form[ID_Fornitore]" value="<? print $form['ID_Fornitore'] ?>">

<div align="center"><font class="FacetFormHeaderFont">Nuova Nota Credito Fornitore</font></div>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

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


  <tr>

    <td class="FacetFieldCaptionTD">Ragione Sociale &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="fornitore[Ragione_Sociale]" disabled value="<?php print $fornitore["Ragione_Sociale"] ?>" maxlength="100" size="30" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">N_Nota * &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[N_Nota]" value="<?php print $form["N_Nota"] ?>" maxlength="100" size="30" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Fattura da Stornare</td>&nbsp;</td>
    <td class="FacetDataTD">
	  <SELECT NAME="form[ID_Fattura_Acquisto]">
<?		
		while ($a_row = dbms_fetch_array($rs_fatture))
			{
			$selected = "";
		   	if($a_row["ID_Fattura_Acquisto"] == $form["ID_Fattura_Acquisto"])
				$selected = "selected"; 
				
			print "\t\t <option value=\"".$a_row["ID_Fattura_Acquisto"]."\" $selected >".$a_row["N_Fattura"]."</option>\n";
			}
		print "\t </select>\n";

?>

    </td>
</tr>
 <tr>

    <td class="FacetFieldCaptionTD">Data Nota &nbsp;</td>
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
		<td class="FacetFieldCaptionTD">Descrizione &nbsp;</td><td class="FacetDataTD"><textarea name="form[Descrizione]" cols="40" rows="5" class="FacetInput"><? print $form['Descrizione'] ?></textarea></td>
	</tr>

	<tr>
		<td class="FacetFieldCaptionTD">Note &nbsp;</td><td class="FacetDataTD"><textarea name="form[Note]" cols="40" rows="5" class="FacetInput"><? print $form['Note'] ?></textarea></td>
	</tr>

 


 <td colspan="2" align="right" nowrap class="FacetFooterTD">

      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Insert" class="FacetButton"><!-- END Button Insert -->



    </td>

</table>

</form>



</body>

</html>


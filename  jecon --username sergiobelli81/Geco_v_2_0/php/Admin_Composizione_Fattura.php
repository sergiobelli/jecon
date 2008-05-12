<?
include("dblib.inc");
include("clublib.inc");
checkAdmin();
$message = "";

if (isset($actionflag))
	{
	// nella generazione delle fatture il progressivo annuo si resetta quando cambia l'anno di riferimento.
	// il sistema quindi inserisce il progressivo in un campo incrementale controllando l'anno:
	// quando cambia l'anno della data emissione fattura, il progressivo riparte da 1
	// questo metodo comporta un controllo aggiuntivo sul progressivo, ovvero non deve essere inserito un 
	// progressivo in tabella se l'ultimo progressivo inserito ha una data successiva alla data fattura attuale. 
	// Ha come vantaggio la possibilita' di non dover azzerare i contatori o rimuovere le fatture dell'anno 
	// precedente ad inizio anno, consentendo una maggior continuita' fra gli esercizi.

	// controllo che i dati della fattura siano giusti, quindi passo all'anteprima
	
	// controllo che l'imponibile non sia 0
	if ($form['Imponibile'] == 0)
		{
		$message = "L'imponibile della fattura non pu&ograve; essere nullo!<br>";
		}
	// controllo che sia inserito il tipo pagamento
	if ($form['Tipo_Pagamento'] == "")
		{
		$message .= "Devi selezionare un metodo di pagamento!<br>";
		}
	// controllo che sia inserita la banca
	if ($form['ID_Banca'] == "")
		$message .= "Devi inserire la Banca d'appoggio o la Cassa!<br>";
	
	// controllo che siano inserite e corrette le date fattura e scadenza fattura
    if (!checkdate( $mese, $giorno, $anno))
		$message .= "La data fattura $giorno-$mese-$anno non &egrave; corretta! <br>";	
	if ( !checkdate( $mese_scadenza, $giorno_scadenza, $anno_scadenza))
		$message .= "La data scadenza fattura $giorno_scadenza-$mese_scadenza-$anno_scadenza non &egrave; corretta! <br>";	
	
	// controllo che la scadenza non sia inferiore alla data
	$ts_data_fattura = mktime(0,0,0,$mese,$giorno,$anno);
	$ts_data_scadenza = mktime(0,0,0,$mese_scadenza,$giorno_scadenza,$anno_scadenza);
	
	if ( $ts_data_fattura > $ts_data_scadenza )
		$message .= "La data scadenza fattura non pu&ograve; essere inferiore alla data fattura !<br>";
	
	// controllo che l'ultima fattura inserita non abbia data successiva alla presente
	$rs_ultima_fattura = dynQuery("*", $invoices_table, 1, "ID_Fattura Desc" );
	$ultima_fattura = dbms_fetch_array($rs_ultima_fattura);
	
	if ($ultima_fattura)
	$ts_ultima_fattura = strtotime ($ultima_fattura['Data_Fattura']);
	else $ts_ultima_fattura = 0; // se e' la prima fattura metto il time stamp a 0
	
	if ( $ts_data_fattura < $ts_ultima_fattura )
		$message .= "La data dell'ultima fattura emessa (".strftime("%d %B %Y", $ts_ultima_fattura).") non pu&ograve; essere superiore alla data fattura !<br>";
	
	
	// se tutto ok, procedo con la visualizzazione dell'anteprima
	if ($message == "")
		{
		// trasformo i parametri da passare in var di sessione 
		$session['Tipo_Pagamento'] = $form['Tipo_Pagamento'];
		$session['ID_Banca'] = $form['ID_Banca'];
		$session['ts_data_fattura'] = $ts_data_fattura;
		$session['ts_data_scadenza'] = $ts_data_scadenza;
		$session['Note'] = $form['Note'];
		
		header ("Location: Admin_Anteprima_Fattura.php");
		exit;
		}
	}

if (isset($ID_Ordine)) // aggiunta / rimozione dell'ordine in fattura
	{
			// recupero tutti i dati dell'ordine
			$ordine = getRow($orders_table, "ID_Ordine", $ID_Ordine);
			$ordine = array_merge($ordine, getRow($customers_table, "ID_Cliente", $session['ID_Cliente']));
			// cambio status 
			if ($ordine['Status'] == 'INSERITO')
				{
				$ordine['Status'] = "CONFERMATO";
				}
			else
				{
				$ordine['Status'] = "INSERITO";
				}
			$result = orderUpdate($ID_Ordine, $session['ID_Cliente'], $ordine['Protocollo'], $ordine['Oggetto'], $ordine['ID_Fattura'], $ordine['Data_Ordine'], $ordine['Data_Scadenza'], $ordine['Tipo_Pagamento'], $ordine['Prezzo'], $ordine['Iva'], $ordine['Ragione_Sociale'], $ordine['Cognome'], $ordine['Nome'], $ordine['PI'], $ordine['CF'], $ordine['Indirizzo'], $ordine['Citta'], $ordine['CAP'], $ordine['Provincia'], $ordine['Telefono'], $ordine['Fax'], $ordine['E_mail'], $ordine['Status']);
	}	
if (!isset($actionflag) || !($message == ""))
	{
	// recupero i dati del cliente
	$cliente = getRow($customers_table, "ID_Cliente", $session['ID_Cliente']);
	
	// relativi ordini non ancora fatturati
	$rs_ordini = dynQuery ('*', $orders_table, "ID_Cliente = $session[ID_Cliente] and Status <> 'FATTURATO' and STATUS <> 'INSERITO'" );
		
	// e gli ordini inseriti in fattura
	$rs_ordini_fattura = dynQuery ('*', $orders_table, "ID_Cliente = $session[ID_Cliente] and Status = 'INSERITO'" );
	
	// inizializzo le note
	if (!isset($form['Note']))
		$form['Note'] = "";

	// il tipo pagamento	
	if (!isset($form['Tipo_Pagamento']))
		$form['Tipo_Pagamento'] = "";
	
	if (!isset($form['ID_Banca']))
		$form['ID_Banca'] = "";
	// calcolo l'imponibile, iva e totale
	$form['Imponibile'] = 0;
	$form['Iva'] = 0;
	$form['Totale'] = 0;
	while ($a_row = dbms_fetch_array($rs_ordini_fattura))
	{
	$form['Iva'] = $form['Iva'] + $a_row['Prezzo'] * $a_row['Iva'] / 100;
	$form['Imponibile'] = $form['Imponibile'] + $a_row['Prezzo'];
	$form['Totale'] = $form['Totale'] + $a_row['Prezzo'] + $a_row['Prezzo'] * $a_row['Iva'] / 100;
	}
	// ripristino l'array
	$rs_ordini_fattura = dynQuery ('*', $orders_table, "ID_Cliente = $session[ID_Cliente] and Status = 'INSERITO'" );
	
	
	
	// se e' il primo caricamento inizializzo le vars
	if ($message == "")
			{
			$giorno = "";
			$mese = "";
			$anno = "";
			$giorno_scadenza = "";
			$mese_scadenza = "";
			$anno_scadenza = "";
			}
	
	}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Composizione Fattura</title>

	<link rel="stylesheet" type="text/css" href="Themes/Facet/Style.css">
</head>

<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">
<? 
include("Header.php"); 

?>
<p>
<div align="center">
<font class="FacetFormHeaderFont">Ordini non fatturati</font>
</div>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center" width = "90%">
 <tr>
   <th class="FacetFieldCaptionTD"># Ord. &nbsp;</th><th class="FacetFieldCaptionTD">Cliente &nbsp;</th><th class="FacetFieldCaptionTD">Data Ordine &nbsp;</th><th class="FacetFieldCaptionTD">Protocollo &nbsp;</th><th class="FacetFieldCaptionTD">Oggetto &nbsp;</th><th class="FacetFieldCaptionTD">Totale Iva Esc. &nbsp;</th><th class="FacetFieldCaptionTD">Allegato &nbsp;</th><th class="FacetFieldCaptionTD">Aggiungi &nbsp;</th>
 </tr>

  <?php
// visualizzo l'elenco degli ordini fatturabili
while ($a_row = dbms_fetch_array($rs_ordini))

	{
	// per il momento la gestione degli allegati e' rimandata
	$a_row["Allegato"] = "";
	
	print "<tr>";

	print "<td class=\"FacetDataTD\"><a href=\"Admin_Upd_Ordine.php?ID_Ordine=".$a_row["ID_Ordine"]."\">".$a_row["ID_Ordine"]."</a> &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Ragione_Sociale"]." ".$a_row["Cognome"]."&nbsp;</td><td class=\"FacetDataTD\">".$a_row["Data_Ordine"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Protocollo"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Oggetto"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Prezzo"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Allegato"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\" align=\"center\"><a href=\"Admin_Composizione_Fattura.php?ID_Ordine=".$a_row["ID_Ordine"]."\"><img src=\"images/v.gif\" alt=\"Inserisci in fattura\" border=\"0\"></a></td>";
	print "</tr>";

	}   

   ?>
 </table>
<p></p>
<div align="center">
<font class="FacetFormHeaderFont">Ordini inseriti in fattura </font>
</div>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center" width = "90%">
 <tr>
   <th class="FacetFieldCaptionTD"># Ord. &nbsp;</th><th class="FacetFieldCaptionTD">Cliente &nbsp;</th><th class="FacetFieldCaptionTD">Data Ordine &nbsp;</th><th class="FacetFieldCaptionTD">Protocollo &nbsp;</th><th class="FacetFieldCaptionTD">Oggetto &nbsp;</th><th class="FacetFieldCaptionTD">Totale Iva Esc. &nbsp;</th><th class="FacetFieldCaptionTD">Allegato &nbsp;</th><th class="FacetFieldCaptionTD">Rimuovi &nbsp;</th>
 </tr>
<?php
// visualizzo l'elenco degli ordini inseriti in fattura
while ($a_row = dbms_fetch_array($rs_ordini_fattura))
	{
	// per il momento la gestione degli allegati e' rimandata
	$a_row["Allegato"] = "";
	
	print "<tr>";

	print "<td class=\"FacetDataTD\"><a href=\"Admin_Upd_Ordine.php?ID_Ordine=".$a_row["ID_Ordine"]."\">".$a_row["ID_Ordine"]."</a> &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Ragione_Sociale"]." ".$a_row["Cognome"]."&nbsp;</td><td class=\"FacetDataTD\">".$a_row["Data_Ordine"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Protocollo"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Oggetto"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Prezzo"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Allegato"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\" align=\"center\"><a href=\"Admin_Composizione_Fattura.php?ID_Ordine=".$a_row["ID_Ordine"]."\"><img src=\"images/x.gif\" alt=\"Rimuovi\" border=\"0\"></a></td>";
	print "</tr>";
	}   
 ?>
 </table>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center" width = "90%">

<form method="post" action="<? print $PHP_SELF ?>">
<!-- flag di invio del modulo -->
<input type="Hidden" name="actionflag" value="Anteprima">
<input type="Hidden" name="ID_Cliente" value="<? print $session['ID_Cliente'] ?>">
<input type="Hidden" name="form[Imponibile]" value="<? print $form['Imponibile'] ?>">
<input type="Hidden" name="form[Iva]" value="<? print $form['Iva'] ?>">
<input type="Hidden" name="form[Totale]" value="<? print $form['Totale'] ?>">

<input type="Hidden" name="form[PI]" value="<? print $cliente['PI'] ?>">
<input type="Hidden" name="form[Ragione_Sociale]" value="<? print $cliente['Ragione_Sociale']?>">





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
	<td class="FacetDataTD"><input type="text" name="form[Ragione_Sociale]" disabled value="<?php print $cliente['Ragione_Sociale']?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
</tr>
<tr>
    <td class="FacetFieldCaptionTD">Data Fattura</td>&nbsp;</td>
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
	<td class="FacetFieldCaptionTD">Imponibile&nbsp;</td><td class="FacetDataTD"><input type="text" name=form[Imponibile] disabled value="<? print $form['Imponibile']?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
</tr>
<tr>
	<td class="FacetFieldCaptionTD">Iva &nbsp;</td><td class="FacetDataTD"><input type="text" name=form[Iva] disabled value="<? print $form['Iva'] ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
</tr>
<tr>
	<td class="FacetFieldCaptionTD">Totale &nbsp;</td><td class="FacetDataTD"><input type="text" name=form[Totale] disabled value="<? print $form['Totale'] ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
</tr>

 <tr>

 	<td class="FacetFieldCaptionTD">Tipo Pagamento * &nbsp;</td>

    <td class="FacetDataTD">
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
	  <td class="FacetFieldCaptionTD">Banca</td>&nbsp;</td>
	  <td class="FacetDataTD">
		<?
		$selectBank = new selectBank("form[ID_Banca]");
		$selectBank -> addSelected($form['ID_Banca']);
		$selectBank -> output();
		?>
	  </td>
  </tr>
  
  <tr>
    <td class="FacetFieldCaptionTD">Scadenza Fattura</td>&nbsp;</td>
    <td class="FacetDataTD">
  <? 
 // inserisco il select box per il campo data
   $select_data = new selectDate("giorno_scadenza", "mese_scadenza", "anno_scadenza");
   $select_data -> daySelected($giorno_scadenza); 
   $select_data -> monthSelected($mese_scadenza); 
   $select_data -> yearSelected($anno_scadenza); 	  
   $select_data -> output();
 ?>
 </td>
</tr>
<tr>
	<td class="FacetFieldCaptionTD">Note &nbsp;</td><td class="FacetDataTD"><textarea name="form[Note]" cols="40" rows="5" class="FacetInput"><? print $form['Note'] ?></textarea></td>
</tr>
<tr> 
 <td colspan="2" align="right" nowrap class="FacetFooterTD">
      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Anteprima Fattura" class="FacetButton"><!-- END Button Insert -->

    </td>
</form>

 </table>

</body>
</html>

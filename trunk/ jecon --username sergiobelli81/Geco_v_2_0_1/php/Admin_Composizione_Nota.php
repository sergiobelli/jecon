<?
include("dblib.inc");
include("clublib.inc");
checkAdmin();
$message = "";
	// recupero i dati del cliente
	$cliente = getRow($customers_table, "ID_Cliente", $session['ID_Cliente']);
	// e relative fatture 
	$rs_fatture = dynQuery ('*', $invoices_table, "ID_Cliente = $session[ID_Cliente]" );
if (isset($actionflag))
	{
	// nella generazione delle note il progressivo annuo si resetta quando cambia l'anno di riferimento.
	// il sistema quindi inserisce il progressivo in un campo incrementale controllando l'anno:
	// quando cambia l'anno della data emissione fattura, il progressivo riparte da 1
	// questo metodo comporta un controllo aggiuntivo sul progressivo, ovvero non deve essere inserito un 
	// progressivo in tabella se l'ultimo progressivo inserito ha una data successiva alla data fattura attuale. 
	// Ha come vantaggio la possibilita' di non dover azzerare i contatori o rimuovere le fatture dell'anno 
	// precedente ad inizio anno, consentendo una maggior continuita' fra gli esercizi.

	// controllo che i dati della nota di credito siano giusti, quindi passo all'anteprima
	
	// controllo che l'imponibile non sia 0
	if ($form['Imponibile'] == 0)
		{
		$message = "L'imponibile della nota di credito non pu&ograve; essere nullo!<br>";
		}
	// controllo che sia inserita e corretta la data nota
    if (!checkdate( $mese, $giorno, $anno))
		$message .= "La data nota di credito $giorno-$mese-$anno non &egrave; corretta! <br>";	
		
	// controllo che la data nota di credito non sia inferiore alla data fattura
	// recupero i dati della fattura da stornare
	$rs_fattura = dynQuery("*", $invoices_table, "ID_Fattura = $form[ID_Fattura]");
	$fattura = dbms_fetch_array ( $rs_fattura );
	
	$ts_data_nota = mktime(0,0,0,$mese,$giorno,$anno);
	$ts_data_fattura = strtotime ($fattura['Data_Fattura']);
	if ( $ts_data_nota < $ts_data_fattura ) 
		$message = "La data della nota di credito ($giorno $mese $anno) non pu&ograve; essere inferiore alla data fattura (". strftime("%d %m %Y", $fattura['Data_Fattura']).")!<br>";	
	
	// controllo che il totale non sia superiore alla fattura da stornare: se prevedo la possibilita' di creare piu' note
	// per la stessa fattura, devo controllare che non sia superiore al saldo tra fattura e note gia' emesse	
	$form['Totale'] = $form['Imponibile']*1.2;
	if ( $form['Totale'] > $fattura['Totale'] )
		$message = "Il totale della nota di credito $form[Totale] non pu&ograve; essere superiore al totale della fattura $fattura[Totale] da stornare!<br>";

	// controllo che l'ultima nota inserita non abbia data successiva alla presente
	$rs_ultima_nota = dynQuery("*", $credit_notes_table, 1, "ID_Nota Desc" );
	$ultima_nota = dbms_fetch_array($rs_ultima_nota);
	
	if ($ultima_nota)
	$ts_ultima_nota = strtotime ($ultima_nota['Data_Nota']);
	else $ts_ultima_nota = 0; // se e' la prima nota metto il time stamp a 0
	
	if ( $ts_data_nota < $ts_ultima_nota )
		$message .= "La data dell'ultima nota emessa (".strftime("%d %B %Y", $ts_ultima_nota).") non pu&ograve; essere superiore alla data nota !<br>";
	
	// se tutto ok, procedo con la visualizzazione dell'anteprima
	if ($message == "")
		{
		// trasformo i parametri da passare in var di sessione 
		$session['ID_Fattura'] = $form['ID_Fattura'];
		$session['Imponibile'] = $form['Imponibile'];
		$session['Iva'] = $form['Iva'];
		$session['ts_data_nota'] = $ts_data_nota;
		// $session['ts_data_scadenza'] = $ts_data_scadenza;
		$session['Descrizione'] = $form['Descrizione'];
		$session['Note'] = $form['Note'];
		header ("Location: Admin_Anteprima_Nota.php");
		exit;
		}
	}

if (!isset($actionflag))
	{

	$form['ID_Fattura'] = "";
	// inizializzo le note
	$form['Note'] = "";
	$form['Descrizione'] = "";
	// calcolo l'imponibile, iva e totale
	$form['Imponibile'] = 0;
	$form['Iva'] = 0;
	$form['Totale'] = 0;
	/*
	while ($a_row = dbms_fetch_array($rs_ordini_nota))
	{
	$form['Iva'] = $form['Iva'] + $a_row['Prezzo'] * $a_row['Iva'] / 100;
	$form['Imponibile'] = $form['Imponibile'] + $a_row['Prezzo'];
	$form['Totale'] = $form['Totale'] + $a_row['Prezzo'] + $a_row['Prezzo'] * $a_row['Iva'] / 100;
	}
	// ripristino l'array
	$rs_ordini_fattura = dynQuery ('*', $orders_table, "ID_Cliente = $session[ID_Cliente] and Status = 'INSERITO'" );
	*/
	
	
		// faccio qualche operazione sulla data
		// converto la data fattura in Unix timestamp
		// se e' stata inserita una data la uso altrimenti imposto quella attuale
		if (isset($giorno))
			{
			$ts_data_fattura = mktime(0,0,0,$mese,$giorno,$anno);
			}
		else $ts_data_fattura = strtotime ("now");
		// ricavo giorno, mese, anno
		$giorno = strftime("%d", $ts_data_fattura);
		$mese = strftime("%m", $ts_data_fattura);
		$anno = strftime("%Y", $ts_data_fattura);
		// print $giorno ."-".$mese."-".$anno  ;
		// print strftime ($form['Data_Ordine']);


	
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


<p></p>
<div align="center">
<font class="FacetFormHeaderFont">Nuova Nota di Credito </font>
</div>

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
    <td class="FacetFieldCaptionTD">Fattura da Stornare</td>&nbsp;</td>
    <td class="FacetDataTD">
	  <SELECT NAME="form[ID_Fattura]">
<?		
		while ($a_row = dbms_fetch_array($rs_fatture))
			{
			$selected = "";
		   	if($a_row["ID_Fattura"] == $form["ID_Fattura"])
				$selected = "selected"; 
				
			print "\t\t <option value=\"".$a_row["ID_Fattura"]."\" $selected >".$a_row["Prog_Fattura_Annuo"]."/". strftime("%Y", strtotime($a_row['Data_Fattura']))."</option>\n";
			}
		print "\t </select>\n";

?>

    </td>
</tr>
<tr>
    <td class="FacetFieldCaptionTD">Data Nota di Credito</td>&nbsp;</td>
  <td class="FacetDataTD">
  <SELECT NAME="giorno">
  <?php 
	// imposto come selezionato il giorno gia inserito se esiste
	if (isset($giorno))
	print "<option value=\"".$giorno."\" selected>".$giorno."</option>\n";
	else // altrimenti selezionato oggi
	print "<option value=\"".$giorno."\" selected>".$giorno."</option>\n";
 ?>	  
 <OPTION value=""></OPTION>
 <OPTION value="01">01</OPTION>
 <OPTION value="02">02</OPTION>
 <OPTION value="03">03</OPTION>
 <OPTION value="04">04</OPTION>
 <OPTION value="05">05</OPTION>
 <OPTION value="06">06</OPTION>
 <OPTION value="07">07</OPTION>
 <OPTION value="08">08</OPTION>
 <OPTION value="09">09</OPTION>
 <OPTION value="10">10</OPTION>
 <OPTION value="11">11</OPTION>
 <OPTION value="12">12</OPTION>
 <OPTION value="13">13</OPTION>
 <OPTION value="14">14</OPTION>
 <OPTION value="15">15</OPTION>
 <OPTION value="16">16</OPTION>
 <OPTION value="17">17</OPTION>
 <OPTION value="18">18</OPTION>
 <OPTION value="19">19</OPTION>
 <OPTION value="20">20</OPTION>
 <OPTION value="21">21</OPTION>
 <OPTION value="22">22</OPTION>
 <OPTION value="23">23</OPTION>
 <OPTION value="24">24</OPTION>
 <OPTION value="25">25</OPTION>
 <OPTION value="26">26</OPTION>
 <OPTION value="27">27</OPTION>
 <OPTION value="28">28</OPTION>
 <OPTION value="29">29</OPTION>
 <OPTION value="30">30</OPTION>
 <OPTION value="31">31</OPTION>
 </SELECT>

 <SELECT name="mese">
   <?php 
// imposto come selezionato questo mese
// devo prima pero' recuperare il nome del mese
switch ($mese)
	{
	case "01";
		$nome_mese = "Gennaio";
		break;
	case "02";
		$nome_mese = "Febbraio";
		break;	
	case "03";
		$nome_mese = "Marzo";
		break;	
	case "04";
		$nome_mese = "Aprile";
		break;	
	case "05";
		$nome_mese = "Maggio";
		break;	
	case "06";
		$nome_mese = "Giugno";
		break;	
	case "07";
		$nome_mese = "Luglio";
		break;	
	case "08";
		$nome_mese = "Agosto";
		break;	
	case "09";
		$nome_mese = "Settembre";
		break;	
	case "10";
		$nome_mese = "Ottobre";
		break;	
	case "11";
		$nome_mese = "Novembre";
		break;	
	case "12";
		$nome_mese = "Dicembre";
		break;	
	}	
	
print "<option value=\"".$mese."\" selected>".$nome_mese."</option>\n";
 ?>	  
 <OPTION value=""></OPTION>
 <OPTION value="01">Gennaio</OPTION>
 <OPTION value="02">Febbraio</OPTION>
 <OPTION value="03">Marzo</OPTION>
 <OPTION value="04">Aprile</OPTION>
 <OPTION value="05">Maggio</OPTION>
 <OPTION value="06">Giugno</OPTION>
 <OPTION value="07">Luglio</OPTION>
 <OPTION value="08">Agosto</OPTION>
 <OPTION value="09">Settembre</OPTION>
 <OPTION value="10">Ottobre</OPTION>
 <OPTION value="11">Novembre</OPTION>
 <OPTION value="12">Dicembre</OPTION>
 </SELECT>&nbsp;
 
 <SELECT name="anno">
<?php 
// imposto come selezionato l'anno attuale
print "\t<option value=\"".$anno."\" selected>".$anno."</option>\n";
?>	  

   <OPTION value=""></OPTION> 
   <OPTION value="2002">2002</OPTION>
   <OPTION value="2003" selected>2003</OPTION> 
 </SELECT>&nbsp;
 </td>
</tr>
<tr>
	<td class="FacetFieldCaptionTD">Imponibile&nbsp;</td><td class="FacetDataTD"><input type="text" name=form[Imponibile] value="<? print $form['Imponibile']?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
</tr>
  <tr>

    <td class="FacetFieldCaptionTD">IVA * &nbsp;</td>
	 <td class="FacetDataTD">
 <? 
 // inserisco il select box per il campo iva
  $select_iva = new select_codice_iva();
  $select_iva -> addSelectName("form[Iva]");
  $select_iva -> addSelected("20"); // iva al 20 preselezionata
  $select_iva -> output();
 ?>
 </td>
  </tr>
<tr>
	<td class="FacetFieldCaptionTD">Descrizione &nbsp;</td><td class="FacetDataTD"><textarea name="form[Descrizione]" cols="40" rows="5" class="FacetInput"><? print $form['Descrizione'] ?></textarea></td>
</tr>
<tr>
	<td class="FacetFieldCaptionTD">Note &nbsp;</td><td class="FacetDataTD"><textarea name="form[Note]" cols="40" rows="5" class="FacetInput"><? print $form['Note'] ?></textarea></td>
</tr>
<tr> 
 <td colspan="2" align="right" nowrap class="FacetFooterTD">
      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Anteprima Nota di Credito" class="FacetButton"><!-- END Button Insert -->

    </td>
</form>

 </table>

</body>
</html>

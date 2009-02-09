<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

if (isset ($actionflag))

	{
	// $form['Prezzo'] = formatNumber($form['Prezzo']);
	// exit;
	//controllo sull'esistenza dei campi obbligatori

	if (
		empty($form["Tipo_Pagamento"] ) ||

		empty($form["ID_Cliente"]) ||
		
		empty($form["Oggetto"]) ||

		empty($form["Prezzo"])
		)
		$message .= "I campi Oggetto, Cliente, Tipo Pagamento e Importo sono obbligatori ! <br>";
	
	 if (
		empty($giorno) ||
		empty($mese)   ||
		empty($anno)
		)
		$message .= "Devi inserire giorno, mese e anno ! <br>";


	//controllo che l'importo sia stato inserito correttamente
	//  if (!is_numeric ($form["Prezzo"]))
	//	$message .= "L'importo deve essere inserito senza virgole e con il punto tra gli euro e i centesimi, es. 1250.95 <br>";
	
	// controllo che la data sia corretta	
	  if (!checkdate( $mese, $giorno, $anno))
		$message .= "La data $giorno-$mese-$anno non &egrave; corretta! <br>";	



	if ($message == "")

		{
		// se tutto ok aggiorno l'ordine ma prima faccio qualche operazione sulle variabili
		// formatto l'importo
		// $form["Prezzo"] = formatEuro($form["Prezzo"]);
		
		// formatto le date
		$form["Data_Ordine"] = strftime ("$anno-$mese-$giorno");
		$form["Data_Scadenza"] = "0000-00-00";
		
		// inserisco il progressivo fattura
		$form['Progressivo_Fattura'] = "";
		
		// recupero i dati del cliente
		$form = array_merge ($form, getRow($customers_table, "ID_Cliente", $form['ID_Cliente']));
		
					
		$result = orderUpdate($ID_Ordine, $form['ID_Cliente'], $form['Protocollo'], $form['Oggetto'], $form['Progressivo_Fattura'], $form['Data_Ordine'], $form['Data_Scadenza'], $form['Tipo_Pagamento'], $form['Prezzo'], $form['Iva'], $form['Ragione_Sociale'], $form['Cognome'], $form['Nome'], $form['PI'], $form['CF'], $form['Indirizzo'], $form['Citta'], $form['CAP'], $form['Provincia'], $form['Telefono'], $form['Fax'], $form['E_mail'], $form['Status']);
		
		if (! $result )

			die (" Errore di inserimento: ".mysql_error());

		else 
			{

			$message .= "Ordine Aggiornato con successo";	

			}
		}

	}

if (! isset($actionflag))

		{

		// recupero i dati dell'ordine dal db
		
		$form = getRow($orders_table, "ID_Ordine", $ID_Ordine);
		
		// faccio qualche operazione sulla data
		// converto la data in Unix timestamp
		$ts_Data_Ordine = strtotime ($form['Data_Ordine']);
		
		// ricavo giorno, mese, anno
		$giorno = strftime("%d", $ts_Data_Ordine);
		$mese = strftime("%m", $ts_Data_Ordine);
		$anno = strftime("%Y", $ts_Data_Ordine);
		// print $giorno ."-".$mese."-".$anno  ;
		// print strftime ($form['Data_Ordine']);
		
		}

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Modifica Ordine</title>



	<link rel="stylesheet" type="text/css" href="Themes/Facet/Style.css">

</head>



<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 

include("Header.php"); 

?>

<form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">

<!-- flag di invio del modulo -->

<input type="Hidden" name="actionflag" value="upd_ordine">

<input type="Hidden" name="ID_Ordine" value="<?print $ID_Ordine;?>">
<input type="Hidden" name="form[Status]" value="<? print $form['Status'] ?>">
<div align="center"><font class="FacetFormHeaderFont">Aggiornamento Ordine</font></div>

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

    <td class="FacetFieldCaptionTD">Protocollo Cliente &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Protocollo]" value="<?php print $form["Protocollo"] ?>" maxlength="30" size="20" class="FacetInput">&nbsp;</td>

  </tr>

    <tr>

    <td class="FacetFieldCaptionTD">Oggetto * &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Oggetto]" value="<?php print $form["Oggetto"] ?>" maxlength="100" size="30" class="FacetInput">&nbsp;</td>

  </tr>
  
  <tr>

    <td class="FacetFieldCaptionTD">Cliente * &nbsp;</td>

    <td class="FacetDataTD">		
		<? 
		 // inserisco il select box per i clienti
		   $cliente = new selectCliente("form[ID_Cliente]");
		   $cliente -> addSelected($form['ID_Cliente']); 
		   $cliente-> output();
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

    <td class="FacetFieldCaptionTD">Importo * &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Prezzo]" value="<?php print $form["Prezzo"] ?>" maxlength="20" size="10" class="FacetInput">&nbsp;</td>

  </tr>
    <tr>

    <td class="FacetFieldCaptionTD">IVA * &nbsp;</td>
	 <td class="FacetDataTD">
 <? 
 // inserisco il select box per il campo iva
  $select_iva = new select_codice_iva();
  $select_iva -> addSelectName("form[Iva]");
  $select_iva -> addSelected($form["Iva"]);
  $select_iva -> output();
 ?>
 </td>
  </tr>
  
<tr>
    <td class="FacetFieldCaptionTD">Data Ordine</td>&nbsp;</td>
  <td class="FacetDataTD">
  <SELECT NAME="giorno">
<?php 
// imposto come selezionato il giorno che e' nel database
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
// imposto come selezionato il mese che e' nel database
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
// imposto come selezionato l'anno che e' nel database
print "<option value=\"".$anno."\" selected>".$anno."</option>\n";
 ?>	  
    <OPTION value=""></OPTION>
   <OPTION value="2002">2002</OPTION>
   <OPTION value="2003" selected>2003</OPTION> 
    </SELECT>&nbsp;
 </td>
</tr>
 <td colspan="2" align="right" nowrap class="FacetFooterTD">

      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Update" class="FacetButton"><!-- END Button Insert -->



    </td>

</table>

</form>




</body>

</html>


<?

require_once("dblib.inc");

require_once("clublib.inc");

checkAdmin();

$message = "";

if (!isset($session['ID_Cliente']))
	{ // se per qualsiasi ragione ho perso l'ID_Cliente lo rimando sull'elenco fatture
	header("Location: Admin_Fatture.php");
	exit;
	}

if (isset($actionflag) && ( ($actionflag == "Insert") || ($actionflag == "Stampa" ) ) ) 
	{
	// recupero i dati del cliente
	$cliente = getRow($customers_table, "ID_Cliente", $session['ID_Cliente']);
	
	// gli ordini inseriti in fattura
	$rs_ordini_fattura = dynQuery ('*', $orders_table, "ID_Cliente = $session[ID_Cliente] and Status = 'INSERITO'" );
	
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

	// ricavo di nuovo il progressivo fattura annuo -- qualcuno potrebbe aver inserito una fattura nel frattempo
	$anno_riferimento = strftime("%Y");
	$rs_ultima_fattura = dynQuery("*", $invoices_table, "Data_Fattura like '%$anno_riferimento%'" , "ID_Fattura Desc" );
	$ultima_fattura = dbms_fetch_array($rs_ultima_fattura);
	
  	// ricavo il progressivo annuo, ma se e' la prima fattura dell'anno, resetto il contatore
	if ($ultima_fattura)
		$form['Prog_Fattura_Annuo'] = $ultima_fattura['Prog_Fattura_Annuo'] + 1;
	else $form['Prog_Fattura_Annuo'] = 1;
		
	
	// formatto le date
	$form['Data_Fattura'] = strftime("%Y-%m-%d", $session['ts_data_fattura']);
	$form['Scadenza'] = strftime("%Y-%m-%d", $session['ts_data_scadenza']);
 	
	// inserisco i dati nella tabella fatture, aggiorno gli ordini con l'ID_Fattura e lo Status
	invoiceInsert($form['Prog_Fattura_Annuo'], $cliente['ID_Cliente'], $session['ID_Banca'], $form['Data_Fattura'], $cliente['Ragione_Sociale'], $cliente['PI'], $cliente['Indirizzo'], $cliente['Citta'], $cliente['CAP'], $cliente['Provincia'], $form['Totale'], $session['Tipo_Pagamento'], $form['Scadenza']);
	
	// ricavo l'ID_Fattura appena inserito
	$ID_Fattura = mysql_insert_id();
	
	// ripristino l'array degli ordini per l'update
	$rs_ordini_fattura = dynQuery ('*', $orders_table, "ID_Cliente = $session[ID_Cliente] and Status = 'INSERITO'" );
		while ($a_row = dbms_fetch_array($rs_ordini_fattura))
		{
		orderUpdate($a_row['ID_Ordine'], $session['ID_Cliente'], $a_row['Protocollo'], $a_row['Oggetto'], $ID_Fattura, $a_row['Data_Ordine'], $a_row['Data_Scadenza'], $a_row['Tipo_Pagamento'], $a_row['Prezzo'], $a_row['Iva'], $a_row['Ragione_Sociale'], $a_row['Cognome'], $a_row['Nome'], $a_row['PI'], $a_row['CF'], $a_row['Indirizzo'], $a_row['Citta'], $a_row['CAP'], $a_row['Provincia'], $a_row['Telefono'], $a_row['Fax'], $a_row['E_mail'], 'FATTURATO');
		}
	// scarico le variabili di sessione per la fattura
		unset($session['ID_Cliente']);
		unset($session['Tipo_Pagamento']);
		unset($session['ts_data_fattura']);
		unset($session['ts_data_scadenza']);
		unset($session['Note']);
		
	// se e' insert lo rimando all'elenco fatture	
	if ($actionflag == "Insert")
		{
		header("Location: Admin_Fatture.php");
		exit;
		}
	// altrimenti lo invio al file stampabile	
	if ($actionflag == "Stampa")
		{
		header("Location: Admin_Stampa_Fattura.php?ID_Fattura=$ID_Fattura");
		exit;
		}
	}

// terzo caso: Annulla tutto e va ar cinema

if (isset($actionflag) && ($actionflag == "Annulla"))
	{
	// scarico le variabili di sessione per la fattura
		unset($session['ID_Cliente']);
		unset($session['Tipo_Pagamento']);
		unset($session['ts_data_fattura']);
		unset($session['ts_data_scadenza']);
		unset($session['Note']);
	
	// torno a bomba
		header("Location: Admin_Fatture.php");
		exit;
	}
	
	
if (!isset($actionflag))
	{
	// recupero i dati della ditta
	$azienda = getRow($config_table, "ID_Azienda", 1);
	
	// recupero i dati del cliente
	$cliente = getRow($customers_table, "ID_Cliente", $session['ID_Cliente']);
	
	// recupero i dati della banca
	$banca = getRow($bank_table, "ID_Banca", $session['ID_Banca']);
	
	// gli ordini inseriti in fattura
	$rs_ordini_fattura = dynQuery ('*', $orders_table, "ID_Cliente = $session[ID_Cliente] and Status = 'INSERITO'" );
	
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
	// reset($a_row);
	$rs_ordini_fattura = dynQuery ('*', $orders_table, "ID_Cliente = $session[ID_Cliente] and Status = 'INSERITO'" );
	
	// faccio qualche operazione sulle date
	$data_fattura = ucwords(strftime("%d %B %Y", $session['ts_data_fattura']));
	$data_scadenza = ucwords(strftime("%d %B %Y", $session['ts_data_scadenza']));
	
	// ricavo il progressivo fattura -- e' solo temporaneo, il definitivo verra' inserito al momento
	// dell'inserimento della fattura per gestire le concorrenze
	$anno_riferimento = strftime("%Y");
	$rs_ultima_fattura = dynQuery("*", $invoices_table, "Data_Fattura like '%$anno_riferimento%'" , "ID_Fattura Desc" );
	$ultima_fattura = dbms_fetch_array($rs_ultima_fattura);
	
	$form['Prog_Fattura_Annuo'] = $ultima_fattura['Prog_Fattura_Annuo'] + 1;
	
	
	}	
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Fattura N.
	<? print  $form['Prog_Fattura_Annuo'] ."/". strftime("%Y"); ?>
	</title>
<STYLE>
.main {font-family : Arial; font-size : 12pt}
.info { font-family : Arial; font-style : italic; font-size : xx-small; background-color : #FFFFFF;}
</STYLE>

</head>



<body>

<!-- inizio intestazione -->

<table width="100%">

<tr>


			<td align="left" valign="middle" width="60%" >
			<? if( file_exists ( "$image_dir/logo.jpg" ))
				{
						print "<img src=\"$image_dir/logo.jpg\" border=0>";
				}
				else
				{	
				print "<h1>".$azienda['Ragione_Sociale']."</h1>";
				}
			?>	
			</td>
			
			<td  width="5%"></td>
			
			<td class="info">
			<?  
			
			// riepilogo dati aziendali che possono essere messi anche nel footer
			
			echo $azienda['Indirizzo']."<BR>";

        		echo $azienda['CAP']." ". $azienda['Citta']." ". $azienda['Provincia'] ."<BR>";

				echo "Telefono ".$azienda['Telefono'] ." ";
				
				if (!($azienda['Telefono2'] == ""))
					{
					 echo "  ".$azienda['Telefono2'] ." ";
					}
				if (!($azienda['Telefono3'] == ""))
					{
					 echo "  ".$azienda['Telefono3'] ." ";
					}
				if (!($azienda['Cell'] == ""))
					{
					 echo "Mobile ".$azienda['Cell'] ."<br>";
					}
				if (!($azienda['Fax'] == ""))
					{
					 echo "Fax ".$azienda['Fax'] ."<br>";
					}
				if (!($azienda['E_mail'] == ""))
					{
					 echo "Email ".$azienda['E_mail'] ."<br>";
					}
				if (!($azienda['Web'] == ""))
					{
					 echo "Web ".$azienda['Web'] ."<br>";
					}
				if (!($azienda['PI'] == ""))
					{
					 echo "P. Iva ".$azienda['PI'] ."<br>";
					}
				if (!($azienda['CF'] == ""))
					{
					 echo "Cod. Fisc. ".$azienda['CF'] ."<br>";
					}

					
			?>
				


		</td>

		</tr>


	</table>
	<br><p><br></p>
	
	<table width="100%" cellpadding="10">
	<tr align="left">
	<td width="70%"></td>
	<td >
				Spett.le <br><b><?print $cliente['Ragione_Sociale']?>

			<br><? Print $cliente["Indirizzo"] ?>

			<br><? Print $cliente["CAP"] ?> <? Print $cliente["Citta"] ?> <? Print $cliente["Provincia"] ?>

			<br>PI/CF 
			<? 
			if ($cliente['PI'] == "")
				{
				print $cliente['CF'];
				}
			else 
				{
				print $cliente['PI'];
				}
			?>
			</b>
	</td>
	</tr>
	</table>


	<table witdth="100%" height="5%">
		<tr>
			<td>
			</td>
		</tr>
	</table>

	<table with="100%"  border="0">
		<tr>
			<td width="20%"></td>
			<td >

			<p>
			<? print $azienda['Citta'].", ". $data_fattura  ?> </p>

			</td>
		</tr>
	</table>

	

</table>

<!-- fine intestazione -->

<!-- inizio corpo fattura -->

<table width="90%" align="center">

	<tr>

		<td>

		<u><b>FATTURA N. <? print $form['Prog_Fattura_Annuo'] ."/". strftime("%Y"); ?></b></u>

		</td>

	</tr>

</table>

<table width="90%" align="center" border="0">

 <tr>
   <th class="FacetFieldCaptionTD"># Ord.</th>
   <th class="FacetFieldCaptionTD">Data Ordine</th>
   <th class="FacetFieldCaptionTD">Protocollo</th>
   <th class="FacetFieldCaptionTD">Oggetto</th>
   <th class="FacetFieldCaptionTD">Imponibile</th>
   <th class="FacetFieldCaptionTD">A. Iva</th>
 </tr>
		

		<?php

	// visualizzo l'elenco degli ordini inseriti in fattura
		while ($a_row = dbms_fetch_array($rs_ordini_fattura))
			{
			// per il momento la gestione degli allegati e' rimandata
			$a_row["Allegato"] = "";
			
			print "<tr>";
		
			print "<td align=\"right\" class=\"FacetDataTD\">".$a_row["ID_Ordine"]." &nbsp;</td>";
			print "<td align=\"right\" class=\"FacetDataTD\"><font size=\"-1\">".$a_row["Data_Ordine"]." </font>&nbsp;</td><td class=\"FacetDataTD\">".$a_row["Protocollo"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Oggetto"]." &nbsp;</td>";
			print "<td align=\"right\" class=\"FacetDataTD\">".$a_row["Prezzo"]." &nbsp;</td>";
			print "<td align=\"right\" class=\"FacetDataTD\">".$a_row["Iva"]." &nbsp;</td>";
			print "</tr>";
			}   

	
		?>

</table>

<br><br>

<table cellpadding="2" cellspacing="5" border="1" align="right">
 <tr>
	<td>Totale Imponibile</td><td><? print $form['Imponibile']?></td>
 </tr>		
 <tr>
	<td>Totale Imposta</td><td><? print $form['Iva']?></td>
 </tr>		
 <tr>
	<td>Totale Fattura</td><td><? print $form['Totale']?></td>
 </tr>		
</table>
<!-- fine corpo fattura -->
<br><br><br><br><br><br>
<table cellpadding="10" width="100%">
	<tr>
		<td>Scadenza Fattura <? print ucwords($data_scadenza) ?></td>
	</tr>
	<tr>
		<td>Pagamento: <? print $session['Tipo_Pagamento'] ?></td>
	</tr>
	
</table>
<br>
<table cellpadding="10">

	<tr>

		<td><font size="-1"><b>

		Banca d'appoggio:

		<br><? print $banca['Banca'] ?>

		<br>Conto Corrente N. <? print $banca['Conto'] ?>

	  <br>Instestato a <? print $banca['Titolare'] ?>

	  <br>Abi <? print $banca['Abi'] ?>

	  <br>Cab <? print $banca['Cab'] ?></b> </font>

		

		</td>

	</tr>

	<tr>

		<td>

		 <?
		 if (!$session['Note'] == "")
		 	{
		 	print "Note: ". $session["Note"];
		 	}
		 ?>

		</td>

	</tr>

</table>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center" width = "90%">

<form method="post" action="<? print $PHP_SELF ?>">
<!-- flag di invio del modulo -->
<input type="Hidden" name="actionflag" value="Insert">
<input type="Hidden" name="ID_Cliente" value="<? print $session['ID_Cliente'] ?>">
<input type="Hidden" name="form[Imponibile]" value="<? print $form['Imponibile'] ?>">
<input type="Hidden" name="form[Iva]" value="<? print $form['Iva'] ?>">
<input type="Hidden" name="form[Totale]" value="<? print $form['Totale'] ?>">

<input type="Hidden" name="form[PI]" value="$form[PI]">
<input type="Hidden" name="form[Ragione_Sociale]" value="<? print $form['Ragione_Sociale']?>">

<tr> 
 <td colspan="2" align="right" nowrap class="FacetFooterTD">
      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Salva Fattura" class="FacetButton"><!-- END Button Insert -->
 </td>
 </form>
 </tr> 

 <tr> 
 <td colspan="2" align="right" nowrap class="FacetFooterTD">
	<form action="Admin_Anteprima_Fattura.php" method="POST"> 
		<input type="Hidden" name="actionflag" value="Stampa">
		<input name="Insert" type="submit" value="Salva e Stampa" class="FacetButton">
	</form>
 </td>
 </tr>
 <tr>
 <td colspan="2" align="right" nowrap class="FacetFooterTD">
	<form action="Admin_Anteprima_Fattura.php" method="POST"> 
		<input type="Hidden" name="actionflag" value="Annulla">
	    <input name="Insert" type="submit" value="Annulla" class="FacetButton">
	</form>
 </td>

 </tr> 

 </table>
  </form>






</body>

</html>


<?

require_once("dblib.inc");

require_once("clublib.inc");

checkAdmin();

$message = "";

$border = "0";

if (!isset($ID_Fattura) || $ID_Fattura == "")
	{ // se non e' settato l'ID_Fattura torna a casa
	header("Location: Admin_Fatture.php");
	exit;
	}

	// recupero i dati della fattura 
	$fattura = getRow($invoices_table, "ID_Fattura", $ID_Fattura);
	if (!$fattura)
	{ // se l'ID_Fattura non esiste torna a casa
	header("Location: Admin_Fatture.php");
	exit;
	}
	
	
	// recupero i dati aziendali
	$azienda = getRow($config_table, "ID_Azienda", 1);
		
	
	// recupero la banca d'appoggio, per il momento una sola banca
	$banca = getRow($bank_table, "ID_Banca", $fattura['ID_Banca']);
	
	// gli ordini inseriti in fattura
	$rs_ordini_fattura = dynQuery ('*', $orders_table, "ID_Fattura = '$fattura[ID_Fattura]'" );
	
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
	$form['Imponibile'] = formatEuro($form['Imponibile']);	
	$form['Iva'] = formatEuro($form['Iva']);	
	$form['Totale'] = formatEuro($form['Totale']);	
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Fattura N.
	<? print  $fattura['Prog_Fattura_Annuo'] ."/". strftime("%Y", strtotime($fattura['Data_Fattura'])); ?>
	</title>
<STYLE>
.main {font-family : Arial; font-size : 12pt}
.info { font-family : Arial; font-style : italic; font-size : xx-small; background-color : #FFFFFF;}
</STYLE>

</head>



<body>

<!-- inizio intestazione -->


	<table width="100%" border=<? echo $border?>  cellpadding="1" cellspacing="4">

		<tr >

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

<table witdth="100%" height="5%">
	<tr>
		<td>
		</td>
	</tr>
</table>

	<table  width="100%"border=<? echo $border?> cellpadding="10" cellspacing="2">

		<tr align="left">
			<td width="70%"></td>
			<td >

			Spett.le <br><b><?print $fattura['Ragione_Sociale']?>

			<br><? Print $fattura['Indirizzo'] ?>

			<br><? Print $fattura['CAP'] ?> <? Print $fattura['Citta'] ?> <? Print $fattura['Provincia'] ?>

			<br>PI/CF 
			<? print $fattura['PI']	?>
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


<!-- fine intestazione -->

<!-- inizio corpo fattura -->

<table width="100%" align="center" border=<? echo $border?>>
	<tr>			
		<td width="5%"></td>

		<td>		<? print $azienda['Citta'].", ". formatDate($fattura['Data_Fattura']) ?> 
	</td>
</tr>
<tr>
<tr></tr>
<tr></tr>
	<tr>
		<td width="5%"></td>
		<td>

		<u><b>FATTURA N. <? print $fattura['Prog_Fattura_Annuo'] ."/". strftime("%Y", strtotime($fattura['Data_Fattura'])); ?></b></u>

		</td>

	</tr>

</table>

<table witdth="100%" height="5%">
	<tr>
		<td>
		</td>
	</tr>
</table>


<table width="100%" cellpadding="2" align="center" border=<? echo $border?>>

 <tr>
   <th class="FacetFieldCaptionTD">Data Ordine</th>
   <th class="FacetFieldCaptionTD">Protocollo</th>
   <th class="FacetFieldCaptionTD">Oggetto</th>
   <th class="FacetFieldCaptionTD">Imponibile</th>
   <th class="FacetFieldCaptionTD">Iva</th>
 </tr>
		

		<?php
	// ripristino l'array degli ordini inseriti in fattura
	$rs_ordini_fattura = dynQuery ('*', $orders_table, "ID_Fattura = '$fattura[ID_Fattura]'" );

	// visualizzo l'elenco degli ordini inseriti in fattura
		while ($a_row = dbms_fetch_array($rs_ordini_fattura))
			{
			// per il momento la gestione degli allegati e' rimandata
			$a_row["Allegato"] = "";
			
			print "<tr>";
		
			print "<td align=\"center\" class=\"FacetDataTD\">".formatDate($a_row["Data_Ordine"])." &nbsp;</td>";
			print "<td align=\"center\"  class=\"FacetDataTD\">".$a_row["Protocollo"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Oggetto"]." &nbsp;</td>";
			print "<td align=\"center\" class=\"FacetDataTD\">&#128; ".formatEuro($a_row["Prezzo"])." &nbsp;</td>";
			print "<td align=\"center\" class=\"FacetDataTD\">".$a_row["Iva"]."% &nbsp;</td>";
			print "</tr>";
			}   

	
		?>

</table>

<br><br>

<table cellpadding="2" cellspacing="5" border=<? echo $border?> align="right">
 <tr>
	<td>Totale Imponibile</td><td align="right">&#128; <? print $form['Imponibile']?></td>
 </tr>		
 <tr>
	<td >Totale IVA</td><td align="right">&#128; <? print $form['Iva']?></td>
 </tr>		
 <tr>
	<td>Totale Fattura</td><td align="right">&#128; <? print formatEuro($fattura['Totale'])?></td>
 </tr>		
</table>
<!-- fine corpo fattura -->
<br><br><br><br><br><br>
<table cellpadding="10" width="100%" border=<? echo $border?>>
	<tr>
		<td>Scadenza Fattura: <? print formatDate($fattura['Scadenza']) ?></td>
	</tr>
	<tr>
		<td>Pagamento: <? print $fattura['Tipo_Pagamento'] ?></td>
	</tr>
	
</table>
<br>
<table cellpadding="10" border=<? echo $border?>>

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
		 if (!$fattura['Note'] == "")
		 	{
		 	print "Note: ". $fattura["Note"];
		 	}
		 ?>

		</td>

	</tr>

</table>




</body>

</html>


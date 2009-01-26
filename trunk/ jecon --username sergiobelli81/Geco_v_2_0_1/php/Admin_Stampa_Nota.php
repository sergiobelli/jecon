<?

require_once("dblib.inc");

require_once("clublib.inc");

checkAdmin();

$message = "";

$border = "0";

if (!isset($ID_Nota) || $ID_Nota == "")
	{ // se non e' settato l'ID_Nota torna a casa
	header("Location: Admin_Note.php");
	exit;
	}

	// recupero i dati della nota 
	$nota = getRow($credit_notes_table, "ID_Nota", $ID_Nota);
	if (!$nota)
	{ // se l'ID_Nota non esiste torna a casa
	header("Location: Admin_Note.php");
	exit;
	}
	
	
	// recupero i dati aziendali
	$azienda = getRow($config_table, "ID_Azienda", 1);
		
	$form['Imponibile'] = $nota['Totale'] / (1 + $nota['Iva']/100);
	$form['Iva'] = formatEuro($nota['Iva']/100 * $form['Imponibile']);	
	$form['Totale'] = formatEuro($nota['Totale']);	
	$form['Imponibile'] = formatEuro($form['Imponibile']);	
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Nota di Credito N.
	<? print  $fattura['Prog_Nota_Annuo'] ."/". strftime("%Y", strtotime($fattura['Data_Nota'])); ?>
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

			Spett.le <br><b><?print $nota['Ragione_Sociale']?>

			<br><? Print $nota['Indirizzo'] ?>

			<br><? Print $nota['CAP'] ?> <? Print $nota['Citta'] ?> <? Print $nota['Provincia'] ?>

			<br>PI/CF 
			<? print $nota['PI']	?>
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

	<td>		<? print $azienda['Citta'].", ". formatDate($nota['Data_Nota']) ?> </tr></td>
</tr>
<tr>
<tr></tr>
<tr></tr>
	<tr>
		<td width="5%"></td>
		<td>

		<u><b>Nota di Credito  N. <? print $nota['Prog_Nota_Annuo'] ."/". strftime("%Y", strtotime($nota['Data_Nota'])); ?></b></u>

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
  <td colspan="2"><?print $nota['Descrizione'] ?></td>
 </tr>
		

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
	<td>Totale </td><td align="right">&#128; <? print formatEuro($nota['Totale'])?></td>
 </tr>		
</table>
<!-- fine corpo fattura -->
<br><br><br><br><br><br>
<table cellpadding="10" border=<? echo $border?>>

	<tr>

		<td>

		 <?
		 if (!$nota['Note'] == "")
		 	{
		 	print "Note: ". $nota["Note"];
		 	}
		 ?>

		</td>

	</tr>

</table>




</body>

</html>


<?

require_once("dblib.inc");

require_once("clublib.inc");

checkAdmin();

$message = "";


if (!isset($session['ID_Cliente']))
	{ // se per qualsiasi ragione ho perso l'ID_Cliente lo rimando sull'elenco fatture
	// header("Location: Admin_Fatture.php");
	exit;
	}

if (isset($actionflag) && ( ($actionflag == "Insert") || ($actionflag == "Stampa" ) ) ) 
	{
	// recupero i dati del cliente
	$cliente = getRow($customers_table, "ID_Cliente", $session['ID_Cliente']);
	
	// calcolo l'imponibile, iva e totale
	$form['Imponibile'] = $form['Imponibile'];
	$form['Iva'] = $form['Iva'];
	$form['Totale'] = $form['Totale'];
	
	$anno_riferimento = strftime("%Y");
	// ricavo di nuovo il progressivo nota -- esiste una probabilita' "non nulla" che qualcuno abbia inserito una nota nel frattempo
	$rs_ultima_nota = dynQuery("*", $credit_notes_table, "Data_Nota like '%$anno_riferimento%'", "ID_Nota Desc" );
	$ultima_nota = dbms_fetch_array($rs_ultima_nota);
	
	// ricavo il progressivo annuo, ma se e' la prima nota dell'anno, resetto il contatore
	if ($ultima_nota)
			$form['Prog_Nota_Annuo'] = $ultima_nota['Prog_Nota_Annuo'] + 1;
	else $form['Prog_Nota_Annuo'] = 1;

	
	// formatto le date
	$form['Data_Nota'] = strftime("%Y-%m-%d", $session['ts_data_nota']);
	
	// inserisco i dati nella tabella note di credito
	$result = noteInsert($form['Prog_Nota_Annuo'], $session['ID_Fattura'], $cliente['ID_Cliente'], $cliente['Ragione_Sociale'], $cliente['PI'], $cliente['Indirizzo'], $cliente['Citta'], $cliente['CAP'], $cliente['Provincia'], $form['Data_Nota'], $session['Descrizione'], $session['Iva'], $form['Totale'], $session['Note'] );
	if (!$result)
		{
		print $result;
		exit;
		}
	// scarico le variabili di sessione per la nota
		unset($session['ID_Cliente']);
		unset($session['Tipo_Pagamento']);
		unset($session['ts_data_fattura']);
		unset($session['ts_data_scadenza']);
		unset($session['Note']);
		
	// se e' insert lo rimando all'elenco fatture	
	if ($actionflag == "Insert")
		{
		header("Location: Admin_Note.php");
		exit;
		}
	// altrimenti lo invio al file stampabile	
	if ($actionflag == "Stampa")
		{
		header("Location: Admin_Stampa_Nota.php?ID_Nota=$ID_Nota");
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
		header("Location: Admin_Note.php");
		exit;
	}
	
	
if (!isset($actionflag))
	{
	// recupero i dati della ditta
	$azienda = getRow($config_table, "ID_Azienda", 1);
	
	// recupero i dati del cliente
	$cliente = getRow($customers_table, "ID_Cliente", $session['ID_Cliente']);
	
	// gli ordini inseriti in fattura
	// $rs_ordini_fattura = dynQuery ('*', $orders_table, "ID_Cliente = $session[ID_Cliente] and Status = 'INSERITO'" );
	
	// calcolo l'imponibile, iva e totale
	// okkio: session[iva] ha l'aliquota, mentre form[iva] ha l'imposta totale
	$form['Imponibile'] = $session['Imponibile'];
	$form['Iva'] = $form['Imponibile'] * $session['Iva'] / 100;
	$form['Totale'] = $form['Imponibile'] + $form['Iva'];
	
	// ripristino l'array
	
	// faccio qualche operazione sulle date
	$data_nota = strftime("%d %B %Y", $session['ts_data_nota']);
	// $data_scadenza = strftime("%d %B %Y", $session['ts_data_scadenza']);
	
	// ricavo di nuovo il progressivo nota -- esiste una probabilita' "non nulla" che qualcuno abbia inserito una nota nel frattempo
	$anno_riferimento = strftime("%Y");
	$rs_ultima_nota = dynQuery("*", $credit_notes_table, "Data_Nota like '%$anno_riferimento%'", "ID_Nota Desc" );
	$ultima_nota = dbms_fetch_array($rs_ultima_nota);
	
	// ricavo il progressivo annuo, ma se e' la prima nota dell'anno, resetto il contatore
	if ($ultima_nota)
			$form['Prog_Nota_Annuo'] = $ultima_nota['Prog_Nota_Annuo'] + 1;
	else $form['Prog_Nota_Annuo'] = 1;
	
	
	}	
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Nota di Credito N.
	<? print  $form['Prog_Nota_Annuo'] ."/". strftime("%Y"); ?>
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
			<? print $azienda['Citta'].", ". $data_nota  ?> </p>

			</td>
		</tr>
	</table>

	

</table>

<!-- fine intestazione -->

	
<!-- inizio corpo fattura -->

<table width="90%" align="center">

	<tr>

		<td>

		<u><b>NOTA DI CREDITO N. <? print $form['Prog_Nota_Annuo'] ."/". strftime("%Y"); ?></b></u>

		</td>

	</tr>

</table>

<table width="90%" align="center" border="0">

 <tr>
	<td colspan="2"><? print $session['Descrizione']?></td>
 </tr>		
 <tr>

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
<!-- fine corpo nota di credito -->
<br><br><br><br><br><br>

<br>
<table cellpadding="10">

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
<input type="Hidden" name="form[Prog_Nota_Annuo]" value="<? print $form['Prog_Nota_Annuo'] ?>">
<input type="Hidden" name="form[PI]" value="$form[PI]">
<input type="Hidden" name="form[Ragione_Sociale]" value="<? print $form['Ragione_Sociale']?>">

<tr> 
 <td colspan="2" align="right" nowrap class="FacetFooterTD">
      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Salva Nota di Credito" class="FacetButton"><!-- END Button Insert -->
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


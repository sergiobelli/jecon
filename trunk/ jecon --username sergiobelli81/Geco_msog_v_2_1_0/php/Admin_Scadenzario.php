<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";
include ("import_scadenzario.php"); // riallineo la tabella ogni volta che viene consultata
?>

<?
include("Header.php"); 


?>

<p><br></p>
<!-- <p><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Nuovo_Movimento.php">Inserisci Nuovo Movimento</a></font></div> -->

<p><div align="center"><font class="FacetFormHeaderFont">Scadenzario</font></div>

<?
// $recordnav = new recordnav($mov_table, $session['where'], $session['limit'], $session['passo']);
// $recordnav -> output();
?>


<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">
 <tr>
<?
  // creo l'array (header => campi) per l'ordinamento dei record, ma in questo caso l'ordinamento e' sempre per data scadenza
  $headers_movimenti = array  (
			  "Scadenza" => "", 
			  "Cliente/Fornitore" => "", 
			  "Riferimento" => "", 
			  "Tipo Pagamento" => "",
			  "Entrate" => "", 
			  "Uscite" => "",
			  "Saldo <br> Cliente/Fornitore" => ""
			  );
  
  $linkHeaders = new linkHeaders($headers_movimenti);
  $linkHeaders -> output();
?>
   </tr>

<?php
 
// calcolo monte pagamenti per ogni cliente/fornitore e relativo saldo
$rs_saldo = dynQuery("DISTINCT ID_Cliente", $terms_table); // lista degli id_cliente
while ($a_row = dbms_fetch_array($rs_saldo))
	{
	$monte_cliente[$a_row['ID_Cliente']] = monteCliente($a_row['ID_Cliente']);
	$saldo_cliente[$a_row['ID_Cliente']] = saldoCliente($a_row['ID_Cliente']);
	}
	
$rs_saldo = dynQuery("DISTINCT ID_Fornitore", $terms_table); // lista degli id_fornitore
while ($a_row = dbms_fetch_array($rs_saldo))
	{
	$monte_fornitore[$a_row['ID_Fornitore']] = monteFornitore($a_row['ID_Fornitore']);
	$saldo_fornitore[$a_row['ID_Fornitore']] = saldoFornitore($a_row['ID_Fornitore']);
	}

// i record vengono sempre ordinati con la scadenza piu' recente per ultima
$orderby = "Scadenza Desc, ID_Fattura_Vendita Desc, ID_Fattura_Acquisto Desc";

// calcolo il numero totale di record e lo inserisco come $session['passo']
$session['passo'] = recordCount($terms_table);	

// seleziono solo le fatture e le note, non i movimenti
$session['where'] = " ID_Movimento = '' ";

$result = dynQuery ('*', $terms_table, $session['where'], $orderby, $session['limit'], $session['passo']);


while ($a_row = dbms_fetch_array($result))

	{
	// calcolo il totale delle entrate e delle uscite 
	if ( !isset($entrate) )
		$entrate = 0;
	if ( !isset($uscite) )
		$uscite = 0;

	
	
	// resetto la variabile per il link
	$riferimento = "" ;

	
		
	if (!empty($a_row['ID_Fattura_Vendita']) ) // ricavo l'intestazione della fattura vendita
		{
		$documento = getRow($invoices_table, "ID_Fattura", $a_row['ID_Fattura_Vendita']);
		$riferimento = "<a href=\"Admin_Stampa_Fattura.php?ID_Fattura=".$a_row['ID_Fattura_Vendita']."\">Fattura ".$documento['Prog_Fattura_Annuo'] ."/". strftime("%Y", strtotime($documento['Data_Fattura']))."</a> &nbsp;";
		}

	if (!empty($a_row['ID_Nota_Cliente']) ) // ricavo l'intestazione della nota credito
		{
		$documento = getRow($credit_notes_table, "ID_Nota", $a_row['ID_Nota_Cliente']);
		$riferimento = "<a href=\"Admin_Stampa_Nota.php?ID_Nota=".$a_row['ID_Nota_Cliente']."\">Nota Credito ".$documento['Prog_Nota_Annuo'] ."/". strftime("%Y", strtotime($documento['Data_Nota']))."</a> &nbsp;";
		// $doc_link = "<a href=\"admin_stampa_fattura.php?ID_Fattura=".$a_row['ID_Fattura']."\"></a>";
		}
	
	if (!empty($a_row['ID_Fattura_Acquisto']) ) // ricavo l'intestazione della fattura acquisto
		{
		$documento = getRow($spl_invoices_table, "ID_Fattura_Acquisto", $a_row['ID_Fattura_Acquisto']);
		$riferimento = "<a href=\"Admin_Upd_Fattura_Fornitore.php?ID_Fattura_Acquisto=".$a_row['ID_Fattura_Acquisto']."\">Fattura ".$documento['N_Fattura'] ."</a> &nbsp;";
		}
	
	if (!empty($a_row['ID_Nota_Fornitore']) ) // ricavo l'intestazione della nota credito
		{
		$documento = getRow($spl_credit_notes_table, "ID_Nota", $a_row['ID_Nota_Fornitore']);
		$riferimento = "<a href=\"Admin_Upd_Nota_Fornitore.php?ID_Nota=".$a_row['ID_Nota_Fornitore']."\">Nota Credito ".$documento['N_Nota'] ."</a> &nbsp;";
		// $doc_link = "<a href=\"admin_stampa_fattura.php?ID_Fattura=".$a_row['ID_Fattura']."\"></a>";
		}
	
	
	
	// stampo tutte le fatture/note che ancora risultano inevase
	
	if ( ($saldo_cliente[$a_row['ID_Cliente']] > 0) ) 
			{ 

					print "<tr>";
					print "<td class=\"FacetDataTD\">".formatDate($a_row["Scadenza"])."</a> &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".$a_row["Ragione_Sociale"]." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">". $riferimento ." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".$a_row["Tipo_Pagamento"]." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".formatEuro($a_row["Entrate"])." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".formatEuro($a_row["Uscite"])." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".formatEuro($saldo_cliente[$a_row['ID_Cliente']])." &nbsp;</td>";
					print "</tr>";
				$entrate = $entrate + $a_row['Entrate'];
				$uscite = $uscite + $a_row['Uscite'];
	
			}
			
	if ( $saldo_fornitore[$a_row['ID_Fornitore']] < 0  ) 
			{ 
					// print "fornitore ".saldoFornitore($a_row['ID_Fornitore'])." ".$a_row['ID_Fornitore'];
					print "<tr>";
					print "<td class=\"FacetDataTD\">".formatDate($a_row["Scadenza"])."</a> &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".$a_row["Ragione_Sociale"]." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">". $riferimento ." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".$a_row["Tipo_Pagamento"]." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".formatEuro($a_row["Entrate"])." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".formatEuro($a_row["Uscite"])." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".formatEuro($saldo_fornitore[$a_row['ID_Fornitore']])." &nbsp;</td>";
					print "</tr>";
				$entrate = $entrate + $a_row['Entrate'];
				$uscite = $uscite + $a_row['Uscite'];
		
			}

	// ho 2 casi: fattura cliente/nota cliente, fattura fornitore/nota fornitore
	
	// primo caso: fattura/nota cliente	
	// sottraggo l'importo della fattura/nota al monte cliente se il saldo non e' 0.00
	if (!empty($a_row['ID_Cliente']) )		
		{
		if (!($saldo_cliente[$a_row['ID_Cliente']] == "0.00"))
			{
			$saldo_cliente[$a_row['ID_Cliente']] = $saldo_cliente[$a_row['ID_Cliente']] - $a_row['Entrate'] + $a_row['Uscite'];
			}
		}
		
	if (!empty($a_row['ID_Fornitore'])  )		
		{
		// $monte_fornitore[$a_row['ID_Fornitore']] =  $monte_fornitore[$a_row['ID_Fornitore']]  + $a_row['Entrate'] - $a_row['Uscite'];
		$saldo_fornitore[$a_row['ID_Fornitore']] =  $saldo_fornitore[$a_row['ID_Fornitore']]  - $a_row['Entrate'] + $a_row['Uscite'];	
		}

		}   
	
	// stampo i totali entrate e uscite 
	
					print "<tr>";
					print "</tr>";
					print "<tr>";
					print "<td colspan=\"4\" align=\"right\" class=\"FacetDataTD\"> TOTALI  &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".formatEuro($entrate)." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".formatEuro($uscite)." &nbsp;</td>";
					print "<td class=\"FacetDataTD\">".formatEuro($entrate-$uscite)." &nbsp;</td>";
					print "</tr>";	
	
	
   ?>

 </table>







</body>

</html>




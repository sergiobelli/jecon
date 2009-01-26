<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

?>

<?
include("Header.php"); 


?>

<p><br></p>
<p><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Nuovo_Ordine.php">Inserisci Nuovo Ordine</a></font></div>

<p><div align="center"><font class="FacetFormHeaderFont">Ordini Da Clienti</font></div>

<?
$recordnav = new recordnav($orders_table, $session['where'], $session['limit'], $session['passo']);
$recordnav -> output();
?>


<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">
 <tr>
<?
  // creo l'array (header => campi) per l'ordinamento dei record
  $headers_ordini = array  (
			  "N._Ordine" => "ID_Ordine", 
			  "Cliente" => "Ragione_Sociale", 
			  "Data Ordine" => "Data_Ordine", 
			  "Protocollo" => "Protocollo", 
			  "Oggetto" => "Oggetto", 
			  "Totale" => "Prezzo", 
			  "Status" => "Status", 
			  "Allegato" => "", 
			  "Cancella" => ""
			  );
  
  $linkHeaders = new linkHeaders($headers_ordini);
  $linkHeaders -> output();
?>
   </tr>

  <?php


$result = dynQuery ('*', $orders_table, $session['where'], $orderby, $session['limit'], $session['passo']);



while ($a_row = dbms_fetch_array($result))

	{
	// per il momento la gestione degli allegati e' rimandata
	$a_row["Allegato"] = "";
	
	print "<tr>";
	if (($a_row['Status'] == "FATTURATO"))
		$href = "Admin_Del_Ordine.php?ID_Ordine=";
	else $href = "Admin_Upd_Ordine.php?ID_Ordine=";	
	print "<td class=\"FacetDataTD\"><a href=\"$href".$a_row["ID_Ordine"]."\">".$a_row["ID_Ordine"]."</a> &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Ragione_Sociale"]." ".$a_row["Cognome"]."&nbsp;</td><td class=\"FacetDataTD\">".formatDate($a_row["Data_Ordine"])." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Protocollo"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Oggetto"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Prezzo"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Status"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Allegato"]." &nbsp;</td>";
	if (!($a_row['Status'] == "FATTURATO"))
	print "<td class=\"FacetDataTD\"><a href=\"Admin_Del_Ordine.php?ID_Ordine=".$a_row["ID_Ordine"]."\"><img src=\"images/x.gif\" alt=\"Cancella\" border=\"0\"></a></td>";
	else 
	print "<td class=\"FacetDataTD\">&nbsp;</td>";
	print "</tr>";

	}   

   ?>

 </table>







</body>

</html>




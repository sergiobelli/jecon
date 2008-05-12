<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

?>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Fatture Acquisto</title>

	<link rel="stylesheet" type="text/css" href="stylesheet.css">

</head>



<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 

include("Header.php"); 



?>


<p><br></p>
<p><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Select_Fornitore.php">Inserisci Fattura Fornitore</a></font></div>
<br><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Select_Nota_Fornitore.php">Inserisci Nota di Credito Fornitore</a>&nbsp;&nbsp; <a href="Admin_Note_Fornitori.php">Elenco Note Credito Ricevute</a></font></div>

<p><div align="center"><font class="FacetFormHeaderFont">Elenco Fatture Ricevute</font></div>
<?
$recordnav = new recordnav($spl_invoices_table, $session['where'], $session['limit'], $session['passo']);
$recordnav -> output();
?>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->

   <tr>

    <td colspan="4" class="FacetDataTD"><?print $message?></td></tr>

   <tr>
<?
	$headers_fatture = array(
		"N. Fattura" => "N_Fattura",
		"Ragione Sociale" => "Ragione_Sociale",
		"Data Fattura" => "Data_Fattura",
		"Data Scadenza" => "Scadenza",
		"Totale" => "Totale",
		"Cancella" => ""
		);
	$headerFatture = new linkHeaders($headers_fatture);
	$headerFatture -> output();	
?>
 
   </tr>

<?php


$result = dynQuery('*' ,$spl_invoices_table, $session['where'], $orderby, $session['limit'], $session['passo']);


while ($a_row = dbms_fetch_array($result))

	{

	print "<tr>";

	print "<td class=\"FacetDataTD\"><a href=\"Admin_Upd_Fattura_Fornitore.php?ID_Fattura_Acquisto=".$a_row['ID_Fattura_Acquisto']."\">".$a_row["N_Fattura"]."</a> &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Ragione_Sociale"]." &nbsp;</td><td class=\"FacetDataTD\">".formatDate($a_row["Data_Fattura"])." &nbsp;</td><td class=\"FacetDataTD\">".formatDate($a_row["Scadenza"])." &nbsp;</td><td class=\"FacetDataTD\">".$a_row['Totale'] ."&nbsp;</td>";
	print "<td class=\"FacetDataTD\"><a href=\"Admin_Del_Fattura_Fornitore.php?ID_Fattura_Acquisto=".$a_row['ID_Fattura_Acquisto']."\"><img src=\"images/x.gif\" alt=\"Cancella\" border=\"0\"></a></td>";
	print "</tr>";

	}   

   ?>

 </table>






<? include ("footer.php");?>
</body>

</html>


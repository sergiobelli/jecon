<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

?>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Fatture Vendita</title>

	<link rel="stylesheet" type="text/css" href="stylesheet.css">

</head>
<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 

include("Header.php"); 



?>
<p><br></p>
<p><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Nuova_Fattura.php">Crea Nuova Fattura</a></font></div>
<br><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Nuova_Nota.php">Crea Nuova Nota di Credito</a>&nbsp;&nbsp; <a href="Admin_Note.php">Elenco Note Credito Emesse</a></font></div>

<p><div align="center"><font class="FacetFormHeaderFont">Elenco Fatture Emesse</font></div>
<?
$recordnav = new recordnav($invoices_table, $session['where'], $session['limit'], $session['passo']);
$recordnav -> output();
?>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->

   <tr>

    <td colspan="4" class="FacetDataTD"><?print $message?></td></tr>

   <tr>
<?
	$headers_fatture = array(
		"N. Fattura" => "ID_Fattura",
		"Fornitore" => "Ragione_Sociale",
		"Data Fattura" => "Data_Fattura",
		"Scadenza" => "Scadenza",
		"Totale" => "Totale"
		);
	$headerFatture = new linkHeaders($headers_fatture);
	$headerFatture -> output();	
?>
 
   </tr>

<?php


$result = dynQuery('*' ,$invoices_table, $session['where'], $orderby, $session['limit'], $session['passo']);


while ($a_row = dbms_fetch_array($result))

	{

	print "<tr>";

	print "<td class=\"FacetDataTD\"><a href=\"Admin_Stampa_Fattura.php?ID_Fattura=".$a_row['ID_Fattura']."\">".$a_row["Prog_Fattura_Annuo"]."</a> &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Ragione_Sociale"]." &nbsp;</td><td class=\"FacetDataTD\">".formatDate($a_row["Data_Fattura"])." &nbsp;</td><td class=\"FacetDataTD\">".formatDate($a_row["Scadenza"])." &nbsp;</td><td class=\"FacetDataTD\">".$a_row['Totale'] ."&nbsp;</td>";

	print "</tr>";

	}   

   ?>

 </table>






<? include ("footer.php");?>
</body>

</html>


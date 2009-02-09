<?
include("dblib.inc");
include("clublib.inc");
checkAdmin();
$message = "";
?>
<?include("Header.php");?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Clienti</title><link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">
<p><br></p>
<p><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Nuovo_Cliente.php">Inserisci Nuovo Cliente</a></font></div>

<p><div align="center"><font class="FacetFormHeaderFont">Clienti</font></div>
<?
$last = recordCount($customers_table)-(recordCount($customers_table) % $session['passo']); // (recordcount - modulo del numero di record diviso il passo)
// barra di navigazione record
include "recordnav.php"
?>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->

   <tr>

    <td colspan="4" class="FacetDataTD"><?print $message?></td></tr>

   <tr>
<?
	$headers_clienti = array(
		"Ragione Sociale" => "Ragione_Sociale",
		"Cognome Nome" => "Cognome",
		"Partita Iva" => "PI",
		"Telefono" => "Telefono",
		"Mail" => "E_mail",
		"Cancella" => ""
		);
	$headerFatture = new linkHeaders($headers_clienti);
	$headerFatture -> output();	
?>
   </tr>

<?php


$result = dynQuery ('*', $customers_table, $session['where'], $orderby, $session['limit'], $session['passo']);



while ($a_row = dbms_fetch_array($result))

	{

	print "<tr>";

	print "<td class=\"FacetDataTD\"><a href=\"Admin_Upd_Cliente.php?ID_Cliente=".$a_row["ID_Cliente"]."\">".$a_row["Ragione_Sociale"]."</a> &nbsp;";
	print "</td><td class=\"FacetDataTD\"><a href=\"Admin_Upd_Cliente.php?ID_Cliente=".$a_row["ID_Cliente"]."\">".$a_row["Cognome"]." ".$a_row["Nome"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["PI"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Telefono"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["E_mail"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\"><a href=\"Admin_Del_Cliente.php?ID_Cliente=".$a_row["ID_Cliente"]."\"><img src=\"images/x.gif\" alt=\"Cancella\" border=\"0\"></a></td>";
	print "</tr>";

	}   

   ?>

 </table>



</body>

</html>


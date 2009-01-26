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
	<title>Fornitori</title>
	<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">
<p><br></p>
<p><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Nuovo_Fornitore.php">Inserisci Nuovo Fornitore</a></font></div>

<p><div align="center"><font class="FacetFormHeaderFont">Fornitori</font></div>
<?
$recordnav = new recordnav($suppliers_table, $session['where'], $session['limit'], $session['passo']);
$recordnav -> output();
?>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->
<tr>
<?
	$headers_fornitori = array(
		"Ragione Sociale" => "Ragione_Sociale",
		"Cognome Nome" => "Cognome",
		"Partita Iva" => "PI",
		"Telefono" => "Telefono",
		"Mail" => "E_mail",
		"Cancella" => ""
		);
	$headerFatture = new linkHeaders($headers_fornitori);
	$headerFatture -> output();	
?>

</tr>

<?php

if ($orderby == "2 DESC")
	{
	$orderby = "Ragione_Sociale, Cognome";
	}

$result = dynQuery ('*', $suppliers_table, $session['where'], $orderby, $session['limit'], $session['passo']);



while ($a_row = dbms_fetch_array($result))

	{

	print "<tr>";

	print "<td class=\"FacetDataTD\"><a href=\"Admin_Upd_Fornitore.php?ID_Fornitore=".$a_row["ID_Fornitore"]."\">".$a_row["Ragione_Sociale"]."</a> &nbsp;";
	print "</td><td class=\"FacetDataTD\"><a href=\"Admin_Upd_Fornitore.php?ID_Fornitore=".$a_row["ID_Fornitore"]."\">".$a_row["Cognome"]. " " .$a_row["Nome"]."</a> &nbsp;</td><td class=\"FacetDataTD\">".$a_row["PI"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Telefono"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["E_mail"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\"><a href=\"Admin_Del_Fornitore.php?ID_Fornitore=".$a_row["ID_Fornitore"]."\"><img src=\"images/x.gif\" alt=\"Cancella\" border=\"0\"></a></td>";
	print "</tr>";

	}   

   ?>

 </table>



</body>

</html>


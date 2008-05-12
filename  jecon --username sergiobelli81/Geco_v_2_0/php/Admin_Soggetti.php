<?php
include("dblib.inc");
include("clublib.inc");
include("SoggettoManager.php");
checkAdmin();
$message = "";
?>
<?include("Header.php");?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Soggetti</title><link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">
<p><br></p>
<p><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Nuovo_Soggetto.php">Inserisci Nuovo Soggetto</a></font></div>

<p><div align="center"><font class="FacetFormHeaderFont">Soggetti</font></div>
<?
//$last = recordCount($subject_table)-(recordCount($subject_table) % $session['passo']); // (recordcount - modulo del numero di record diviso il passo)
// barra di navigazione record
//include "recordnav.php"
?>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->

   <tr>

    <td colspan="4" class="FacetDataTD"><?print $message?></td></tr>

   <tr>
<?php
	$headers_soggetti = array(
		"Ragione Sociale" => "Ragione_Sociale",
		"Cognome Nome" => "Cognome",
		"Partita Iva" => "PI",
		"Telefono" => "Telefono",
		"Mail" => "E_mail",
		"Cancella" => ""
		);
	$headerFatture = new linkHeaders($headers_soggetti);
	$headerFatture -> output();	
?>
   </tr>

<?php
$SoggettoManager = new SoggettoManager();
$result = SoggettoManager::lists();
while ($a_row = dbms_fetch_array($result)) {
    print "<tr>";
    print "<td class=\"FacetDataTD\"><a href=\"Admin_Upd_Soggetti.php?ID_Soggetto=".$a_row["ID_Soggetto"]."\">".$a_row["Ragione_Sociale"]."</a> &nbsp;";
    print "</td><td class=\"FacetDataTD\"><a href=\"Admin_Upd_Soggetti.php?ID_Soggetto=".$a_row["ID_Soggetto"]."\">".$a_row["Cognome"]." ".$a_row["Nome"]."</td><td class=\"FacetDataTD\">".$a_row["PI"]." &nbsp;</td>";
    print "<td class=\"FacetDataTD\">".$a_row["Telefono"]." &nbsp;</td>";
    print "<td class=\"FacetDataTD\">".$a_row["E_mail"]." &nbsp;</td>";
    print "<td class=\"FacetDataTD\"><a href=\"Admin_Del_Soggetti.php?ID_Soggetto=".$a_row["ID_Soggetto"]."\"><img src=\"images/x.gif\" alt=\"Cancella\" border=\"0\"></a></td>";
    print "</tr>";
}   
?>
 </table>
</body>
</html>


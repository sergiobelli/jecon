<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

?>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Note Credito Fornitori</title>

	<link rel="stylesheet" type="text/css" href="stylesheet.css">

</head>



<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 
include("Header.php"); 
?>

<p><div align="center"><font class="FacetFormHeaderFont">Elenco Note Credito Fornitori</font></div>
<?
$recordnav = new recordnav($spl_credit_notes_table, $session['where'], $session['limit'], $session['passo']);
$recordnav -> output();
?>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->

   <tr>

    <td colspan="4" class="FacetDataTD"><?print $message?></td></tr>

   <tr>
<?
	$headers_fatture = array(
		"N. Nota" => "N_Nota",
		"Ragione Sociale" => "Ragione_Sociale",
		"Data Nota" => "Data_Nota",
		"Totale" => "Totale",
		"Imposta" => "Imposta",
		"Cancella" => ""
		);
	$headerFatture = new linkHeaders($headers_fatture);
	$headerFatture -> output();	
?>
 
   </tr>

<?php


$result = dynQuery('*' ,$spl_credit_notes_table, $session['where'], $orderby, $session['limit'], $session['passo']);


while ($a_row = dbms_fetch_array($result))

	{

	print "<tr>";

	print "<td class=\"FacetDataTD\"><a href=\"Admin_Upd_Nota_Fornitore.php?ID_Nota=".$a_row['ID_Nota']."\">".$a_row["N_Nota"]."</a> &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Ragione_Sociale"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".formatDate($a_row["Data_Nota"])." &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row['Totale'] ."&nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row['Imposta'] ."&nbsp;</td>";
	print "<td class=\"FacetDataTD\"><a href=\"Admin_Del_Nota_Fornitore.php?ID_Nota=".$a_row['ID_Nota']."\"><img src=\"images/x.gif\" alt=\"Cancella\" border=\"0\"></a></td>";
	print "</tr>";

	}   

   ?>

 </table>






<? include ("footer.php");?>
</body>

</html>


<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

?>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Banche</title>

	<link rel="stylesheet" type="text/css" href="Style.css">

</head>



<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 

include("Header.php"); 
include("confignav.php");
?>
<p><br></p>
<p><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Nuova_Banca.php">Inserisci Nuova Banca</a></font></div>

<p><div align="center"><font class="FacetFormHeaderFont">Banche</font></div>
<?
$recordnav = new recordnav($bank_table, $session['where'], $session['limit'], $session['passo']);
$recordnav -> output();
?>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->

   <tr>

    <td colspan="4" class="FacetDataTD"><?print $message?></td></tr>

   <tr>

   <th class="FacetFieldCaptionTD">Banca &nbsp;</th><th class="FacetFieldCaptionTD">Indirizzo &nbsp;</th>
   <th class="FacetFieldCaptionTD">Agenzia &nbsp;</th><th class="FacetFieldCaptionTD">Abi &nbsp;</th><th class="FacetFieldCaptionTD">Cab &nbsp;</th><th class="FacetFieldCaptionTD">Numero Conto &nbsp;</th>
   <th class="FacetFieldCaptionTD">Titolare &nbsp;</th>   <th class="FacetFieldCaptionTD">Cancella &nbsp;</th>
   </tr>

<?php


$result = dynQuery ('*', $bank_table);

while ($a_row = dbms_fetch_array($result))

	{

	print "<tr>";

	print "<td class=\"FacetDataTD\"><a href=\"Admin_Upd_Banca.php?ID_Banca=".$a_row["ID_Banca"]."\">".$a_row["Banca"]."</a> &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Indirizzo"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Agenzia"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Abi"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Cab"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Conto"]." &nbsp;</td><td class=\"FacetDataTD\">".$a_row["Titolare"]." &nbsp;</td>";
	print "<td class=\"FacetDataTD\"><a href=\"Admin_Del_Banca.php?ID_Banca=".$a_row["ID_Banca"]."\"><img src=\"images/x.gif\" alt=\"Cancella\" border=\"0\"></a></td>";
	print "</tr>";

	}   

   ?>

 </table>



</body>

</html>


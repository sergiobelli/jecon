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

<p><div align="center"><font class="FacetFormHeaderFont">Elenco Note di Credito Emesse</font></div>
<?
$recordnav = new recordnav($credit_notes_table, $session['where'], $session['limit'], $session['passo']);
$recordnav -> output();
?>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->

   <tr>

    <td colspan="4" class="FacetDataTD"><?print $message?></td></tr>

   <tr>
<?
	$headers_note = array(
		"N. Nota" => "ID_Nota",
		"Cliente" => "Ragione_Sociale",
		"Data Nota" => "Data_Nota",
		"Iva" => "Iva",
		"Totale" => "Totale"
		);
	$headerNote = new linkHeaders($headers_note);
	$headerNote -> output();	
?>
 
   </tr>

<?php


$result = dynQuery('*' ,$credit_notes_table, $session['where'], $orderby, $session['limit'], $session['passo']);


while ($a_row = dbms_fetch_array($result))

	{
	
	print "<tr>";

	print "<td class=\"FacetDataTD\"><a href=\"Admin_Stampa_Nota.php?ID_Nota=".$a_row['ID_Nota']."\">".$a_row["Prog_Nota_Annuo"]."</a> &nbsp;</td>";
	print "<td class=\"FacetDataTD\">".$a_row["Ragione_Sociale"]." &nbsp;</td>
	<td class=\"FacetDataTD\">".formatDate($a_row["Data_Nota"])." &nbsp;</td>
	<td class=\"FacetDataTD\">".$a_row['Iva']."% &nbsp;</td>
	<td class=\"FacetDataTD\">".$a_row['Totale'] ."&nbsp;</td>";

	print "</tr>";

	}   

   ?>

 </table>






<? include ("footer.php");?>
</body>

</html>


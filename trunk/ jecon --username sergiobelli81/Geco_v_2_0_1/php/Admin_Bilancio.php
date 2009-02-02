<?php
include("dblib.inc");
include("clublib.inc");
checkAdmin();
$message = "";

if (!isset($bilancioAnnoRichiesto)) {
	//$annoRichiesto = '2006';
	$annoRichiesto = date("Y");
}

?>
<?include("Header.php");?>
<?include("BilancioManager.php");?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Bilancio</title><link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">
<p><br></p>

<p>
	<div align="center">
		<form name="bilancioForm" action="Admin_Bilancio.php" metod="POST">
			<font class="FacetFormHeaderFont">Bilancio</font>

			
      <? 
      		$annoCorrente = date("Y",time() + $timeadjust);
          $annoBilancio = new selectAnniBilancio("annoRichiesto");
          $annoBilancio -> addSelected($annoCorrente);
          $annoBilancio -> output();
      ?>			
    	<input name="bilancioAnnoRichiesto" type="submit" value="Redigi" class="FacetButton">
    </form>
	</div>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->

   <tr><td colspan="4" class="FacetDataTD"><?print $message?></td></tr>

		<tr>
			<td colspan="4" class="FacetDataTD" align="center">
				<font class="FacetFormHeaderFont">Bilancio anno <?php print($annoRichiesto); ?></font>
			</td>
		</tr>
   <tr>
<?php
	$headers_soggetti = array(
		"Voce Bilancio " => "",
		"Entrata" => "",
		"Uscita" => "",
		"Bilancio" => ""
		);
	$headerFatture = new linkHeaders($headers_soggetti);
	$headerFatture -> output();	
?>
   </tr>

<?php

$BilancioManager 				= new BilancioManager();
$tabellaBilancio 				= BilancioManager::getTabellaBilancio($annoRichiesto);
$totaleEntrate 					= BilancioManager::getTotaleEntrate($annoRichiesto);
$totaleUscite 					= BilancioManager::getTotaleUscite($annoRichiesto);
$bilancio 						= BilancioManager::getBilancio($totaleEntrate, $totaleUscite);
$bilancioWithColorDecoration 	= BilancioManager::getBilancioWithColorDecoration($bilancio);
$saldoIniziale 					= BilancioManager::getSaldoIniziale($annoRichiesto);
$saldoInizialeCassa 			= BilancioManager::getSaldoInizialeCassa($annoRichiesto);
$saldoInizialeBanca 			= BilancioManager::getSaldoInizialeBanca($annoRichiesto);
$saldoFinaleCassa 				= BilancioManager::getSaldoInizialeCassa($annoRichiesto) + BilancioManager::getBilancioCassa($annoRichiesto);;
$saldoFinaleBanca 				= BilancioManager::getSaldoInizialeBanca($annoRichiesto) + BilancioManager::getBilancioBanca($annoRichiesto);
$totaleDisponibilita 			= $saldoIniziale + $bilancio;
$bilancioCassa                  = BilancioManager::getBilancioCassa($annoRichiesto);
$bilancioBanca                  = BilancioManager::getBilancioBanca($annoRichiesto);

while ($bilancio_voci_row = dbms_fetch_array($tabellaBilancio)) {
    print "<tr>";
    print "<td class=\"FacetDataTD\">".$bilancio_voci_row["Voce_Bilancio"]." &nbsp;</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$bilancio_voci_row["Entrata"]." &nbsp;</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$bilancio_voci_row["Uscita"]." &nbsp;</td>";
    print "<td class=\"FacetDataTD\">&nbsp;</td>";    
    print "</tr>";
}   

    print "<tr>";
    print "<td class=\"FacetFieldCaptionTD\">&nbsp;</td>";
    print "<td class=\"FacetFieldCaptionTD\">&nbsp;</td>";
    print "<td class=\"FacetFieldCaptionTD\">&nbsp;</td>";
    print "<td class=\"FacetFieldCaptionTD\">&nbsp;</td>";    
    print "</tr>";
    
    print "<tr>";
    print "<td class=\"FacetDataTD\">Movimentazione (entrate/uscite) anno ".$annoRichiesto."</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$totaleEntrate." &nbsp;</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$totaleUscite." &nbsp;</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$bilancioWithColorDecoration." &nbsp;</td>";    
    print "</tr>";

    print "<tr>";
    print "<td class=\"FacetFieldCaptionTD\">Saldi Banca/Cassa</td>";
    print "<td class=\"FacetFieldCaptionTD\" align=\"center\">Iniziale</td>";
    print "<td class=\"FacetFieldCaptionTD\" align=\"center\">Finale</td>";
    print "<td class=\"FacetDataTD\" align=\"center\">&nbsp;</td>";    
    print "</tr>";
    
    print "<tr>";
    print "<td class=\"FacetDataTD\">Banca anno ".$annoRichiesto."</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$saldoInizialeBanca."</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$saldoFinaleBanca."</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$bilancioBanca." &nbsp;</td>";    
    print "</tr>";

    print "<tr>";
    print "<td class=\"FacetDataTD\">Cassa anno ".$annoRichiesto."</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$saldoInizialeCassa."</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$saldoFinaleCassa."</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$bilancioCassa." &nbsp;</td>";    
    print "</tr>";

    print "<tr>";
    print "<td class=\"FacetFieldCaptionTD\">&nbsp;</td>";
    print "<td class=\"FacetFieldCaptionTD\" align=\"right\">&nbsp;</td>";
    print "<td class=\"FacetFieldCaptionTD\" align=\"right\">&nbsp;</td>";
    print "<td class=\"FacetFieldCaptionTD\" align=\"right\">&nbsp;</td>";    
    print "</tr>";
    
    print "<tr>";
    print "<td class=\"FacetDataTD\">Bilancio anno ".$annoRichiesto."</td>";
    print "<td class=\"FacetDataTD\">&nbsp;</td>";
    print "<td class=\"FacetDataTD\">&nbsp;</td>";
    print "<td class=\"FacetDataTD\" align=\"right\">".$totaleDisponibilita." &nbsp;</td>";    
    print "</tr>";    
		    
?>
 </table>
</body>
</html>


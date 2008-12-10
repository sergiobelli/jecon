<?
    include("dblib.inc");
    include("clublib.inc");
    checkAdmin();
    $message = "";
    $session['passo'] = 20; //imposto il passo a 20 per questo script
?>
<?include("Header.php");?>
<p><br></p>

<?php
    function existSearchDate () {
        return $daGiorno != "" || $daMese != "" || $daAnno != "" || $aGiorno != "" || $aMese != "" || $aAnno != "";
    }

    function getBilancio () {
        $totEntrateResult = connetti_query("select sum(Entrate) as TOTALE_ENTRATE from sd_movimenti where Deleted = 'N'");
        $totUsciteResult  = connetti_query("select sum(Uscite)  as TOTALE_USCITE  from sd_movimenti where Deleted = 'N'");
        while ($totEntrateRow  = dbms_fetch_array($totEntrateResult)) { $totEntrate = $totEntrateRow["TOTALE_ENTRATE"]; }
        while ($totUsciteRow   = dbms_fetch_array($totUsciteResult))  { $totUscite = $totUsciteRow["TOTALE_USCITE"];	}
        $bilancio   = $totEntrate - $totUscite;
        return $bilancio >= 0 ? "<font color='#00FF00'>".$bilancio."</font>" : "<font color='#CC6633'>".$bilancio."</font>";	
    }



    /*function getListaMovimenti () {

	$res = connetti_query(

                "select     sd_movimenti.* , sd_voci_bilancio.voce

                 from       sd_movimenti, sd_voci_bilancio

                 where      (sd_movimenti.Id_Voce_Bilancio = sd_voci_bilancio.id OR sd_movimenti.Id_Voce_Bilancio = 0)

		            and sd_movimenti.Deleted = 'N'

                 group by   id_movimento

                 order by ".$orderby.""

                );

	return $res;

    }*/



    /*function getListaMovimentiByDate () {

        $res = connetti_query(

                "select     sd_movimenti.* , sd_voci_bilancio.voce

                 from       sd_movimenti, sd_voci_bilancio

                 where      (sd_movimenti.Id_Voce_Bilancio = sd_voci_bilancio.id OR sd_movimenti.Id_Voce_Bilancio = 0)

		            and sd_movimenti.Deleted = 'N'

                 group by   id_movimento

                 order by ".$orderby.""

                );

	return $res;

    }*/

?>





<form name="lista_movimenti" action="Admin_Movimenti.php" method="post">
<p>
    <div align="center">
        <font class="FacetFormHeaderFont">
            <a href="Admin_Nuovo_Movimento.php">
                Inserisci Nuovo Movimento
            </a>
        </font>
    </div>
</p>    
<table>

    <!-- BEGIN Error -->

    <tr>

        <td colspan="6" class="FacetDataTD">

            <?php if (! $message == "") { print "$message"; } ?>

        </td>

    </tr>

    <!-- END Error -->

    <!--
    <tr>

        <td align="left"   nowrap class="FacetDataTD">Bilancio</td>

        <td align="center" nowrap class="FacetDataTD"><?php print(getBilancio()); ?> euro</td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

    </tr>
    -->

    <tr>

	
        <td align="left" nowrap class="FacetDataTD">

	    <b>Ricerca x Anno Bilancio</b>

		</td>
		
        <td colspan="2" align="left" nowrap class="FacetDataTD">

	    <b>Ricerca x Data Valuta</b>

		</td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td nowrap class="FacetDataTD">

            <b>Ricerca x Soggetto/Descrizione</b>

        </td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td nowrap class="FacetDataTD">

            <b>Ricerca x Voce Bilancio</b>

        </td>

    </tr>

    <tr>

		<td nowrap class="FacetFieldCaptionTD">Anno:</td>
		
        <td nowrap class="FacetFieldCaptionTD">Da:</td>

        <td nowrap class="FacetDataTD">

              <input type="text" name="daGiorno" size="2" maxlength="2" class="FacetInput">

            - <input type="text" name="daMese"   size="2" maxlength="2" class="FacetInput">

            - <input type="text" name="daAnno"   size="4" maxlength="4" class="FacetInput">

        </td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

    </tr>

    <tr>

		<td nowrap class="FacetFieldCaptionTD">
			<input type="text" name="annoBilancio" size="4" maxlength="4" class="FacetInput">
		</td>
		
        <td nowrap class="FacetFieldCaptionTD">A:</td>

        <td nowrap class="FacetDataTD">

              <input type="text" name="aGiorno" size="2" maxlength="2" class="FacetInput">

            - <input type="text" name="aMese"   size="2" maxlength="2" class="FacetInput">

            - <input type="text" name="aAnno"   size="4" maxlength="4" class="FacetInput">

        </td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td nowrap class="FacetDataTD">

            <input name="searchBySubjectText" type="text" class="FacetInput">

        </td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td nowrap class="FacetDataTD">

            <select name="searchByVoceBilancioSelect" maxlength="20">

                <?php

                    $vociBilancio = connetti_query("select id, voce from sd_voci_bilancio order by voce");

                    while ($voceBilancio = dbms_fetch_array($vociBilancio)) {

                        

                        print("<option value='".$voceBilancio["id"]."'>".$voceBilancio["voce"]."</option>");

                    }

                ?>

                

            </select>

        </td>

    </tr>

    <tr>

		<td align="right" nowrap class="FacetDataTD">
            <input name="searchByAnnoBilancio" type="submit" value="Cerca" class="FacetButton">
        </td>
		
        <td colspan="2" align="right" nowrap class="FacetDataTD">

            <input name="searchByDataValuta"     type="submit" value="Data Valuta" class="FacetButton">

            <input name="searchByDataCompetenza" type="submit" value="Data Competenza" class="FacetButton">

        </td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td align="right" nowrap class="FacetDataTD">

            <input name="searchBySubject" type="submit" value="Cerca" class="FacetButton">

        </td>

        <td nowrap class="FacetDataTD">&nbsp;</td>

        <td align="right" nowrap class="FacetDataTD">

            <input name="searchByVoceBilancio" type="submit" value="Cerca" class="FacetButton">

        </td>

    </tr>

</table>



<p><div align="center"><font class="FacetFormHeaderFont">Movimenti</font></div>

<?

    //Stampa il menu' di navigazione dell'applicazione

    //$recordnav = new recordnav($mov_table, $session['where'], $session['limit'], $session['passo']);

    //$recordnav -> output();

?>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

    <tr>

        <?

            // creo l'array (header => campi) per l'ordinamento dei record

            $headers_movimenti = array  (

                "ID" => "ID_Movimento",
                
                "Data Valuta" => "Data_Valuta", 

                "Data Competenza" => "Data_Competenza",

                "Anno Bilancio" => "Anno_Bilancio",

                "Tipo Pagamento" => "Tipo_Pagamento",

                "Soggetto" => "ID_Soggetto",		

                "Voce Bilancio" => "voce", 

                "Descrizione" => "Descrizione", 

                "Entrate" => "Entrate", 

                "Uscite" => "Uscite",

                "Banca/Cassa" => "ID_Banca",

                "Movimento" => "",

                "Cancella" => ""

            );

            $linkHeaders = new linkHeaders($headers_movimenti);

            $linkHeaders -> output();

        ?>

    </tr>

    <?php

        if ($orderby == "2 DESC") {
            $orderby = " ID_Movimento Desc ";
		}

        
		$query = 
                " select     sd_movimenti.* , sd_voci_bilancio.voce, sd_soggetti.Nome, sd_soggetti.Cognome, sd_soggetti.Ragione_Sociale
                 from       sd_movimenti, sd_voci_bilancio, sd_soggetti ";

		if (isset($searchByAnnoBilancio)) {
            $query .= " WHERE  sd_movimenti.Anno_Bilancio = '".$annoBilancio."' ";
        } else  if (isset($searchByDataValuta) || isset($searchByDataCompetenza)) {
		    if ($aGiorno=="" 
		            and $aMese==""
		            and $aAnno=="") {
		        $aGiorno = $daGiorno;
	                $aMese   = $daMese;
	                $aAnno   = $daAnno;		
		    }
            $query .= " where      (sd_movimenti.Id_Voce_Bilancio = sd_voci_bilancio.id OR sd_movimenti.Id_Voce_Bilancio = 0) ";
			if (isset($searchByDataValuta)) {
                $query .= " and sd_movimenti.Data_Valuta BETWEEN ";
            } else {
                $query .= " and sd_movimenti.Data_Competenza BETWEEN ";
            }
            $query .= "
                        DATE '".$daAnno."-".$daMese."-".$daGiorno."'
                        AND DATE '".$aAnno."-".$aMese."-".$aGiorno."'
                        and sd_movimenti.Deleted = 'N'
                        and sd_soggetti.ID_Soggetto = sd_movimenti.ID_Soggetto";
        } else if (isset($searchBySubject)) {
            $query .= 
                " where      (sd_movimenti.Id_Voce_Bilancio = sd_voci_bilancio.id OR sd_movimenti.Id_Voce_Bilancio = 0)
		            and sd_movimenti.Deleted = 'N'
                            and sd_soggetti.ID_Soggetto = sd_movimenti.ID_Soggetto
                            and (
                                sd_soggetti.Cognome like '%".$searchBySubjectText."%' 
                                or sd_soggetti.Nome like '%".$searchBySubjectText."%' 
                                or sd_soggetti.Ragione_Sociale like '%".$searchBySubjectText."%'
                                or sd_movimenti.descrizione like '%".$searchBySubjectText."%'
                                ) ";
        } else if (isset($searchByVoceBilancio)) {
            $query .= 
                " where      (sd_movimenti.Id_Voce_Bilancio = sd_voci_bilancio.id OR sd_movimenti.Id_Voce_Bilancio = 0)
		            and sd_movimenti.Deleted = 'N'
                            and sd_soggetti.ID_Soggetto = sd_movimenti.ID_Soggetto
                            and sd_movimenti.Id_Voce_Bilancio = ".$searchByVoceBilancioSelect." ";
        } else {
			$annoCorrente = date("Y",time() + $timeadjust);
            $query .= 
                " where     (sd_movimenti.Id_Voce_Bilancio = sd_voci_bilancio.id OR sd_movimenti.Id_Voce_Bilancio = 0)
							and sd_movimenti.Deleted = 'N'
                            and sd_soggetti.ID_Soggetto = sd_movimenti.ID_Soggetto
							AND sd_movimenti.Anno_Bilancio = '".$annoCorrente."' ";
        }

		$query .= " group by   id_movimento
                    order by ".$orderby."";
		$result = connetti_query($query);
       

        

        while ($a_row = dbms_fetch_array($result)) {

            // per il momento la gestione degli allegati e' rimandata

            $a_row["Allegato"] = "";

            // ricavo l'intestazione della  banca e il saldo parziale

            $banca = getRow($bank_table, "ID_Banca", $a_row['ID_Banca']);

            //$saldo = Saldo($a_row['ID_Banca'], $a_row["Data_Valuta"]);

            if ($a_row["Entrate"] != "0.00") {

                $saldo = "+".formatEuro($a_row["Entrate"]);

            } else {

                $saldo = "-".formatEuro($a_row["Uscite"]);

            }

            print "<tr>";

            $href = "Admin_Upd_Movimento.php?ID_Movimento=";	

            //print "<td class=\"FacetDataTD\"><a href=\"$href".$a_row["ID_Movimento"]."\">".formatDate($a_row["Data_Valuta"])."</a> &nbsp;</td>";

			print "<td class=\"FacetDataTD\">".$a_row["ID_Movimento"]." &nbsp;</td>";

						
            print "<td class=\"FacetDataTD\" valign=\"center\"><a href=\"$href".$a_row["ID_Movimento"]."\">".$a_row["Data_Valuta"]."</a> &nbsp;</td>";

            print "<td class=\"FacetDataTD\">".$a_row["Data_Competenza"]." &nbsp;</td>";

            print "<td class=\"FacetDataTD\">".$a_row["Anno_Bilancio"]." &nbsp;</td>";

            print "<td class=\"FacetDataTD\">".$a_row["Tipo_Pagamento"]." &nbsp;</td>";

            print "<td class=\"FacetDataTD\">"

                        .$a_row["Cognome"]. " " 

                        .$a_row["Nome"]. " "

                        .$a_row["Ragione_Sociale"].

                        " &nbsp;</td>";

            print "<td class=\"FacetDataTD\">".$a_row["voce"]." &nbsp;</td>";

            print "<td class=\"FacetDataTD\">".$a_row["Descrizione"]." &nbsp;</td>";

            print "<td class=\"FacetDataTD\">".formatEuro($a_row["Entrate"])." &nbsp;</td>";

            print "<td class=\"FacetDataTD\">".formatEuro($a_row["Uscite"])." &nbsp;</td>";

            print "<td class=\"FacetDataTD\">".$banca['Banca']." &nbsp;</td>";

            if ($saldo <= 0) {

                $color = "Red";

            } else { 

                $color = "";

            }

            print "<td class=\"FacetDataTD\" style=\"color: $color;\">".($saldo)."</td>";

            print "<td class=\"FacetDataTD\"><a href=\"Admin_Del_Movimento.php?ID_Movimento=".$a_row["ID_Movimento"]."\"><img src=\"images/x.gif\" alt=\"Cancella\" border=\"0\"></a></td>";

            print "</tr>";

	} 

    ?>

</table></body></html>


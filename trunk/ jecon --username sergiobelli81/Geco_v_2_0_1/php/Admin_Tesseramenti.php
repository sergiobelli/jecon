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
?>


<form name="lista_movimenti" action="Admin_Movimenti.php" method="post">
<p>
    <div align="center">
        <font class="FacetFormHeaderFont">
            <a href="Admin_Nuovo_Movimento_Tesseramento.php">
                Inserisci Nuovo Tesseramento
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
</table>

<p><div align="center"><font class="FacetFormHeaderFont">Tesseramenti</font></div>
<?
    //Stampa il menu' di navigazione dell'applicazione
    //$recordnav = new recordnav($mov_table, $session['where'], $session['limit'], $session['passo']);
    //$recordnav -> output();
?>
<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">
    <tr>
        <?
            // creo l'array (header => campi) per l'ordinamento dei record
            $headers_tesseramenti = array  (
                "Data Tessera" => "Data_Tessera", 
                "Soggetto" => "ID_Soggetto", 
                "Importo Versato" => "Importo_Versato",
                "Validita'" => "Validita",		
                "Tipo Socio" => "Tipo", 
                "Cancella" => ""
            );
            $linkHeaders = new linkHeaders($headers_tesseramenti);
            $linkHeaders -> output();
        ?>
    </tr>
    <?php
        
        $result = connetti_query(
"select     sd_tesseramenti.* , sd_soggetti.Nome, sd_soggetti.Cognome, sd_soggetti.Ragione_Sociale, sd_tipi_soci.Tipo
from       sd_tesseramenti, sd_soggetti, sd_tipi_soci
where      sd_tesseramenti.Deleted = 'N'
            and sd_tesseramenti.ID_Soggetto = sd_soggetti.ID_Soggetto
            and sd_tesseramenti.tipo_socio = sd_tipi_soci.ID
group by   id_tesseramento
order by Data_Tessera");

       
        
        while ($a_row = dbms_fetch_array($result)) {
            print "<tr>";
            $href = "Admin_Upd_Movimento_Tesseramento.php?ID_Tesseramento=";	
            print "<td class=\"FacetDataTD\">
                    <a href=\"$href".$a_row["ID_Tesseramento"]."\">".formatDate($a_row["Data_Tessera"])."</a> &nbsp;
                    </td>";
            print "<td class=\"FacetDataTD\">"
                    .$a_row["Cognome"]. " " 
                    .$a_row["Nome"]. " "
                    .$a_row["Ragione_Sociale"].
                    " &nbsp;</td>";
            print "<td class=\"FacetDataTD\">".$a_row["Importo_Versato"]." &nbsp;</td>";
            print "<td class=\"FacetDataTD\">".$a_row["Validita"]." &nbsp;</td>";
            print "<td class=\"FacetDataTD\">".$a_row['Tipo']." &nbsp;</td>";
            print "<td class=\"FacetDataTD\"><a href=\"Admin_Del_Movimento_Tesseramento.php?ID_Tesseramento=".$a_row["ID_Tesseramento"]."\"><img src=\"images/x.gif\" alt=\"Cancella\" border=\"0\"></a></td>";
            print "</tr>";
	} 
    ?>
</table></body></html>

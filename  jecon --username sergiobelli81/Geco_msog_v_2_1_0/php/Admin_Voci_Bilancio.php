<?php
include("VoceBilancioManager.php");
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
        <form name="lista_soggetti" action="Admin_Voci_Bilancio.php" method="post">
            <p><br></p>
            <p><div align="center"><font class="FacetFormHeaderFont"><a href="Admin_Nuovo_Voce_Bilancio.php">Inserisci Nuova Voce di Bilancio</a></font></div>
            <p>
                <div align="center">
                    <table>
                        <tr>
                            <td align="left" nowrap class="FacetFieldCaptionTD" colspan="2">
                                <b>Ricerca Voce di Bilancio</b>
                            </td>                            
                        </tr>
                        <tr>
                            <td align="left" nowrap class="FacetDataTD">
                                <input type="text" name="filtro" size="40" class="FacetInput">
                            </td>
                            <td align="left" nowrap class="FacetFieldCaptionTD">
                                <input name="search" type="submit" value="Cerca" class="FacetButton">
                            </td>
                        </tr>
                    </table>
                </div>
            </p>

            <p><div align="center"><font class="FacetFormHeaderFont">Voce di Bilancio</font></div>
            <table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">
                <tr><td colspan="4" class="FacetDataTD"><?print $message?></td></tr>
                <tr>
                    <?php
                        $headers_voci_bilancio = array(
                            "Id" => "id",
                            "Voce" => "voce",
                            "Bilancio" => "bilancio",
                            "Cancella" => ""
                            );
                        $headerFatture = new linkHeaders($headers_voci_bilancio);
                        $headerFatture -> output();	
                    ?>
                </tr>
                <?php
                    $VoceBilancioManager = new VoceBilancioManager();
                    $filtroRicerca = "";
                    if (isset($search)) { $filtroRicerca = $filtro; }
                    $result = VoceBilancioManager::elencoFiltro($filtroRicerca);
                    while ($a_row = dbms_fetch_array($result)) {
                        print "<tr>";
                        print "<td class=\"FacetDataTD\"><a href=\"Admin_Upd_Voce_Bilancio.php?id=".$a_row["id"]."\">".$a_row["id"]."</a> &nbsp;";
                        print "<td class=\"FacetDataTD\">".$a_row["voce"]." &nbsp;</td>";
                        if ($a_row["bilancio"] == "1") {
                            print "<td class=\"FacetDataTD\"><img src=\"images/v.gif\" border=\"0\"> &nbsp;</td>";
                        } else {
                            print "<td class=\"FacetDataTD\">&nbsp;</td>";
                        }
                        print "<td class=\"FacetDataTD\"><a href=\"Admin_Del_Voce_Bilancio.php?id=".$a_row["id"]."\"><img src=\"images/x.gif\" alt=\"Cancella\" border=\"0\"></a></td>";
                        print "</tr>";
                    }   
                ?>
            </table>
        </form>
    </body>
</html>

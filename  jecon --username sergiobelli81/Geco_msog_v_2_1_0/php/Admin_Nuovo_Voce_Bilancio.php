<?
include("VoceBilancioManager.php");
include_once("dblib.inc");
include("clublib.inc");
checkAdmin();
$message = "";

$VoceBilancioManager = new VoceBilancioManager();

if (isset($Insert)) {
    if (empty($voce)) { $message .= "Hai dimenticato uno dei campi obbligatori ! <br>"; }
    if ( $message == "") {
        VoceBilancioManager::salva ($voce, $bilancio);
        header("Location: Admin_Voci_Bilancio.php");
        exit;	
    }
}
?>
<html>
    <head><title>Nuova Voce di Bilancio</title></head>
    <body>
        <? include("Header.php"); ?>
        
        <form method="post" action="<?php print $PHP_SELF;?>">
            <div align="center"><font class="FacetFormHeaderFont">Nuova Voce di Bilancio</div>
            <table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">
                
                <tr><td colspan="2" class="FacetDataTD"><?php if (! $message == "") { print "$message"; } ?></td></tr>
                
                <tr>
                    <td class="FacetFieldCaptionTD">Voce di Bilancio&nbsp; </td>
                    <td class="FacetDataTD"><input type="text" name="voce" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
                </tr>
                <tr>
                    <td class="FacetFieldCaptionTD">Bilancio *&nbsp;</td>
                    <td class="FacetDataTD"><input type="checkbox" name="bilancio" value="1" class="FacetInput" />&nbsp;</td>
                </tr>
                
                <tr>
                    <td colspan="2" align="right" nowrap class="FacetFooterTD">
                        <input name="Insert" type="submit" value="Invia" class="FacetButton">
                        <input name="Delete" type="reset" value="Cancella" class="FacetButton">&nbsp;
                    </td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
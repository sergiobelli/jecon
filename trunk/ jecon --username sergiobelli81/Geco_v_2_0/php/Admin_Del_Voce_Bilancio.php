<?
include("VoceBilancioManager.php");
include("dblib.inc");
include("clublib.inc");
checkAdmin();

$VoceBilancioManager = new VoceBilancioManager();

$result = VoceBilancioManager::prendi ($id);
while ($voceBilancioRow  = dbms_fetch_array($result)) { 
    $voce_ = $voceBilancioRow["voce"]; 
    $bilancio_ = $voceBilancioRow["bilancio"]; 
}

$message = "Sei sicuro di voler rimuovere la voce di bilancio?";
if (isset($Delete)) {
    VoceBilancioManager::cancella ($id);
    header("Location: Admin_Voci_Bilancio.php");
    exit;	
}
?>

<html>

    <head><title>Elimina Voce di Bilancio</title></head>
    
    <body>
        <?  include("Header.php");  ?>
        <form method="post" action="<?php print $PHP_SELF;?>" >
            <input type="Hidden" name="id" value="<?php print $id?>">
            <div align="center"><font class="FacetFormHeaderFont">Voce di bilancio</font></div>
            
            <table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">
                
                <tr><td colspan="2" class="FacetDataTD"><?php if (! $message == "") { print "$message"; } ?></td></tr>
                
                <tr>
                    <td class="FacetFieldCaptionTD">Voce di Bilancio&nbsp; </td>
                    <td class="FacetDataTD"><input type="text" name="voce" value="<?php print $voce_ ?>" maxlength="100" size="50" class="FacetInput">&nbsp;</td>
                </tr>
                <tr>
                    <td class="FacetFieldCaptionTD">Bilancio *&nbsp;</td>
                    <? if ($bilancio_ == "1") { ?>
                        <td class="FacetDataTD"><input type="checkbox" name="bilancio" value="1" checked    class="FacetInput" />&nbsp;</td>
                    <? } else { ?>
                        <td class="FacetDataTD"><input type="checkbox" name="bilancio" value="1"            class="FacetInput" />&nbsp;</td>
                    <? } ?>
                </tr>
                
                <tr><td colspan="2" align="right" nowrap class="FacetFooterTD"><input name="Delete" type="submit" value="Cancella" class="FacetButton"></td></tr>
                
            </table>
        </form>
    </body>
</html>
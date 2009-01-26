<?
include("dblib.inc");
include("clublib.inc");
checkAdmin();
$message = "";
if (isset ($actionflag) && ($actionflag == "Delete")) {
    //$result = delRow($mov_table, "ID_Movimento", $ID_Movimento);
    $result =  connetti_query("update sd_movimenti set Deleted='Y' where ID_Movimento=".$ID_Movimento);
    header("Location: Admin_Movimenti.php");
    exit;	
}

if (! isset($actionflag)) {
    // inizializzo l'array associativo del modulo
    // recupero i dati dell'ordine dal db
    $form = getRow($mov_table, "ID_Movimento", $ID_Movimento);
    if (!($form['Entrate'] == 0)) {
        $Entrata = "SI";
        $form['Importo'] = $form['Entrate'];
    } else {
        $Entrata = "NO";
        $form['Importo'] = $form['Uscite'];
    }
    
    $idVoceBilancioResult = connetti_query("SELECT id_voce_bilancio as ID_VOCE FROM sd_movimenti WHERE id_movimento = ".$ID_Movimento);
    while ($idVoceBilancioRow  = dbms_fetch_array($idVoceBilancioResult)) {  
        $idVoceBilancio = $idVoceBilancioRow['ID_VOCE'];
    }
    
    // converto la data in Unix timestamp
    $ts_Data_Valuta = strtotime ($form['Data_Valuta']);
    $ts_Data_Competenza = strtotime ($form['Data_Competenza']);
		
    // ricavo giorno, mese, anno
    $dataValutaGiorno = strftime("%d", $ts_Data_Valuta);
    $dataValutaMese = strftime("%m", $ts_Data_Valuta);
    $dataValutaAnno = strftime("%Y", $ts_Data_Valuta);
    $dataCompetenzaGiorno = strftime("%d", $ts_Data_Competenza);
    $dataCompetenzaMese = strftime("%m", $ts_Data_Competenza);
    $dataCompetenzaAnno = strftime("%Y", $ts_Data_Competenza);    
    $message = "Sei sicuro di voler rimuovere il movimento?";
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
    <head>
        <title>Cancella Movimento</title>
        <link rel="stylesheet" type="text/css" href="Themes/Facet/Style.css">
    </head>
    <body class="BODY">
        <?include("Header.php");?>
        <form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">
            <!-- flag di invio del modulo -->
            <input type="Hidden" name="actionflag" value="Delete">
            <input type="Hidden" name="ID_Movimento" value="<? print $ID_Movimento ?>">
            <div align="center">
                <font class="FacetFormHeaderFont">
                    Cancella Movimento
                </font>
            </div>
            <table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center" >
                <!-- BEGIN Error -->
                <tr>
                    <td colspan="2" class="FacetDataTD">
                        <?php
                            if (! $message == "") {
                                print "$message";
                            }
                        ?>
                    </td>
                </tr>
                <!-- END Error -->
                <tr>
                    <td class="FacetFieldCaptionTD">Data Valuta &nbsp;</td>
                    <td class="FacetDataTD" >
                        <? 
                            // inserisco il select box per il campo data
                            $select_data = new selectDate("dataValutaGiorno", "dataValutaMese", "dataValutaAnno");
                            $select_data -> daySelected($dataValutaGiorno); 
                            $select_data -> monthSelected($dataValutaMese); 
                            $select_data -> yearSelected($dataValutaAnno); 	  
                            $select_data -> output();
                        ?>
                    </td>
                </tr>
                <tr>
                    <td class="FacetFieldCaptionTD">Data Competenza &nbsp;</td>
                    <td class="FacetDataTD" >
                        <? 
                            // inserisco il select box per il campo data
                            $select_data = new selectDate("dataCompetenzaGiorno", "dataCompetenzaMese", "dataCompetenzaAnno");
                            $select_data -> daySelected($dataCompetenzaGiorno); 
                            $select_data -> monthSelected($dataCompetenzaMese); 
                            $select_data -> yearSelected($dataCompetenzaAnno); 	  
                            $select_data -> output();
                        ?>
                    </td>
                </tr>
                <tr>
                    <td class="FacetFieldCaptionTD">Anno Bilancio &nbsp;</td>
                    <td class="FacetDataTD" >
											<select name="form[Anno_Bilancio]" class="FacetDataTD">
											  <option value="<?php print($form[Anno_Bilancio]);?>"><?php print($form[Anno_Bilancio]);?></option>
												<option value="2005">2005</option>
												<option value="2006">2006</option>
												<option value="2007">2007</option>
												<option value="2008">2008</option>
												<option value="2009">2009</option>
												<option value="2010">2010</option>
											</select>
                    </td>
                </tr>                
                <tr>
                    <td class="FacetFieldCaptionTD">Tipo Pagamento * &nbsp;</td>
                    <td class="FacetDataTD">
                        <? 
                            // inserisco il select box per il campo tipo pagamento
                            $select_pagamento = new selectPagamento();
                            $select_pagamento -> addSelectName("form[Tipo_Pagamento]");
                            $select_pagamento -> addSelected($form["Tipo_Pagamento"]);
                            $select_pagamento -> output();
                        ?>
                    </td>
                </tr>	
                <tr>
                    <td class="FacetFieldCaptionTD">Banca / Cassa *</td>&nbsp;</td>
                    <td class="FacetDataTD">
			<?
                            $selectBank = new selectBank("form[ID_Banca]");
                            $selectBank -> addSelected($form['ID_Banca']);
                            $selectBank -> output();
			?>
                    </td>
                </tr>
                <tr> 
                    <td  class="FacetFieldCaptionTD">Entrata * &nbsp;</td>
                    <td class="FacetDataTD"><input type="Radio" name="Entrata" value="SI" 
                        <?
                            $checked = "";
                            if ($Entrata == "SI") {
                                $checked = "checked";
                                print "checked";
                            }
                        ?>
                    </td>
                </tr>
                <tr>
                    <td  class="FacetFieldCaptionTD">Uscita * &nbsp;</td>
                    <td class="FacetDataTD"><input type="Radio" name="Entrata" value="NO" 
                        <?
                            $checked = "";
                            if ($Entrata == "NO") {
                                $checked = "checked";
                                print "checked";
                            }
                        ?>
                    </td>
                </tr>   
                <tr>
                    <td class="FacetFieldCaptionTD">Voce Bilancio</td>
                    <td class="FacetDataTD"> 
                        <? 
                            // inserisco il select box per le voci bilancio
                            $vociBilancio = new selectVociBilancio("form[ID_Voce_Bilancio]");
                            $vociBilancio -> addSelected($idVoceBilancio);
                            //$vociBilancio -> addSelected($form['ID_Voce_Bilancio']);
                            $vociBilancio -> output();
                            //echo ", idVoceBilancio=".$idVoceBilancio;
                        ?>
                    </td>
                </tr>
                <tr>
                    <td class="FacetFieldCaptionTD">Descrizione &nbsp;<br>(Doc. di riferimento,<br> Codice Assegno, CRO del Bonifico etc.)</td>
                    <td class="FacetDataTD"><textarea name="form[Descrizione]" cols="40" rows="5" class="FacetInput"><? print $form['Descrizione'] ?></textarea></td>
                </tr>
                <tr>
                    <td class="FacetFieldCaptionTD">Soggetto &nbsp;</td>
                    <td class="FacetDataTD"> 
                        <? 
                            // inserisco il select box per i soggetti
                            $soggetto = new selectSoggetto("form[ID_Soggetto]");
                            $soggetto -> addSelected($form['ID_Soggetto']); 
                            $soggetto -> output();
                        ?>
                    </td>
                </tr>
                <tr>
                    <td class="FacetFieldCaptionTD">Importo * &nbsp;</td>
                    <td class="FacetDataTD"><input type="text" name="form[Importo]" value="<?php print $form["Importo"] ?>" maxlength="20" size="10" class="FacetInput">&nbsp;</td>
                </tr>
                <tr>                
                    <td colspan="2" align="right" nowrap class="FacetFooterTD">
                    <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Delete" class="FacetButton"><!-- END Button Insert -->
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

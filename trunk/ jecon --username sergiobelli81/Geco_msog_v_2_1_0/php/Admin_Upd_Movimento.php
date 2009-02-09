<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

if (isset ($actionflag)) {
    //controllo sull'esistenza dei campi obbligatori
    if ( empty($form["Tipo_Pagamento"] ) 
            //||empty($form["ID_Banca"]) 
            || empty($Entrata) 
            || empty($form["Importo"])) {
        $message .= "Il Tipo Pagamento, Entrata/Uscita e Importo sono obbligatori ! <br>";
    }
    
    
    //Controllo esistenza e correttezza Data Valuta
    if ( empty($dataValutaGiorno) 
            || empty($dataValutaMese)   
            || empty($dataValutaAnno)) {
        $message .= "<br>Data Valuta - devi inserire giorno, mese e anno ! <br> Ecco i valori inseriti:";
        $message .= "<br> giorno = ".$dataValutaGiorno;
        $message .= "<br> mese = ".$dataValutaMese;
        $message .= "<br> anno = ".$dataValutaAnno;
    } else {
        // controllo che la data sia corretta	
        if (!checkdate( $dataValutaMese, $dataValutaGiorno, $dataValutaAnno)) {
            $message .= "La data valuta $dataValutaGiorno-$dataValutaMese-$dataValutaAnno non &egrave; corretta! <br>";	
        }
    }
    
    //Controllo esistenza e correttezza Data Competenza
    if ( empty($dataCompetenzaGiorno) 
            || empty($dataCompetenzaMese)   
            || empty($dataCompetenzaAnno)) {
        $message .= "<br>Data Competenza - devi inserire giorno, mese e anno ! <br> Ecco i valori inseriti:";
        $message .= "<br> giorno = ".$dataCompetenzaGiorno;
        $message .= "<br> mese = ".$dataCompetenzaMese;
        $message .= "<br> anno = ".$dataCompetenzaAnno;    
    } else {
        if (!checkdate( $dataCompetenzaMese, $dataCompetenzaGiorno, $dataCompetenzaAnno)) {
            $message .= "La data competenza $dataCompetenzaGiorno-$dataCompetenzaMese-$dataCompetenzaAnno non &egrave; corretta! <br>";	
        }
    }
    
    /*
    CONTROLLI NON + NECESSARI IN QUANTO LA DISTINZIONE TRA CLIENTI E FORNITORI NON ESISTE +
    // controllo i campi se e' un'entrata
    if ($Entrata == "SI" && ($message == "")) {
        // il fornitore non deve essere selezionato
        if ($form['ID_Fornitore']) {
            $message .= "Il fornitore pu&ograve; essere selezionato solo se si tratta di un Uscita!";
        }
    }
    // controllo i campi se e' un'uscita
    if ($Entrata == "NO" && ($message == "") ) {
        // il cliente non deve essere selezionato
        if ($form['ID_Soggetto'] ) {
            $message .= "Il Cliente pu&ograve; essere selezionato solo se si tratta di un Uscita!";
        }
    }*/

    if ($message == "") {// se tutto ok inserisco il nuovo movimento ma prima faccio qualche operazione sulle variabili
        
        // formatto la data valuta
        $form["Data_Valuta"] = strftime ("$dataValutaAnno-$dataValutaMese-$dataValutaGiorno");
        $form["Data_Competenza"] = strftime ("$dataCompetenzaAnno-$dataCompetenzaMese-$dataCompetenzaGiorno");
        
        if ($Entrata == "SI") {
            $form['Entrate'] = $form['Importo'];
            $form['Uscite'] = "";
        }
        if ($Entrata == "NO") {
            $form['Uscite'] =  $form['Importo'];
            $form['Entrate'] = "";
        }
        
        // se non sono selezionati ne il cliente ne il fornitore rimane nulla la ragione sociale --> TODO VEDERE SE E' ANCORA NECESSARIO
        $form['Ragione_Sociale'] = "";
        
        // recupero i dati del soggetto
        if (isset($form['ID_Soggetto'])) {
            $form = array_merge ($form, getRow($subject_table, "ID_Soggetto", $form['ID_Soggetto']));
        }
        
        /*
        FORNITORE NON ESISTE +
        if (isset($form['ID_Fornitore'])) {
            $form = array_merge ($form, getRow($suppliers_table, "ID_Fornitore", $form['ID_Fornitore']));
        }*/
        
        /*
        movUpdate  ($ID_Cliente, $ID_Fornitore, $Ragione_Sociale, $Data_Valuta,
        $Data_Competenza, $Tipo_Pagamento, $Entrate, $Uscite,
        $ID_Banca, $ID_Voce_Bilancio, $Descrizione)*/
        
        $result = movUpdate( 
                 $ID_Movimento,
                 $form['ID_Soggetto'],
                 //$form['Ragione_Sociale'],
                 $form['Data_Valuta'],
                 $form['Data_Competenza'],
                 $form['Anno_Bilancio'],
                 $form['Tipo_Pagamento'],
                 $form['Entrate'],
                 $form['Uscite'],
                 $form['ID_Banca'],
                 $form['ID_Voce_Bilancio'],
                 $Descrizione,
                 $session['admin_logged']);
        
        if (! $result ) {
            die (" Errore di inserimento: ".mysql_error());
        } else {
            $message .= "Movimento aggiornato con successo";	
            header("Location: Admin_Movimenti.php");
            exit;	
        }
    }
}

if (! isset($actionflag)) {
    // inizializzo l'array associativo del modulo
    // recupero i dati dell'ordine dal db    
    //echo "id mov=".$ID_Movimento;
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
}

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
    <head>
        <title>Aggiorna Movimento</title>
        <link rel="stylesheet" type="text/css" href="Themes/Facet/Style.css">
    </head>
    <body class="BODY">
        <?include("Header.php");?>
        <form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">
            <!-- flag di invio del modulo -->
            <input type="Hidden" name="actionflag" value="insert">
            <input type="Hidden" name="ID_Movimento" value="<? print $ID_Movimento ?>">
            <div align="center"><font class="FacetFormHeaderFont">Aggiorna Movimento</font></div>
            <table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center" >
                <!-- BEGIN Error -->
                <tr>
                    <td colspan="2" class="FacetDataTD">
                        <?php
                            if (! $message == "") {echo "message="-$message;
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
                        <? 
                        		// inserisco il select box per gli bilancio
                            $annoBilancio = new selectAnniBilancio("form[Anno_Bilancio]");
                            $annoBilancio -> addSelected($form[Anno_Bilancio]);
                            $annoBilancio -> output();
                        ?>
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
                    <td class="FacetDataTD">
                        <textarea name="Descrizione" cols="40" rows="5" class="FacetInput">
                            <? print $form['Descrizione'] ?>
                        </textarea>
                    </td>
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
                    <td class="FacetDataTD">
                        <input type="text" name="form[Importo]" value="<?php print $form["Importo"] ?>" maxlength="20" size="10" class="FacetInput">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="right" nowrap class="FacetFooterTD">
                        <!-- BEGIN Button Insert -->
                        <input name="Insert" type="submit" value="Update" class="FacetButton">
                        <!-- END Button Insert -->
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>


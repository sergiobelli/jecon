<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

if (isset ($actionflag)) {
    //controllo sull'esistenza dei campi obbligatori
    // print $form['ID_Banca'];
    if (empty($form["Tipo_Pagamento"] ) 
            || ($form['ID_Banca'] == "") 
            || empty($Entrata) 
            || empty($form["Importo"])) {
        $message .= "Il Tipo Pagamento, la Banca/Cassa, l'Entrata/Uscita e l'Importo sono campi obbligatori ! <br>";
    }
    
    if (empty($dataValutaGiorno) 
            || empty($dataValutaMese)   
            || empty($dataValutaAnno)) {
        $message .= "Data valuta - devi inserire giorno, mese e anno ! <br>";
    }
    if (empty($dataCompetenzaGiorno) 
            || empty($dataCompetenzaMese)   
            || empty($dataCompetenzaAnno)) {
        $message .= "Data competenza - devi inserire giorno, mese e anno ! <br>";
    }
    
    // exit;
    // controllo che la data sia corretta	
    if (!checkdate( $dataValutaMese, $dataValutaGiorno, $dataValutaAnno)) {
        $message .= "La data valuta $$dataValutaGiorno-$dataValutaMese-$dataValutaAnno non &egrave; corretta! <br>";
    }
    if (!checkdate( $dataCompetenzaMese, $dataCompetenzaGiorno, $dataCompetenzaAnno)) {
        $message .= "La data competenza $$dataCompetenzaGiorno-$dataCompetenzaMese-$dataCompetenzaAnno non &egrave; corretta! <br>";
    }
    
    // controllo i campi se e' un'uscita
    if (isset($Entrata) && ($Entrata == "SI") && ($message == "")) {
        // il fornitore non deve essere selezionato 
        // if ($form['ID_Fornitore'])
        //	$message .= "Il fornitore pu&ograve; essere selezionato solo se si tratta di un Uscita!";
    }

    /*// controllo i campi se e' un'entrata
    if (isset($Entrata) && ($Entrata == "NO") && ($message == "")) {
        // il cliente non deve essere selezionato
        if ($form['ID_Soggetto']) {
            $message .= "Il Cliente pu&ograve; essere selezionato solo se si tratta di un Uscita!";
        }
    }*/
    
    // se e' un movimento bancario, la banca deve essere selezionata
    if ($message == "") {
        // se tutto ok inserisco il nuovo movimento ma prima faccio qualche operazione sulle variabili
                
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
        movInsert  ($ID_Cliente, $ID_Fornitore, $Ragione_Sociale, $Data_Valuta,
        $Data_Competenza, $Tipo_Pagamento, $Entrate, $Uscite,
        $ID_Banca, $ID_Voce_Bilancio, $Descrizione)*/
        
        
        $result = movInsert( 
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
            $message .= "Movimento inserito con successo";
            header("Location: Admin_Movimenti.php");
            exit;	
        }
    }
}

if (! isset($actionflag)) {
    // inizializzo l'array associativo del modulo
    $form["Anno_Bilancio"] = "";
    $form["Tipo_Pagamento"] = "";
    $form["ID_Banca"] = "";
    $form["VociBilancio"] = "";
    $form["Descrizione"] = "";
    $form["Oggetto"] = "";
    $form["ID_Soggetto"] = "";
    $form["Importo"] = "";
    $Entrata = "";
    $dataValutaGiorno = "";
    $dataValutaMese = "";
    $dataValutaAnno = "";
    $dataCompetenzaGiorno = "";
    $dataCompetenzaMese = "";
    $dataCompetenzaAnno = "";    
}
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
    <head>
        <title>Nuovo Movimento</title>
        <link rel="stylesheet" type="text/css" href="Themes/Facet/Style.css">
    </head>
    <body class="BODY">
        <?include("Header.php");?>
        <form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">
            <!-- flag di invio del modulo -->
            <input type="Hidden" name="actionflag" value="insert">
            <div align="center">
                <font class="FacetFormHeaderFont">Nuovo Movimento</font>
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
                        <? 
                        		$annoCorrente = date("Y",time() + $timeadjust);
                            // inserisco il select box per gli bilancio
                            $annoBilancio = new selectAnniBilancio("form[Anno_Bilancio]");
                            $annoBilancio -> addSelected($annoCorrente);
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
                            if (isset($Entrata) &&  ($Entrata == "SI")) {
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
                            if (isset($Entrata) && ($Entrata == "NO")) {
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
                            $vociBilancio -> output();
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
                    <td class="FacetFieldCaptionTD">Importo (xxx.xx)* &nbsp;</td>
                    <td class="FacetDataTD"><input type="text" name="form[Importo]" value="<?php print $form["Importo"] ?>" maxlength="20" size="10" class="FacetInput">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" align="right" nowrap class="FacetFooterTD">
                    <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Insert" class="FacetButton"><!-- END Button Insert -->
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>


<?php
class VoceBilancioManager {

    function salva ($voce, $bilancio) {
        return connetti_query(
                "
                insert into     sd_voci_bilancio 
                (sd_voci_bilancio.voce, sd_voci_bilancio.bilancio)
                values
                ('".$voce."', '".$bilancio."')                
                "
            );
    }
    function modifica ($idVoceBilancio, $voce, $bilancio) {
        return connetti_query(
                "
                update      sd_voci_bilancio 
                set         sd_voci_bilancio.voce           = '".$voce."',  
                            sd_voci_bilancio.bilancio       = '".$bilancio."' 
                where       sd_voci_bilancio.id             = ".$idVoceBilancio." 
                "
            );
    }
    function cancella ($idVoceBilancio) {
        return connetti_query(
                "
                delete from sd_voci_bilancio                 
                where       sd_voci_bilancio.id             = ".$idVoceBilancio."              
                "
            );
    }
    function prendi ($idVoceBilancio) {
        return connetti_query(
                "
                select      * 
                from        sd_voci_bilancio                
                where       sd_voci_bilancio.id             = ".$idVoceBilancio."              
                "
            );
    }
    function elenco () {
        return connetti_query("select * from sd_voci_bilancio");
    }
    function elencoFiltro ($filtro) {
        return connetti_query("select * from sd_voci_bilancio where sd_voci_bilancio.voce like '%".$filtro."%' ");
    }
    function elencoValide () {
        return connetti_query(
            "
            select     * 
            from       sd_voci_bilancio 
            where      sd_voci_bilancio.bilancio = '1'
            order by   sd_voci_bilancio.voce
            "
        );
    }
    
}

?>

<?php
class SoggettoManager {
    function save ($soggetto) {}
    function update ($soggetto) {}
    function delete ($soggetto) {}
    function get ($idSoggetto) {}
    function lists () {
        return connetti_query("select * from sd_soggetti where deleted = 'N' order by cognome, nome, ragione_sociale");
    }
}

/*
class Soggetto {
    private $ID_Soggetto;
    public getID_Soggetto() {return $ID_Soggetto;}
    public setID_Soggetto($val) {$ID_Soggetto = $val;}
    

    private $Ragione_Sociale;
    public getRagione_Sociale() {return $Ragione_Sociale;}
    public setRagione_Sociale($val) {$Ragione_Sociale = $val;}
    

    private $Cognome;
    public getCognome() {return $Cognome;}
    public setCognome($val) {$Cognome = $val;}
    

    private $Nome;
    public getNome() {return $Nome;}
    public setNome($val) {$Nome = $val;}
    

    private $PI;
    public getPI() {return $PI;}
    public setPI($val) {$PI = $val;}
    
    
    private $CF;
    public getCF() {return $CF;}
    public setCF($val) {$CF = $val;}

    
    private $Descrizione;
    public getDescrizione() {return $Descrizione;}
    public setDescrizione($val) {$Descrizione = $val;}
    
    
    private $Tipo;
    public getTipo() {return $Tipo;}
    public setTipo($val) {$Tipo = $val;}
    
    
Indirizzo
Citta
CAP
Provincia
Telefono
Telefono2
Telefono3
Fax
Cell
E_mail
Password
Web
Deleted
Privacy
}
*/
?>
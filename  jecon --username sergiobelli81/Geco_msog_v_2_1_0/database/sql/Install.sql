<?
$array_of_query = array 
(
"
 CREATE TABLE ".$table_prefix."_acquisti 
 (
  ID_Cliente int(8) NOT NULL default '0',
  ID_Ordine int(12) NOT NULL auto_increment,
  Progressivo_Fattura int(6) NOT NULL default '0',
  ID_Articolo int(10) NOT NULL default '0',
  Prezzo decimal(5,2) NOT NULL default '0.00',
  Quantita int(4) NOT NULL default '0',
  IVA int(2) NOT NULL default '0',
  ID_Pagamento varchar(30) NOT NULL default '',
  Data_Ordine date NOT NULL default '0000-00-00',
  Data_Evasione date NOT NULL default '0000-00-00',
  Data_Scadenza date NOT NULL default '0000-00-00',
  Ragione_Sociale varchar(100) NOT NULL default '',
  Cognome varchar(100) NOT NULL default '',
  Nome varchar(100) NOT NULL default '',
  Indirizzo varchar(100) NOT NULL default '',
  Civico varchar(12) NOT NULL default '',
  Citta varchar(100) NOT NULL default '',
  CAP varchar(6) NOT NULL default '',
  Provincia char(2) NOT NULL default '',
  Stato varchar(150) NOT NULL default '',
  Telefono varchar(20) NOT NULL default '',
  Fax varchar(20) NOT NULL default '',
  E_mail varchar(100) NOT NULL default '',
  PRIMARY KEY  (ID_Ordine)
  ) TYPE=MyISAM
",
"
 CREATE TABLE ".$table_prefix."_admin 
 (
  Cod_utente varchar(50) NOT NULL default '',
  Cognome varchar(30) NOT NULL default '',
  Nome varchar(30) NOT NULL default '',
  Livello int(2) NOT NULL default '0',
  Login varchar(50) NOT NULL default '',
  Password varchar(8) NOT NULL default ''
 ) TYPE=MyISAM
",
"
# --------------------------------------------------------

#
# Struttura della tabella `anagrafica`
#

CREATE TABLE ".$table_prefix."_anagrafica (
  ID_Cliente int(10) NOT NULL auto_increment,
  Abilitato smallint(6) NOT NULL default '0',
  Ragione_Sociale varchar(100) NOT NULL default '',
  Cognome varchar(30) NOT NULL default '',
  Nome varchar(30) NOT NULL default '',
  PI varchar(16) NOT NULL default '',
  CF varchar(16) NOT NULL default '',
  Indirizzo varchar(60) NOT NULL default '',
  Citta varchar(60) NOT NULL default '',
  CAP varchar(5) NOT NULL default '',
  Provincia char(2) NOT NULL default '',
  Telefono varchar(20) NOT NULL default '',
  Telefono2 varchar(20) default NULL,
  Telefono3 varchar(20) default NULL,
  Fax varchar(20) default NULL,
  Cell varchar(20) default NULL,
  E_mail varchar(100) default NULL,
  Login varchar(100) default NULL,
  Password varchar(8) default NULL,
  Web varchar(50) default NULL,
  PRIMARY KEY  (ID_Cliente),
  UNIQUE KEY PI (PI),
  UNIQUE KEY E_mail (E_mail)
) TYPE=MyISAM
",
"
# --------------------------------------------------------

#
# Struttura della tabella `clienti`
#

CREATE TABLE ".$table_prefix."_clienti (
  ID_Cliente int(10) NOT NULL auto_increment,
  Ragione_Sociale varchar(100) default NULL,
  Cognome varchar(30) NOT NULL default '',
  Nome varchar(30) NOT NULL default '',
  PI varchar(16) default NULL,
  CF varchar(16) NOT NULL default '',
  Indirizzo varchar(60) NOT NULL default '',
  Citta varchar(60) NOT NULL default '',
  CAP varchar(5) NOT NULL default '',
  Provincia char(2) NOT NULL default '',
  Telefono varchar(20) NOT NULL default '',
  Telefono2 varchar(20) default NULL,
  Telefono3 varchar(20) default NULL,
  Fax varchar(20) default NULL,
  Cell varchar(20) default NULL,
  E_mail varchar(100) default NULL,
  Password varchar(8) default NULL,
  Web varchar(50) default NULL,
  PRIMARY KEY  (ID_Cliente),
  UNIQUE KEY E_mail (E_mail),
  UNIQUE KEY PI (PI)
) TYPE=MyISAM
",
"
# --------------------------------------------------------

#
# Struttura della tabella `codici_iva`
#

CREATE TABLE ".$table_prefix."_codici_iva (
  Codice varchar(12) NOT NULL default '',
  Descrizione varchar(50) NOT NULL default '',
  Percentuale varchar(6) NOT NULL default '',
  Indetraibile varchar(6) NOT NULL default ''
) TYPE=MyISAM
",
"
# --------------------------------------------------------

#
# Struttura della tabella `fatture`
#

CREATE TABLE ".$table_prefix."_fatture (
  Progressivo_Fattura int(10) NOT NULL auto_increment,
  Prog_Fattura_Annuo int(10) default NULL,
  ID_Cliente int(10) NOT NULL default '0',
  ID_Pagamento varchar(30) NOT NULL default '',
  Data_Fattura date NOT NULL default '0000-00-00',
  Ragione_Sociale varchar(200) NOT NULL default '',
  PI varchar(16) NOT NULL default '',
  Indirizzo varchar(100) NOT NULL default '',
  Citta varchar(60) NOT NULL default '',
  CAP varchar(5) NOT NULL default '',
  Civico varchar(10) NOT NULL default '',
  Provincia char(2) NOT NULL default '',
  Descrizione text NOT NULL,
  Totale decimal(5,2) NOT NULL default '0.00',
  Tipo_Pagamento varchar(20) NOT NULL default '',
  Scadenza date NOT NULL default '0000-00-00',
  Note text NOT NULL,
  PRIMARY KEY  (Progressivo_Fattura)
) TYPE=MyISAM
",
"
# --------------------------------------------------------

#
# Struttura della tabella `fornitori`
#

CREATE TABLE ".$table_prefix."_fornitori (
  ID_Fornitore int(10) NOT NULL auto_increment,
  Ragione_Sociale varchar(100) NOT NULL default '',
  Cognome varchar(30) NOT NULL default '',
  Nome varchar(30) NOT NULL default '',
  PI varchar(16) NOT NULL default '',
  CF varchar(16) NOT NULL default '',
  Indirizzo varchar(60) NOT NULL default '',
  Citta varchar(60) NOT NULL default '',
  CAP varchar(5) NOT NULL default '',
  Civico varchar(10) NOT NULL default '',
  Provincia char(2) NOT NULL default '',
  Telefono varchar(20) NOT NULL default '',
  Telefono2 varchar(20) default NULL,
  Telefono3 varchar(20) default NULL,
  Fax varchar(20) default NULL,
  Cell varchar(20) default NULL,
  E_mail varchar(100) default NULL,
  Password varchar(8) default NULL,
  Web varchar(50) default NULL,
  PRIMARY KEY  (ID_Fornitore),
  UNIQUE KEY PI (PI),
  UNIQUE KEY E_mail (E_mail)
) TYPE=MyISAM
",
"
# --------------------------------------------------------

#
# Struttura della tabella `_ordini`
#

CREATE TABLE ".$table_prefix."_ordini (
  ID_Cliente int(8) NOT NULL default '0',
  ID_Ordine int(12) NOT NULL auto_increment,
  Protocollo varchar(30) NOT NULL default '',
  Oggetto varchar(100) NOT NULL default '',
  Progressivo_Fattura int(6) NOT NULL default '0',
  ID_Articolo int(10) NOT NULL default '0',
  Prezzo decimal(10,2) NOT NULL default '0.00',
  Quantita int(4) NOT NULL default '0',
  Iva int(2) NOT NULL default '0',
  ID_Pagamento varchar(30) NOT NULL default '',
  Tipo_Pagamento varchar(30) NOT NULL default '',
  Data_Ordine date NOT NULL default '0000-00-00',
  Data_Evasione date NOT NULL default '0000-00-00',
  Data_Scadenza date NOT NULL default '0000-00-00',
  Ragione_Sociale varchar(100) NOT NULL default '',
  PI varchar(16) NOT NULL default '',
  CF varchar(16) NOT NULL default '',
  Cognome varchar(100) NOT NULL default '',
  Nome varchar(100) NOT NULL default '',
  Indirizzo varchar(100) NOT NULL default '',
  Civico varchar(12) NOT NULL default '',
  Citta varchar(100) NOT NULL default '',
  CAP varchar(6) NOT NULL default '',
  Provincia char(2) NOT NULL default '',
  Stato varchar(150) NOT NULL default '',
  Telefono varchar(20) NOT NULL default '',
  Fax varchar(20) NOT NULL default '',
  E_mail varchar(100) NOT NULL default '',
  Status varchar(30) NOT NULL default '',
  PRIMARY KEY  (ID_Ordine)
) TYPE=MyISAM
",
"
CREATE TABLE sd_banche (
  ID_Banca int(4) NOT NULL auto_increment,
  Banca varchar(50) NOT NULL default '',
  Indirizzo varchar(100) NOT NULL default '',
  Agenzia varchar(4) NOT NULL default '',
  Abi varchar(6) NOT NULL default '',
  Cab varchar(6) NOT NULL default '',
  Conto varchar(12) NOT NULL default '',
  Titolare varchar(100) NOT NULL default '',
  PRIMARY KEY  (ID_Banca),
  KEY ID_Banca (ID_Banca)
) TYPE=MyISAM
");
?>


# phpMyAdmin MySQL-Dump
# version 2.2.6
# http://phpwizard.net/phpMyAdmin/
# http://www.phpmyadmin.net/ (download page)
#
# Host: localhost
# Generato il: 30 Set, 2003 at 01:30 PM
# Versione MySQL: 3.23.39
# Versione PHP: 4.1.2
# Database : `geco`
# --------------------------------------------------------

#
# Struttura della tabella `sd_acquisti`
#

CREATE TABLE sd_acquisti (
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
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_admin`
#

CREATE TABLE sd_admin (
  Cod_utente varchar(50) NOT NULL default '',
  Cognome varchar(30) NOT NULL default '',
  Nome varchar(30) NOT NULL default '',
  Livello int(2) NOT NULL default '0',
  Login varchar(50) NOT NULL default '',
  Password varchar(8) NOT NULL default ''
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_anagrafica`
#

CREATE TABLE sd_anagrafica (
  ID_Azienda int(10) NOT NULL auto_increment,
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
  Web varchar(50) default NULL,
  PRIMARY KEY  (ID_Azienda),
  UNIQUE KEY E_mail (E_mail),
  UNIQUE KEY PI (PI)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_banche`
#

CREATE TABLE sd_banche (
  ID_Banca int(4) NOT NULL auto_increment,
  Banca varchar(50) NOT NULL default '',
  Indirizzo varchar(100) NOT NULL default '',
  Agenzia varchar(4) NOT NULL default '',
  Abi varchar(6) NOT NULL default '',
  Cab varchar(6) NOT NULL default '',
  Conto varchar(12) NOT NULL default '',
  Titolare varchar(100) NOT NULL default '',
  PRIMARY KEY  (ID_Banca)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_clienti`
#

CREATE TABLE sd_clienti (
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
  PRIMARY KEY  (ID_Cliente)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_codici_iva`
#

CREATE TABLE sd_codici_iva (
  Codice varchar(12) NOT NULL default '',
  Descrizione varchar(50) NOT NULL default '',
  Percentuale varchar(6) NOT NULL default '',
  Indetraibile varchar(6) NOT NULL default ''
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_fatture_acquisto`
#

CREATE TABLE sd_fatture_acquisto (
  ID_Fattura_Acquisto int(10) NOT NULL auto_increment,
  ID_Fornitore int(10) NOT NULL default '0',
  ID_Pagamento varchar(30) NOT NULL default '',
  N_Fattura varchar(12) NOT NULL default '',
  Data_Fattura date NOT NULL default '0000-00-00',
  Ragione_Sociale varchar(200) NOT NULL default '',
  PI varchar(16) NOT NULL default '',
  Indirizzo varchar(100) NOT NULL default '',
  Citta varchar(60) NOT NULL default '',
  CAP varchar(5) NOT NULL default '',
  Provincia char(2) NOT NULL default '',
  Descrizione text NOT NULL,
  Totale decimal(10,2) NOT NULL default '0.00',
  Imposta decimal(10,2) NOT NULL default '0.00',
  Tipo_Pagamento varchar(20) NOT NULL default '',
  Scadenza date NOT NULL default '0000-00-00',
  Note text NOT NULL,
  PRIMARY KEY  (ID_Fattura_Acquisto)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_fatture_vendita`
#

CREATE TABLE sd_fatture_vendita (
  ID_Fattura int(10) NOT NULL auto_increment,
  Prog_Fattura_Annuo int(10) default NULL,
  ID_Cliente int(10) NOT NULL default '0',
  ID_Banca varchar(10) NOT NULL default '',
  ID_Pagamento varchar(30) NOT NULL default '',
  Data_Fattura date NOT NULL default '0000-00-00',
  Ragione_Sociale varchar(200) NOT NULL default '',
  PI varchar(16) NOT NULL default '',
  Indirizzo varchar(100) NOT NULL default '',
  Citta varchar(60) NOT NULL default '',
  CAP varchar(5) NOT NULL default '',
  Provincia char(2) NOT NULL default '',
  Descrizione text NOT NULL,
  Totale decimal(10,2) NOT NULL default '0.00',
  Tipo_Pagamento varchar(20) NOT NULL default '',
  Scadenza date NOT NULL default '0000-00-00',
  Note text NOT NULL,
  PRIMARY KEY  (ID_Fattura)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_fornitori`
#

CREATE TABLE sd_fornitori (
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
  PRIMARY KEY  (ID_Fornitore)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_movimenti`
#

CREATE TABLE sd_movimenti (
  ID_Movimento int(12) NOT NULL auto_increment,
  ID_Cliente varchar(12) NOT NULL default '',
  ID_Fornitore varchar(12) NOT NULL default '',
  Ragione_Sociale varchar(100) NOT NULL default '',
  Data_Valuta date NOT NULL default '0000-00-00',
  Tipo_Pagamento varchar(100) NOT NULL default '',
  Entrate decimal(8,2) NOT NULL default '0.00',
  Uscite decimal(8,2) NOT NULL default '0.00',
  ID_Banca varchar(12) NOT NULL default '',
  Descrizione text NOT NULL,
  PRIMARY KEY  (ID_Movimento,ID_Movimento),
  FULLTEXT KEY Tipo_Pagamento (Tipo_Pagamento)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_note_credito`
#

CREATE TABLE sd_note_credito (
  ID_Nota int(10) NOT NULL auto_increment,
  Prog_Nota_Annuo int(10) NOT NULL default '0',
  ID_Fattura int(10) default NULL,
  ID_Cliente int(10) NOT NULL default '0',
  Ragione_Sociale varchar(200) NOT NULL default '',
  PI varchar(16) NOT NULL default '',
  Indirizzo varchar(100) NOT NULL default '',
  Citta varchar(50) NOT NULL default '',
  CAP varchar(5) NOT NULL default '',
  Provincia char(2) NOT NULL default '',
  ID_Banca varchar(10) NOT NULL default '',
  ID_Pagamento varchar(30) NOT NULL default '',
  Data_Nota date NOT NULL default '0000-00-00',
  Descrizione text NOT NULL,
  Iva int(2) NOT NULL default '0',
  Totale decimal(10,2) NOT NULL default '0.00',
  Tipo_Pagamento varchar(20) NOT NULL default '',
  Note text NOT NULL,
  PRIMARY KEY  (ID_Nota)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_note_credito_fornitori`
#

CREATE TABLE sd_note_credito_fornitori (
  ID_Nota int(10) NOT NULL auto_increment,
  N_Nota varchar(10) NOT NULL default '0',
  ID_Fattura_Acquisto int(10) default NULL,
  ID_Fornitore int(10) NOT NULL default '0',
  Ragione_Sociale varchar(200) NOT NULL default '',
  PI varchar(16) NOT NULL default '',
  Indirizzo varchar(100) NOT NULL default '',
  Citta varchar(50) NOT NULL default '',
  CAP varchar(5) NOT NULL default '',
  Provincia char(2) NOT NULL default '',
  ID_Pagamento varchar(30) NOT NULL default '',
  Data_Nota date NOT NULL default '0000-00-00',
  Descrizione text NOT NULL,
  Imposta decimal(10,2) NOT NULL default '0.00',
  Totale decimal(10,2) NOT NULL default '0.00',
  Tipo_Pagamento varchar(20) NOT NULL default '',
  Note text NOT NULL,
  PRIMARY KEY  (ID_Nota)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_ordini`
#

CREATE TABLE sd_ordini (
  ID_Cliente int(8) NOT NULL default '0',
  ID_Ordine int(12) NOT NULL auto_increment,
  Protocollo varchar(30) NOT NULL default '',
  Oggetto varchar(100) NOT NULL default '',
  ID_Fattura int(10) NOT NULL default '0',
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
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_scadenzario`
#

CREATE TABLE sd_scadenzario (
  ID_Scadenza int(12) NOT NULL auto_increment,
  ID_Fattura_Acquisto varchar(12) NOT NULL default '0',
  ID_Fattura_Vendita varchar(12) NOT NULL default '',
  Ragione_Sociale varchar(100) NOT NULL default '',
  Scadenza date NOT NULL default '0000-00-00',
  ID_Banca varchar(12) NOT NULL default '',
  Entrate decimal(8,2) NOT NULL default '0.00',
  Uscite decimal(8,2) NOT NULL default '0.00',
  Tipo_Pagamento varchar(50) NOT NULL default '',
  ID_Cliente varchar(12) NOT NULL default '',
  ID_Fornitore varchar(12) NOT NULL default '',
  ID_Nota_Fornitore varchar(12) NOT NULL default '',
  ID_Nota_Cliente varchar(12) NOT NULL default '',
  ID_Movimento varchar(12) NOT NULL default '',
  PRIMARY KEY  (ID_Scadenza),
  FULLTEXT KEY ID_Banca (ID_Banca)
) TYPE=MyISAM;
# --------------------------------------------------------

#
# Struttura della tabella `sd_tipi_pagamento`
#

CREATE TABLE sd_tipi_pagamento (
  ID_Tipo_Pagamento int(3) NOT NULL auto_increment,
  Tipo_Pagamento varchar(30) NOT NULL default '',
  PRIMARY KEY  (ID_Tipo_Pagamento)
) TYPE=MyISAM;


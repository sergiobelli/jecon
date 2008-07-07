# MySQL-Front Dump 2.5
#
# Host: localhost   Database: geco
# --------------------------------------------------------
# Server version 4.0.12-nt


#
# Table structure for table 'sd_acquisti'
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



#
# Dumping data for table 'sd_acquisti'
#



#
# Table structure for table 'sd_admin'
#

CREATE TABLE sd_admin (
  ID_Admin int(12) NOT NULL auto_increment,
  Cognome varchar(30) NOT NULL default '',
  Nome varchar(30) NOT NULL default '',
  Livello int(2) NOT NULL default '0',
  Login varchar(50) NOT NULL default '',
  Password varchar(8) NOT NULL default '',
  PRIMARY KEY  (ID_Admin)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_admin'
#

INSERT INTO sd_admin VALUES("1", "Belli", "Sergio", "0", "sergio.belli", "sergio");
INSERT INTO sd_admin VALUES("2", "Baron", "Andrea", "0", "andrea.baron", "andrea");


#
# Table structure for table 'sd_anagrafica'
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
  UNIQUE KEY PI (PI),
  UNIQUE KEY E_mail (E_mail)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_anagrafica'
#

INSERT INTO sd_anagrafica VALUES("1", "0", "Musica Societa Operaia di Mutuo Soccorso", "Banda", "Musicale", "91001100030", "91001100030", "Via Rosa Massara 18", "Grignasco", "28075", "NO", "0163417130", "0163834668", "", "", "", "", "");


#
# Table structure for table 'sd_banche'
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



#
# Dumping data for table 'sd_banche'
#

INSERT INTO sd_banche VALUES("1", "Banca del Credito Cooperativo", "Via Boh, 32", "Cent", "08234", "11345", "565658", "Gnauz Spa");
INSERT INTO sd_banche VALUES("2", "Cassa", "", "", "", "", "", "");
INSERT INTO sd_banche VALUES("3", "Banca Intesa", "", "", "03268", "22300", "aaaa", "saaaa");


#
# Table structure for table 'sd_clienti'
#

CREATE TABLE sd_clienti (
  ID_Cliente int(10) NOT NULL auto_increment,
  Ragione_Sociale varchar(100) default NULL,
  Cognome varchar(100) NOT NULL default '',
  Nome varchar(30) NOT NULL default '',
  PI varchar(16) default NULL,
  CF varchar(16) default NULL,
  Indirizzo varchar(60) default NULL,
  Citta varchar(60) default NULL,
  CAP varchar(5) default NULL,
  Provincia char(2) default NULL,
  Telefono varchar(20) default NULL,
  Telefono2 varchar(20) default NULL,
  Telefono3 varchar(20) default NULL,
  Fax varchar(20) default NULL,
  Cell varchar(20) default NULL,
  E_mail varchar(100) default NULL,
  Password varchar(8) default NULL,
  Web varchar(50) default NULL,
  PRIMARY KEY  (ID_Cliente)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_clienti'
#

INSERT INTO sd_clienti VALUES("2", "", "Contardi", "Giuseppe", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("3", "", "Contardi", "Marisa", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("4", "", "Cacciami", "Maria Teresa", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("5", "", "Gattinara", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("6", "", "Piane di", "Serravalle Sesia", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("7", "", "Comitato Carnevale", "Grignasco", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("8", "", "Club Patacioi", "Ara", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("9", "", "Famiglia", "Perazzi", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("10", "", "Famiglia Pozzi", "(Marica+Vanni)", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("11", "", "Famiglia", "DaParé", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("12", "", "Vinzio", "Claudia", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("13", "", "Vinzio", "Vittorino", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("14", "", "Vinzio Rag.", "Laura", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("15", "", "Festa Bianchet", "Gianfranca", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("16", "", "Borelli", "Michele", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("17", "", "Franchi", "Carlo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("18", "", "Ventura", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("19", "", "Fontaneto", "Marcello", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("20", "", "Frascotti", "Giuliano", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("21", "", "Vinzio", "Ermanno", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("22", "", "Di Lernia", "Giuseppe", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("23", "", "Famiglia Agazzini", "(Linda+Lore)", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("24", "", "Pozzi", "Carlo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("25", "", "Pagnoni", "Federico", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("26", "", "Pontini", "Andrea", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("27", "", "Cascio", "Antonino+Annalisa", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("28", "", "Squaratti", "Paolo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("29", "", "Aprile", "Mauro", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("30", "", "Belli", "Sergio", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("31", "", "Mischiatti", "Dino", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("32", "", "Pezzolato", "Luca", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("33", "", "Ritorno", "Cassa", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("34", "", "Giuliani", "Roberto", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("35", "", "Aleppo", "Athos", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("36", "", "Baglioni", "Angelo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("37", "", "Balzarini", "Ernesto", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("38", "", "Borgato", "Giuliano", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("39", "", "Canobio", "Giuseppe", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("40", "", "Del Villani", "Luigi", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("41", "", "Franzosi", "Luciano", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("42", "", "Giordani", "Elio", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("43", "", "Gobbi", "Angelo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("44", "", "Molli", "Luigi", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("45", "", "Negri", "Renato", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("46", "", "Nobile", "Piera", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("47", "", "Rabaglio", "Giovanni", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("48", "", "Stefani", "Davide", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("49", "", "Teraroli", "Gianni", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("50", "", "Valsesia", "Valentino", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("51", "", "Vinzio", "Fernando", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("52", "", "Mora", "Gaudenzio", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("53", "", "Mora", "Flora", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("54", "", "Martinetti", "Ugo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("55", "", "Moretti", "Eleonora", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("56", "", "Mancin", "Gabriele", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("57", "", "Magistrini", "Giacomo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("58", "", "Schizzerato", "Leonardo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("59", "", "Anpi Sezione", "Grignasco", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("60", "", "Velatta", "Laura", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("61", "", "Priori", "Festa Patronale Rovasenda", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("62", "", "ProLoco", "Rovasenda", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti VALUES("63", "", "Saldo Cassa", "Iniziale", "", "", "", "", "", "", "", "", "", "", "", "", "", "");


#
# Table structure for table 'sd_codici_iva'
#

CREATE TABLE sd_codici_iva (
  Codice varchar(12) NOT NULL default '',
  Descrizione varchar(50) NOT NULL default '',
  Percentuale varchar(6) NOT NULL default '',
  Indetraibile varchar(6) NOT NULL default ''
) TYPE=MyISAM;



#
# Dumping data for table 'sd_codici_iva'
#

INSERT INTO sd_codici_iva VALUES("20", "20%", "20", "0");
INSERT INTO sd_codici_iva VALUES("10", "10%", "10", "0");


#
# Table structure for table 'sd_fatture_acquisto'
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



#
# Dumping data for table 'sd_fatture_acquisto'
#



#
# Table structure for table 'sd_fatture_vendita'
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



#
# Dumping data for table 'sd_fatture_vendita'
#



#
# Table structure for table 'sd_fornitori'
#

CREATE TABLE sd_fornitori (
  ID_Fornitore int(10) NOT NULL auto_increment,
  Ragione_Sociale varchar(100) default NULL,
  Cognome varchar(30) NOT NULL default '',
  Nome varchar(30) NOT NULL default '',
  PI varchar(16) default NULL,
  CF varchar(16) default NULL,
  Indirizzo varchar(60) default NULL,
  Citta varchar(60) default NULL,
  CAP varchar(5) default NULL,
  Civico varchar(10) default NULL,
  Provincia char(2) default NULL,
  Telefono varchar(20) default NULL,
  Telefono2 varchar(20) default NULL,
  Telefono3 varchar(20) default NULL,
  Fax varchar(20) default NULL,
  Cell varchar(20) default NULL,
  E_mail varchar(100) default NULL,
  Password varchar(8) default NULL,
  Web varchar(50) default NULL,
  PRIMARY KEY  (ID_Fornitore)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_fornitori'
#

INSERT INTO sd_fornitori VALUES("2", "", "Platini", "Fabrizio", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori VALUES("11", "", "Borelli", "Ezio", "", "", "", "", "", NULL, "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori VALUES("4", "", "De Angelis", "Roberto", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori VALUES("3", "", "Giuliani", "Roberto", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori VALUES("5", "", "Anbima", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori VALUES("7", "", "Barlassina", "Patrizia", "", "", "", "", "", NULL, "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori VALUES("10", "", "Vanni", "Marica", "", "", "", "", "", NULL, "", "", "", "", "", "", "", "", "");


#
# Table structure for table 'sd_movimenti'
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
  Id_Voce_Bilancio tinyint(3) unsigned NOT NULL default '0',
  Data_Competenza date NOT NULL default '0000-00-00',
  Deleted char(1) NOT NULL default 'N',
  ID_Admin varchar(50) NOT NULL default '0',
  PRIMARY KEY  (ID_Movimento,ID_Movimento),
  FULLTEXT KEY Tipo_Pagamento (Tipo_Pagamento)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_movimenti'
#

INSERT INTO sd_movimenti VALUES("3", "", "2", "", "2006-05-22", "Contanti", "0.00", "430.00", "2", "Pagamento Maestri\r\nPlatini Fabrizio\r\nMarzo/Aprile 2006", "2", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("4", "", "4", "", "2006-05-22", "Contanti", "0.00", "240.00", "2", "Pagamento Maestri\r\nDeAngelis Roberto\r\n21/10/2005 - 24/03/2006", "2", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("5", "", "3", "", "2006-05-22", "Contanti", "0.00", "253.50", "2", "Pagamento Maestri\r\nGiuliani Roberto\r\nMarzo/Aprile 2006", "2", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("6", "", "5", "", "2006-05-22", "Contanti", "0.00", "202.47", "2", "Tesseramento Anbima 2006", "17", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("7", "", "10", "", "2006-03-16", "Contanti", "0.00", "13.50", "2", "Spese Postali\r\nAcquisto Francobolli\r\na Vanni Marica", "3", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("8", "2", "", "", "2006-05-11", "Contanti", "12.00", "0.00", "2", "Tesseramento 2006\r\nContardi Giuseppe", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("9", "3", "", "", "2006-05-11", "Contanti", "12.00", "0.00", "2", "Tesseramento 2006 Contardi Marisa", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("10", "4", "", "", "2006-05-11", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nCacciami Maria Teresa", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("11", "5", "", "", "2006-05-17", "Contanti", "500.00", "0.00", "2", "Compenso Servizio di Gattinara", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("12", "6", "", "", "2006-05-14", "Contanti", "270.00", "0.00", "2", "Compenso Servizio Piane di Serravalle Sesia", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("13", "7", "", "", "2006-02-28", "Assegno Bancario", "500.00", "0.00", "2", "Servizio Carnevale Grignasco \"Giubiacia\"\r\nAssegno", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("14", "8", "", "", "2006-05-22", "Contanti", "70.00", "0.00", "2", "Compenso Carnevale Ara\r\nClub Patacioi Ara", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("15", "9", "", "", "2006-05-22", "Contanti", "20.00", "0.00", "2", "Tesseramento 2006\r\nFamiglia Perazzi\r\nFederica, Massimo, Gianpiero", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("16", "10", "", "", "2006-05-22", "Contanti", "12.00", "0.00", "2", "Tesseramento 2006\r\nFamiglia Pozzi Vanni, Marica", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("17", "11", "", "", "2006-05-22", "Contanti", "12.00", "0.00", "2", "Tesseramento 2006\r\nFamiglia Da Paré Augusto, Ornella", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("18", "12", "", "", "2006-04-24", "Contanti", "20.00", "0.00", "2", "Tesseramento 2006\r\nVinzio Claudia", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("19", "13", "", "", "2006-04-24", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nVinzio Vittorino", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("20", "14", "", "", "2006-04-24", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nVinzio Rag. Laura", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("21", "15", "", "", "2006-04-24", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nFesta Bianchet Gianfranca", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("22", "16", "", "", "2006-05-01", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nBorelli Michele", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("23", "17", "", "", "2006-05-22", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nFranchi Carlo", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("24", "18", "", "", "2006-05-22", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nVentura", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("25", "19", "", "", "2006-05-22", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nFontaneto Marcello", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("26", "20", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nFrascotti Giuliano", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("27", "21", "", "", "2006-05-26", "Contanti", "20.00", "0.00", "2", "Tesseramento 2006\r\nVinzio Ermanno", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("28", "22", "", "", "2006-03-31", "Contanti", "10.00", "0.00", "2", "Scuola Allievi Lezione\r\nMarzo 2006\r\nDi Lernia Giuseppe", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("29", "23", "", "", "2006-03-31", "Contanti", "20.00", "0.00", "2", "Scuola Allievi Lezione\r\nMarzo\r\nAgazzini Linda+Lorenzo", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("30", "24", "", "", "2006-04-30", "Contanti", "20.00", "0.00", "2", "Scuola Allievi Lezione\r\nMarzo/Aprile 2006\r\nPozzi Carlo", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("31", "25", "", "", "2006-03-31", "Contanti", "20.00", "0.00", "2", "Scuola Allievi Lezione\r\nFebbraio/Marzo 2006\r\nPagnoni Federico", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("32", "25", "", "", "2006-03-31", "Contanti", "22.00", "0.00", "2", "Scuola Allievi Strumento\r\nFebbraio/Marzo 2006\r\nPagnoni Federico", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("33", "26", "", "", "2006-02-28", "Contanti", "10.00", "0.00", "2", "Scuola Allievi Lezione\r\nFebbraio\r\nPontini Andrea", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("34", "27", "", "", "2006-02-28", "Contanti", "80.00", "0.00", "2", "Scuola Allievi Lezione\r\nNovembre/Dicembre 2005\r\nGennaio/Febbraio 2006\r\nCascio Antonino+Annalisa", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("35", "28", "", "", "2006-03-31", "Contanti", "10.00", "0.00", "2", "Scuola Allievi Lezione\r\nMarzo 2006\r\nSquaratti Paolo", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("36", "28", "", "", "2006-03-31", "Contanti", "11.00", "0.00", "2", "Scuola Allievi Strumento\r\nMarzo 2006\r\nSquaratti Paolo", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("37", "29", "", "", "2006-03-31", "Contanti", "20.00", "0.00", "2", "Scuola Allievi Lezione\r\nFebbraio/Marzo 2006\r\nAprile Mauro", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("38", "29", "", "", "2006-03-31", "Contanti", "22.00", "0.00", "2", "Scuola Allievi Strumento\r\nFebbraio/Marzo 2006\r\nAprile Mauro", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("39", "30", "", "", "2006-05-22", "Contanti", "39.00", "0.00", "2", "Oblazione Sergio Belli", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("40", "31", "", "", "2006-05-22", "Contanti", "13.00", "0.00", "2", "Oblazione Mischiatti Dino", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("41", "32", "", "", "2006-05-22", "Contanti", "16.00", "0.00", "2", "Oblazione Pezzolato Luca", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("42", "33", "", "", "2006-05-22", "Contanti", "32.00", "0.00", "2", "Ritorno Cassa", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("43", "34", "", "", "2006-05-26", "Contanti", "12.92", "0.00", "2", "Oblazione\r\nGiuliani Roberto", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("44", "34", "", "", "2006-05-26", "Contanti", "26.00", "0.00", "2", "Rettifica Retribuzione\r\nAprile/Maggio 2006\r\nGiuliani Roberto", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("45", "35", "", "", "2006-05-26", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nAleppo Athos", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("46", "36", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nBaglioni Angelo", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("47", "37", "", "", "2006-05-26", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nBalzarini Ernesto", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("48", "38", "", "", "2006-05-26", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nBorgato Giuliano", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("49", "39", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nCanobio Giuseppe", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("50", "40", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nDel Villani Luigi", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("51", "41", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nFranzosi Luciano", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("52", "42", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nGiordani Elio", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("53", "43", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nGobbi Angelo", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("54", "44", "", "", "2006-05-26", "Contanti", "15.00", "0.00", "2", "Tesseramento 2006\r\nMolli Luigi", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("55", "45", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nNegri Renato", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("56", "46", "", "", "2006-05-26", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nNobile Piera", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("57", "47", "", "", "2006-05-26", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nRabaglio Giovanni", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("58", "48", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nStefani Davide", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("59", "49", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nTeraroli Gianni", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("60", "50", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nValsesia Valentino", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("61", "51", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nVinzio Fernando", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("62", "52", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nMora Gaudenzio", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("63", "53", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nMora Flora", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("64", "54", "", "", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nMartinetti Ugo", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("65", "22", "", "", "2006-05-30", "Contanti", "10.00", "0.00", "2", "Scuola Allievi Lezione Febbraio 2006\r\nDi Lernia Giuseppe", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("66", "23", "", "", "2006-05-30", "Contanti", "20.00", "0.00", "2", "Scuola Allievi Lezione Febbraio 2006", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("67", "55", "", "", "2006-05-30", "Contanti", "20.00", "0.00", "2", "Scuola Allievi Lezione Febbraio/Marzo 2006\r\nMoretti Eleonora", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("68", "56", "", "", "2006-05-30", "Contanti", "20.00", "0.00", "2", "Scuola Allievi Lezione Febbraio/Marzo 2006\r\nMancin Gabriele", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("69", "57", "", "", "2006-05-30", "Contanti", "10.00", "0.00", "2", "Scuola Allievi Lezione Febbraio 2006\r\nMagistrini Giacomo", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("70", "28", "", "", "2006-05-30", "Contanti", "21.00", "0.00", "2", "Scuola Allievi Lezione + Strumento Febbraio 2006\r\nSquaratti Paolo", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("71", "58", "", "", "2006-05-30", "Contanti", "40.00", "0.00", "2", "Scuola Allievi Lezione Febbraio/Marzo/Aprile/Maggio 2006\r\nSchizzerato Leonardo", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("72", "59", "", "", "2006-05-29", "Contanti", "240.00", "0.00", "2", "Rimborso Spese Anpi Sezione Grignasco", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("73", "60", "", "", "2006-05-30", "Contanti", "5.00", "0.00", "2", "Oblazione Velatta Laura", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("74", "61", "", "", "2006-05-27", "Contanti", "1050.00", "0.00", "2", "Rimborso doppio Servizio presso Rovasenda per Festa patronale.\r\nConcerto 700 euro\r\nProcessione 350 euro", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("75", "62", "", "", "2006-05-30", "Assegno Bancario", "350.00", "0.00", "3", "Rimborso Processione Rovasenda 21/05/2006\r\nAssegno versato il 30/05/2006", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("76", "63", "", "", "2006-01-01", "Contanti", "753.73", "0.00", "2", "Sado Cassa a passaggio consegne", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("77", "", "7", "", "2006-06-03", "Contanti", "0.00", "20.00", "2", "Rimborso spese per acquisto fiori a Barlassina Patrizia", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("78", "", "10", "", "2006-06-01", "Contanti", "0.00", "8.60", "2", "Rimborso spese per acquisto francobolli e spedizione raccomandata a Vanni Marica", "3", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("79", "", "11", "", "2006-06-03", "Contanti", "0.00", "48.00", "2", "Rimborso spese per acquisto paste a Borelli Ezio", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("80", "", "10", "", "2006-06-03", "Contanti", "0.00", "22.61", "2", "Rimborso spese per acquisto generi alimentari per rinfresco a Vanni Marica", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("81", "", "10", "", "2006-06-03", "Contanti", "0.00", "50.00", "2", "Rimborso spese per acquisto tranci di pizza a Vanni Marica", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti VALUES("92", "", "4", "", "2006-10-04", "Assegno Bancario", "0.00", "100.00", "1", "qeqweqwewqeqwe", "7", "2006-10-04", "Y", "0");
INSERT INTO sd_movimenti VALUES("93", "", "5", "", "2006-10-04", "Bonifico Bancario", "0.00", "201.00", "3", "asasasaaassaassaas", "13", "2000-01-01", "Y", "0");
INSERT INTO sd_movimenti VALUES("94", "59", "", "", "2006-10-04", "Carta di Credito", "301.00", "0.00", "1", "wewewqerwqerwre", "14", "2006-10-04", "Y", "sergio.belli");
INSERT INTO sd_movimenti VALUES("95", "35", "7", "", "2006-10-04", "Ricevuta Bancaria", "404.00", "0.00", "1", "adsdsddssd", "14", "2000-01-01", "Y", "andrea.baron");


#
# Table structure for table 'sd_note_credito'
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



#
# Dumping data for table 'sd_note_credito'
#



#
# Table structure for table 'sd_note_credito_fornitori'
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



#
# Dumping data for table 'sd_note_credito_fornitori'
#



#
# Table structure for table 'sd_ordini'
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



#
# Dumping data for table 'sd_ordini'
#



#
# Table structure for table 'sd_scadenzario'
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



#
# Dumping data for table 'sd_scadenzario'
#

INSERT INTO sd_scadenzario VALUES("5", "0", "", "", "2006-05-22", "", "430.00", "0.00", "Contanti", "", "2", "", "", "3");
INSERT INTO sd_scadenzario VALUES("6", "0", "", "", "2006-05-22", "", "240.00", "0.00", "Contanti", "", "4", "", "", "4");
INSERT INTO sd_scadenzario VALUES("7", "0", "", "", "2006-05-22", "", "253.50", "0.00", "Contanti", "", "3", "", "", "5");
INSERT INTO sd_scadenzario VALUES("8", "0", "", "", "2006-05-22", "", "202.47", "0.00", "Contanti", "", "5", "", "", "6");
INSERT INTO sd_scadenzario VALUES("9", "0", "", "", "2006-03-16", "", "13.50", "0.00", "Contanti", "", "10", "", "", "7");
INSERT INTO sd_scadenzario VALUES("10", "0", "", "", "2006-05-11", "", "0.00", "12.00", "Contanti", "2", "", "", "", "8");
INSERT INTO sd_scadenzario VALUES("11", "0", "", "", "2006-05-11", "", "0.00", "12.00", "Contanti", "3", "", "", "", "9");
INSERT INTO sd_scadenzario VALUES("12", "0", "", "", "2006-05-11", "", "0.00", "6.00", "Contanti", "4", "", "", "", "10");
INSERT INTO sd_scadenzario VALUES("13", "0", "", "", "2006-05-17", "", "0.00", "500.00", "Contanti", "5", "", "", "", "11");
INSERT INTO sd_scadenzario VALUES("14", "0", "", "", "2006-05-14", "", "0.00", "270.00", "Contanti", "6", "", "", "", "12");
INSERT INTO sd_scadenzario VALUES("15", "0", "", "", "2006-02-28", "", "0.00", "500.00", "Assegno Bancario", "7", "", "", "", "13");
INSERT INTO sd_scadenzario VALUES("16", "0", "", "", "2006-05-22", "", "0.00", "70.00", "Contanti", "8", "", "", "", "14");
INSERT INTO sd_scadenzario VALUES("17", "0", "", "", "2006-05-22", "", "0.00", "20.00", "Contanti", "9", "", "", "", "15");
INSERT INTO sd_scadenzario VALUES("18", "0", "", "", "2006-05-22", "", "0.00", "12.00", "Contanti", "10", "", "", "", "16");
INSERT INTO sd_scadenzario VALUES("19", "0", "", "", "2006-05-22", "", "0.00", "12.00", "Contanti", "11", "", "", "", "17");
INSERT INTO sd_scadenzario VALUES("20", "0", "", "", "2006-04-24", "", "0.00", "20.00", "Contanti", "12", "", "", "", "18");
INSERT INTO sd_scadenzario VALUES("21", "0", "", "", "2006-04-24", "", "0.00", "10.00", "Contanti", "13", "", "", "", "19");
INSERT INTO sd_scadenzario VALUES("22", "0", "", "", "2006-04-24", "", "0.00", "6.00", "Contanti", "14", "", "", "", "20");
INSERT INTO sd_scadenzario VALUES("23", "0", "", "", "2006-04-24", "", "0.00", "10.00", "Contanti", "15", "", "", "", "21");
INSERT INTO sd_scadenzario VALUES("24", "0", "", "", "2006-05-01", "", "0.00", "10.00", "Contanti", "16", "", "", "", "22");
INSERT INTO sd_scadenzario VALUES("25", "0", "", "", "2006-05-22", "", "0.00", "6.00", "Contanti", "17", "", "", "", "23");
INSERT INTO sd_scadenzario VALUES("26", "0", "", "", "2006-05-22", "", "0.00", "6.00", "Contanti", "18", "", "", "", "24");
INSERT INTO sd_scadenzario VALUES("27", "0", "", "", "2006-05-22", "", "0.00", "6.00", "Contanti", "19", "", "", "", "25");
INSERT INTO sd_scadenzario VALUES("28", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "20", "", "", "", "26");
INSERT INTO sd_scadenzario VALUES("29", "0", "", "", "2006-05-26", "", "0.00", "20.00", "Contanti", "21", "", "", "", "27");
INSERT INTO sd_scadenzario VALUES("30", "0", "", "", "2006-03-31", "", "0.00", "10.00", "Contanti", "22", "", "", "", "28");
INSERT INTO sd_scadenzario VALUES("31", "0", "", "", "2006-03-31", "", "0.00", "20.00", "Contanti", "23", "", "", "", "29");
INSERT INTO sd_scadenzario VALUES("32", "0", "", "", "2006-04-30", "", "0.00", "20.00", "Contanti", "24", "", "", "", "30");
INSERT INTO sd_scadenzario VALUES("33", "0", "", "", "2006-03-31", "", "0.00", "20.00", "Contanti", "25", "", "", "", "31");
INSERT INTO sd_scadenzario VALUES("34", "0", "", "", "2006-03-31", "", "0.00", "22.00", "Contanti", "25", "", "", "", "32");
INSERT INTO sd_scadenzario VALUES("35", "0", "", "", "2006-02-28", "", "0.00", "10.00", "Contanti", "26", "", "", "", "33");
INSERT INTO sd_scadenzario VALUES("36", "0", "", "", "2006-02-28", "", "0.00", "80.00", "Contanti", "27", "", "", "", "34");
INSERT INTO sd_scadenzario VALUES("37", "0", "", "", "2006-03-31", "", "0.00", "10.00", "Contanti", "28", "", "", "", "35");
INSERT INTO sd_scadenzario VALUES("38", "0", "", "", "2006-03-31", "", "0.00", "11.00", "Contanti", "28", "", "", "", "36");
INSERT INTO sd_scadenzario VALUES("39", "0", "", "", "2006-03-31", "", "0.00", "20.00", "Contanti", "29", "", "", "", "37");
INSERT INTO sd_scadenzario VALUES("40", "0", "", "", "2006-03-31", "", "0.00", "22.00", "Contanti", "29", "", "", "", "38");
INSERT INTO sd_scadenzario VALUES("41", "0", "", "", "2006-05-22", "", "0.00", "39.00", "Contanti", "30", "", "", "", "39");
INSERT INTO sd_scadenzario VALUES("42", "0", "", "", "2006-05-22", "", "0.00", "13.00", "Contanti", "31", "", "", "", "40");
INSERT INTO sd_scadenzario VALUES("43", "0", "", "", "2006-05-22", "", "0.00", "16.00", "Contanti", "32", "", "", "", "41");
INSERT INTO sd_scadenzario VALUES("44", "0", "", "", "2006-05-22", "", "0.00", "32.00", "Contanti", "33", "", "", "", "42");
INSERT INTO sd_scadenzario VALUES("45", "0", "", "", "2006-05-26", "", "0.00", "12.92", "Contanti", "34", "", "", "", "43");
INSERT INTO sd_scadenzario VALUES("46", "0", "", "", "2006-05-26", "", "0.00", "26.00", "Contanti", "34", "", "", "", "44");
INSERT INTO sd_scadenzario VALUES("47", "0", "", "", "2006-05-26", "", "0.00", "6.00", "Contanti", "35", "", "", "", "45");
INSERT INTO sd_scadenzario VALUES("48", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "36", "", "", "", "46");
INSERT INTO sd_scadenzario VALUES("49", "0", "", "", "2006-05-26", "", "0.00", "6.00", "Contanti", "37", "", "", "", "47");
INSERT INTO sd_scadenzario VALUES("50", "0", "", "", "2006-05-26", "", "0.00", "6.00", "Contanti", "38", "", "", "", "48");
INSERT INTO sd_scadenzario VALUES("51", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "39", "", "", "", "49");
INSERT INTO sd_scadenzario VALUES("52", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "40", "", "", "", "50");
INSERT INTO sd_scadenzario VALUES("53", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "41", "", "", "", "51");
INSERT INTO sd_scadenzario VALUES("54", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "42", "", "", "", "52");
INSERT INTO sd_scadenzario VALUES("55", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "43", "", "", "", "53");
INSERT INTO sd_scadenzario VALUES("56", "0", "", "", "2006-05-26", "", "0.00", "15.00", "Contanti", "44", "", "", "", "54");
INSERT INTO sd_scadenzario VALUES("57", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "45", "", "", "", "55");
INSERT INTO sd_scadenzario VALUES("58", "0", "", "", "2006-05-26", "", "0.00", "6.00", "Contanti", "46", "", "", "", "56");
INSERT INTO sd_scadenzario VALUES("59", "0", "", "", "2006-05-26", "", "0.00", "6.00", "Contanti", "47", "", "", "", "57");
INSERT INTO sd_scadenzario VALUES("60", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "48", "", "", "", "58");
INSERT INTO sd_scadenzario VALUES("61", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "49", "", "", "", "59");
INSERT INTO sd_scadenzario VALUES("62", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "50", "", "", "", "60");
INSERT INTO sd_scadenzario VALUES("63", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "51", "", "", "", "61");
INSERT INTO sd_scadenzario VALUES("64", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "52", "", "", "", "62");
INSERT INTO sd_scadenzario VALUES("65", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "53", "", "", "", "63");
INSERT INTO sd_scadenzario VALUES("66", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "54", "", "", "", "64");
INSERT INTO sd_scadenzario VALUES("67", "0", "", "", "2006-05-30", "", "0.00", "10.00", "Contanti", "22", "", "", "", "65");
INSERT INTO sd_scadenzario VALUES("68", "0", "", "", "2006-05-30", "", "0.00", "20.00", "Contanti", "23", "", "", "", "66");
INSERT INTO sd_scadenzario VALUES("69", "0", "", "", "2006-05-30", "", "0.00", "20.00", "Contanti", "55", "", "", "", "67");
INSERT INTO sd_scadenzario VALUES("70", "0", "", "", "2006-05-30", "", "0.00", "20.00", "Contanti", "56", "", "", "", "68");
INSERT INTO sd_scadenzario VALUES("71", "0", "", "", "2006-05-30", "", "0.00", "10.00", "Contanti", "57", "", "", "", "69");
INSERT INTO sd_scadenzario VALUES("72", "0", "", "", "2006-05-30", "", "0.00", "21.00", "Contanti", "28", "", "", "", "70");
INSERT INTO sd_scadenzario VALUES("73", "0", "", "", "2006-05-30", "", "0.00", "40.00", "Contanti", "58", "", "", "", "71");
INSERT INTO sd_scadenzario VALUES("74", "0", "", "", "2006-05-29", "", "0.00", "240.00", "Contanti", "59", "", "", "", "72");
INSERT INTO sd_scadenzario VALUES("75", "0", "", "", "2006-05-30", "", "0.00", "5.00", "Contanti", "60", "", "", "", "73");
INSERT INTO sd_scadenzario VALUES("76", "0", "", "", "2006-05-27", "", "0.00", "1050.00", "Contanti", "61", "", "", "", "74");
INSERT INTO sd_scadenzario VALUES("77", "0", "", "", "2006-05-30", "", "0.00", "350.00", "Assegno Bancario", "62", "", "", "", "75");
INSERT INTO sd_scadenzario VALUES("78", "0", "", "", "2006-01-01", "", "0.00", "753.73", "Contanti", "63", "", "", "", "76");
INSERT INTO sd_scadenzario VALUES("79", "0", "", "", "2006-06-03", "", "20.00", "0.00", "Contanti", "", "7", "", "", "77");
INSERT INTO sd_scadenzario VALUES("80", "0", "", "", "2006-06-01", "", "8.60", "0.00", "Contanti", "", "10", "", "", "78");
INSERT INTO sd_scadenzario VALUES("81", "0", "", "", "2006-06-03", "", "48.00", "0.00", "Contanti", "", "11", "", "", "79");
INSERT INTO sd_scadenzario VALUES("82", "0", "", "", "2006-06-03", "", "22.61", "0.00", "Contanti", "", "10", "", "", "80");
INSERT INTO sd_scadenzario VALUES("83", "0", "", "", "2006-06-03", "", "50.00", "0.00", "Contanti", "", "10", "", "", "81");
INSERT INTO sd_scadenzario VALUES("84", "0", "", "", "2006-10-03", "", "1.00", "0.00", "Contanti", "", "5", "", "", "88");
INSERT INTO sd_scadenzario VALUES("85", "0", "", "", "2006-10-03", "", "0.00", "2.00", "Contanti", "35", "", "", "", "89");
INSERT INTO sd_scadenzario VALUES("86", "0", "", "", "2006-10-03", "", "0.00", "111.00", "Contanti", "36", "", "", "", "90");
INSERT INTO sd_scadenzario VALUES("87", "0", "", "", "2006-10-01", "", "200.00", "0.00", "Bonifico Bancario", "", "2", "", "", "91");


#
# Table structure for table 'sd_tipi_pagamento'
#

CREATE TABLE sd_tipi_pagamento (
  ID_Tipo_Pagamento int(3) NOT NULL auto_increment,
  Tipo_Pagamento varchar(30) NOT NULL default '',
  PRIMARY KEY  (ID_Tipo_Pagamento)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_tipi_pagamento'
#

INSERT INTO sd_tipi_pagamento VALUES("1", "Bonifico Bancario");
INSERT INTO sd_tipi_pagamento VALUES("2", "Carta di Credito");
INSERT INTO sd_tipi_pagamento VALUES("3", "Contanti");
INSERT INTO sd_tipi_pagamento VALUES("4", "Assegno Bancario");
INSERT INTO sd_tipi_pagamento VALUES("5", "Assegno Circolare");
INSERT INTO sd_tipi_pagamento VALUES("6", "Ricevuta Bancaria");


#
# Table structure for table 'sd_voci_bilancio'
#

CREATE TABLE sd_voci_bilancio (
  id tinyint(3) unsigned NOT NULL auto_increment,
  voce varchar(250) NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY id (id)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_voci_bilancio'
#

INSERT INTO sd_voci_bilancio VALUES("1", "Varie");
INSERT INTO sd_voci_bilancio VALUES("2", "Rimborso spese Maestri");
INSERT INTO sd_voci_bilancio VALUES("3", "Spese Postali");
INSERT INTO sd_voci_bilancio VALUES("4", "Acquisto divise e manutenzione");
INSERT INTO sd_voci_bilancio VALUES("5", "Acquisto e manutenzione strumenti musicali e attrezzature");
INSERT INTO sd_voci_bilancio VALUES("6", "Acquisto partiture");
INSERT INTO sd_voci_bilancio VALUES("7", "Rimborso spese musici");
INSERT INTO sd_voci_bilancio VALUES("8", "Oneri SIAE");
INSERT INTO sd_voci_bilancio VALUES("9", "Energia Elettrica");
INSERT INTO sd_voci_bilancio VALUES("10", "Riscaldamento");
INSERT INTO sd_voci_bilancio VALUES("11", "Assicurazione");
INSERT INTO sd_voci_bilancio VALUES("12", "Cancelleria e stampati");
INSERT INTO sd_voci_bilancio VALUES("13", "Rinfreschi e pranzi");
INSERT INTO sd_voci_bilancio VALUES("14", "Promozione e pubblicità");
INSERT INTO sd_voci_bilancio VALUES("15", "Oneri Cariplo");
INSERT INTO sd_voci_bilancio VALUES("16", "Varie");
INSERT INTO sd_voci_bilancio VALUES("17", "Anbima");
INSERT INTO sd_voci_bilancio VALUES("18", "Tessere e oblazioni");
INSERT INTO sd_voci_bilancio VALUES("19", "Contributo comune di Grignasco");
INSERT INTO sd_voci_bilancio VALUES("20", "Contributo frequenza allievi");
INSERT INTO sd_voci_bilancio VALUES("21", "Contributo per manutenzione strumenti");
INSERT INTO sd_voci_bilancio VALUES("22", "Offerte ricevute durante servizi e concerti");
INSERT INTO sd_voci_bilancio VALUES("23", "Sottoscrizioni a premi e dolci note");
INSERT INTO sd_voci_bilancio VALUES("24", "Contributo provinciale");
INSERT INTO sd_voci_bilancio VALUES("25", "Contributo Ministero dello Spettacolo");
INSERT INTO sd_voci_bilancio VALUES("26", "Contributo scuola allievi");

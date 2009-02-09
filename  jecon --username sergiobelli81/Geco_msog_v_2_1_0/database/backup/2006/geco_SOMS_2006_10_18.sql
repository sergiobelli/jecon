# MySQL-Front Dump 2.5
#
# Host: localhost   Database: geco
# --------------------------------------------------------
# Server version 4.0.12-nt


#
# Table structure for table 'sd_acquisti'
#

DROP TABLE IF EXISTS sd_acquisti;
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

DROP TABLE IF EXISTS sd_admin;
CREATE TABLE sd_admin (
  ID_Admin int(12) NOT NULL auto_increment,
  Cognome varchar(30) NOT NULL default '',
  Nome varchar(30) NOT NULL default '',
  Livello int(2) NOT NULL default '0',
  Login varchar(50) NOT NULL default '',
  Password varchar(8) NOT NULL default '',
  Email varchar(100) default NULL,
  PRIMARY KEY  (ID_Admin)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_admin'
#

INSERT INTO sd_admin (ID_Admin, Cognome, Nome, Livello, Login, Password, Email) VALUES("1", "Belli", "Sergio", "0", "sergio.belli", "sergio", "sergio.belli@email.it");
INSERT INTO sd_admin (ID_Admin, Cognome, Nome, Livello, Login, Password, Email) VALUES("2", "Baron", "Andrea", "0", "andrea.baron", "andrea", "andrea.baron@deagostini.it");
INSERT INTO sd_admin (ID_Admin, Cognome, Nome, Livello, Login, Password, Email) VALUES("3", "Baglioni", "Corrado", "0", "corrado.baglioni", "corrado", "baglioni.net@libero.it");
INSERT INTO sd_admin (ID_Admin, Cognome, Nome, Livello, Login, Password, Email) VALUES("4", "De Angelis", "Martino", "0", "martino.deangelis", "martino", NULL);
INSERT INTO sd_admin (ID_Admin, Cognome, Nome, Livello, Login, Password, Email) VALUES("5", "Vanni", "Marica", "0", "marica.vanni", "marica", "marica.vanni@alice.it");


#
# Table structure for table 'sd_anagrafica'
#

DROP TABLE IF EXISTS sd_anagrafica;
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

INSERT INTO sd_anagrafica (ID_Azienda, Abilitato, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Web) VALUES("1", "0", "Musica Societa Operaia di Grignasco", "Banda", "Musicale", "91001100030", "91001100030", "Via Rosa Massara 18", "Grignasco", "28075", "NO", "0163417130", "0163834668", "", "", "", "", "");


#
# Table structure for table 'sd_banche'
#

DROP TABLE IF EXISTS sd_banche;
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

INSERT INTO sd_banche (ID_Banca, Banca, Indirizzo, Agenzia, Abi, Cab, Conto, Titolare) VALUES("1", "Banca del Credito Cooperativo", "Via Boh, 32", "Cent", "08234", "11345", "565658", "Gnauz Spa");
INSERT INTO sd_banche (ID_Banca, Banca, Indirizzo, Agenzia, Abi, Cab, Conto, Titolare) VALUES("2", "Cassa", "", "", "", "", "", "");
INSERT INTO sd_banche (ID_Banca, Banca, Indirizzo, Agenzia, Abi, Cab, Conto, Titolare) VALUES("3", "Banca Intesa", "", "", "03268", "22300", "aaaa", "saaaa");


#
# Table structure for table 'sd_clienti'
#

DROP TABLE IF EXISTS sd_clienti;
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

INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("2", "", "Contardi", "Giuseppe", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("3", "", "Contardi", "Marisa", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("4", "", "Cacciami", "Maria Teresa", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("5", "", "Gattinara", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("6", "", "Piane di", "Serravalle Sesia", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("7", "", "Comitato Carnevale", "Grignasco", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("8", "", "Club Patacioi", "Ara", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("9", "", "Famiglia", "Perazzi", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("10", "", "Famiglia Pozzi", "(Marica+Vanni)", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("11", "", "Famiglia", "DaPar�", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("12", "", "Vinzio", "Claudia", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("13", "", "Vinzio", "Vittorino", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("14", "", "Vinzio Rag.", "Laura", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("15", "", "Festa Bianchet", "Gianfranca", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("16", "", "Borelli", "Michele", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("17", "", "Franchi", "Carlo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("18", "", "Ventura", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("19", "", "Fontaneto", "Marcello", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("20", "", "Frascotti", "Giuliano", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("21", "", "Vinzio", "Ermanno", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("22", "", "Di Lernia", "Giuseppe", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("23", "", "Famiglia Agazzini", "(Linda+Lore)", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("24", "", "Pozzi", "Carlo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("25", "", "Pagnoni", "Federico", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("26", "", "Pontini", "Andrea", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("27", "", "Cascio", "Antonino+Annalisa", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("28", "", "Squaratti", "Paolo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("29", "", "Aprile", "Mauro", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("30", "", "Belli", "Sergio", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("31", "", "Mischiatti", "Dino", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("32", "", "Pezzolato", "Luca", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("33", "", "Ritorno", "Cassa", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("34", "", "Giuliani", "Roberto", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("35", "", "Aleppo", "Athos", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("36", "", "Baglioni", "Angelo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("37", "", "Balzarini", "Ernesto", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("38", "", "Borgato", "Giuliano", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("39", "", "Canobio", "Giuseppe", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("40", "", "Del Villani", "Luigi", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("41", "", "Franzosi", "Luciano", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("42", "", "Giordani", "Elio", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("43", "", "Gobbi", "Angelo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("44", "", "Molli", "Luigi", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("45", "", "Negri", "Renato", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("46", "", "Nobile", "Piera", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("47", "", "Rabaglio", "Giovanni", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("48", "", "Stefani", "Davide", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("49", "", "Teraroli", "Gianni", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("50", "", "Valsesia", "Valentino", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("51", "", "Vinzio", "Fernando", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("52", "", "Mora", "Gaudenzio", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("53", "", "Mora", "Flora", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("54", "", "Martinetti", "Ugo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("55", "", "Moretti", "Eleonora", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("56", "", "Mancin", "Gabriele", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("57", "", "Magistrini", "Giacomo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("58", "", "Schizzerato", "Leonardo", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("59", "", "Anpi Sezione", "Grignasco", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("60", "", "Velatta", "Laura", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("61", "", "Priori", "Festa Patronale Rovasenda", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("62", "", "ProLoco", "Rovasenda", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_clienti (ID_Cliente, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("63", "", "Saldo Cassa", "Iniziale", "", "", "", "", "", "", "", "", "", "", "", "", "", "");


#
# Table structure for table 'sd_codici_iva'
#

DROP TABLE IF EXISTS sd_codici_iva;
CREATE TABLE sd_codici_iva (
  Codice varchar(12) NOT NULL default '',
  Descrizione varchar(50) NOT NULL default '',
  Percentuale varchar(6) NOT NULL default '',
  Indetraibile varchar(6) NOT NULL default ''
) TYPE=MyISAM;



#
# Dumping data for table 'sd_codici_iva'
#

INSERT INTO sd_codici_iva (Codice, Descrizione, Percentuale, Indetraibile) VALUES("20", "20%", "20", "0");
INSERT INTO sd_codici_iva (Codice, Descrizione, Percentuale, Indetraibile) VALUES("10", "10%", "10", "0");


#
# Table structure for table 'sd_fatture_acquisto'
#

DROP TABLE IF EXISTS sd_fatture_acquisto;
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

DROP TABLE IF EXISTS sd_fatture_vendita;
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

DROP TABLE IF EXISTS sd_fornitori;
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

INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("2", "", "Platini", "Fabrizio", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("11", "", "Borelli", "Ezio", "", "", "", "", "", NULL, "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("4", "", "De Angelis", "Roberto", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("3", "", "Giuliani", "Roberto", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("5", "", "Anbima", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("64", "", "Platini", "Fabrizio", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("7", "", "Barlassina", "Patrizia", "", "", "", "", "", NULL, "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("10", "", "Vanni", "Marica", "", "", "", "", "", NULL, "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("65", "", "Borelli", "Ezio", "", "", "", "", "", NULL, "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("66", "", "De Angelis", "Roberto", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("67", "", "Giuliani", "Roberto", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("68", "", "Anbima", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("69", "", "Barlassina", "Patrizia", "", "", "", "", "", NULL, "", "", "", "", "", "", "", "", "");
INSERT INTO sd_fornitori (ID_Fornitore, Ragione_Sociale, Cognome, Nome, PI, CF, Indirizzo, Citta, CAP, Civico, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web) VALUES("70", "", "Vanni", "Marica", "", "", "", "", "", NULL, "", "", "", "", "", "", "", "", "");


#
# Table structure for table 'sd_movimenti'
#

DROP TABLE IF EXISTS sd_movimenti;
CREATE TABLE sd_movimenti (
  ID_Movimento int(12) NOT NULL auto_increment,
  ID_Soggetto varchar(12) NOT NULL default '',
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
  PRIMARY KEY  (ID_Movimento)
) TYPE=MyISAM PACK_KEYS=1;



#
# Dumping data for table 'sd_movimenti'
#

INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("3", "65", "2006-05-22", "Contanti", "0.00", "430.00", "2", "Pagamento Maestri\r\nPlatini Fabrizio\r\nMarzo/Aprile 2006", "2", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("4", "67", "2006-05-22", "Contanti", "0.00", "240.00", "2", "Pagamento Maestri\r\nDeAngelis Roberto\r\n21/10/2005 - 24/03/2006", "2", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("5", "68", "2006-05-22", "Contanti", "0.00", "253.50", "2", "Pagamento Maestri\r\nGiuliani Roberto\r\nMarzo/Aprile 2006", "2", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("6", "69", "2006-05-22", "Contanti", "0.00", "202.47", "2", "Tesseramento Anbima 2006", "17", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("7", "72", "2006-03-16", "Contanti", "0.00", "13.50", "2", "Spese Postali\r\nAcquisto Francobolli\r\na Vanni Marica", "3", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("8", "2", "2006-05-11", "Contanti", "12.00", "0.00", "2", "Tesseramento 2006\r\nContardi Giuseppe", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("9", "3", "2006-05-11", "Contanti", "12.00", "0.00", "2", "Tesseramento 2006 Contardi Marisa", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("10", "4", "2006-05-11", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nCacciami Maria Teresa", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("11", "5", "2006-05-17", "Contanti", "500.00", "0.00", "2", "Compenso Servizio di Gattinara", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("12", "6", "2006-05-14", "Contanti", "270.00", "0.00", "2", "Compenso Servizio Piane di Serravalle Sesia", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("13", "7", "2006-02-28", "Assegno Bancario", "500.00", "0.00", "2", "Servizio Carnevale Grignasco \"Giubiacia\"\r\nAssegno", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("14", "8", "2006-05-22", "Contanti", "70.00", "0.00", "2", "Compenso Carnevale Ara\r\nClub Patacioi Ara", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("15", "9", "2006-05-22", "Contanti", "20.00", "0.00", "2", "Tesseramento 2006\r\nFamiglia Perazzi\r\nFederica, Massimo, Gianpiero", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("16", "10", "2006-05-22", "Contanti", "12.00", "0.00", "2", "Tesseramento 2006\r\nFamiglia Pozzi Vanni, Marica", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("17", "11", "2006-05-22", "Contanti", "12.00", "0.00", "2", "Tesseramento 2006\r\nFamiglia Da Par� Augusto, Ornella", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("18", "12", "2006-04-24", "Contanti", "20.00", "0.00", "2", "Tesseramento 2006\r\nVinzio Claudia", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("19", "13", "2006-04-24", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nVinzio Vittorino", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("20", "14", "2006-04-24", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nVinzio Rag. Laura", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("21", "15", "2006-04-24", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nFesta Bianchet Gianfranca", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("22", "16", "2006-05-01", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nBorelli Michele", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("23", "17", "2006-05-22", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nFranchi Carlo", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("24", "18", "2006-05-22", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nVentura", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("25", "19", "2006-05-22", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nFontaneto Marcello", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("26", "20", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nFrascotti Giuliano", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("27", "21", "2006-05-26", "Contanti", "20.00", "0.00", "2", "Tesseramento 2006\r\nVinzio Ermanno", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("28", "22", "2006-03-31", "Contanti", "10.00", "0.00", "2", "                            Scuola Allievi Lezione\r\nMarzo 2006\r\nDi Lernia Giuseppe                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("29", "23", "2006-03-31", "Contanti", "20.00", "0.00", "2", "                            Scuola Allievi Lezione\r\nMarzo\r\nAgazzini Linda+Lorenzo                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("30", "24", "2006-04-30", "Contanti", "20.00", "0.00", "2", "                            Scuola Allievi Lezione\r\nMarzo/Aprile 2006\r\nPozzi Carlo                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("31", "25", "2006-03-31", "Contanti", "20.00", "0.00", "2", "                            Scuola Allievi Lezione\r\nFebbraio/Marzo 2006\r\nPagnoni Federico                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("32", "25", "2006-03-31", "Contanti", "22.00", "0.00", "2", "                            Scuola Allievi Strumento\r\nFebbraio/Marzo 2006\r\nPagnoni Federico                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("33", "26", "2006-02-28", "Contanti", "10.00", "0.00", "2", "                            Scuola Allievi Lezione\r\nFebbraio\r\nPontini Andrea                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("34", "27", "2006-02-28", "Contanti", "80.00", "0.00", "2", "                            Scuola Allievi Lezione\r\nNovembre/Dicembre 2005\r\nGennaio/Febbraio 2006\r\nCascio Antonino+Annalisa                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("35", "28", "2006-03-31", "Contanti", "10.00", "0.00", "2", "                            Scuola Allievi Lezione\r\nMarzo 2006\r\nSquaratti Paolo                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("36", "28", "2006-03-31", "Contanti", "11.00", "0.00", "2", "                            Scuola Allievi Strumento\r\nMarzo 2006\r\nSquaratti Paolo                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("37", "29", "2006-03-31", "Contanti", "20.00", "0.00", "2", "                            Scuola Allievi Lezione\r\nFebbraio/Marzo 2006\r\nAprile Mauro                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("38", "29", "2006-03-31", "Contanti", "22.00", "0.00", "2", "                            Scuola Allievi Strumento\r\nFebbraio/Marzo 2006\r\nAprile Mauro                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("39", "30", "2006-05-22", "Contanti", "39.00", "0.00", "2", "Oblazione Sergio Belli", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("40", "31", "2006-05-22", "Contanti", "13.00", "0.00", "2", "Oblazione Mischiatti Dino", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("41", "32", "2006-05-22", "Contanti", "16.00", "0.00", "2", "Oblazione Pezzolato Luca", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("42", "33", "2006-05-22", "Contanti", "32.00", "0.00", "2", "Ritorno Cassa", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("43", "34", "2006-05-26", "Contanti", "12.92", "0.00", "2", "Oblazione\r\nGiuliani Roberto", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("44", "34", "2006-05-26", "Contanti", "26.00", "0.00", "2", "Rettifica Retribuzione\r\nAprile/Maggio 2006\r\nGiuliani Roberto", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("45", "35", "2006-05-26", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nAleppo Athos", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("46", "36", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nBaglioni Angelo", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("47", "37", "2006-05-26", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nBalzarini Ernesto", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("48", "38", "2006-05-26", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nBorgato Giuliano", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("49", "39", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nCanobio Giuseppe", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("50", "40", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nDel Villani Luigi", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("51", "41", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nFranzosi Luciano", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("52", "42", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nGiordani Elio", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("53", "43", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nGobbi Angelo", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("54", "44", "2006-05-26", "Contanti", "15.00", "0.00", "2", "Tesseramento 2006\r\nMolli Luigi", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("55", "45", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nNegri Renato", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("56", "46", "2006-05-26", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nNobile Piera", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("57", "47", "2006-05-26", "Contanti", "6.00", "0.00", "2", "Tesseramento 2006\r\nRabaglio Giovanni", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("58", "48", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nStefani Davide", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("59", "49", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nTeraroli Gianni", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("60", "50", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nValsesia Valentino", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("61", "51", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nVinzio Fernando", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("62", "52", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nMora Gaudenzio", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("63", "53", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nMora Flora", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("64", "54", "2006-05-26", "Contanti", "10.00", "0.00", "2", "Tesseramento 2006\r\nMartinetti Ugo", "18", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("65", "22", "2006-05-30", "Contanti", "10.00", "0.00", "2", "                                                                                    Scuola Allievi Lezione Febbraio 2006\r\nDi Lernia Giuseppe                                                                        ", "20", "2000-11-30", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("66", "23", "2006-05-30", "Contanti", "20.00", "0.00", "2", "                            Scuola Allievi Lezione Febbraio 2006                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("67", "55", "2006-05-30", "Contanti", "20.00", "0.00", "2", "                            Scuola Allievi Lezione Febbraio/Marzo 2006\r\nMoretti Eleonora                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("68", "56", "2006-05-30", "Contanti", "20.00", "0.00", "2", "                                                                                    Scuola Allievi Lezione Febbraio/Marzo 2006\r\nMancin Gabriele                                                                        ", "20", "2006-05-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("69", "57", "2006-05-30", "Contanti", "10.00", "0.00", "2", "                            Scuola Allievi Lezione Febbraio 2006\r\nMagistrini Giacomo                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("70", "28", "2006-05-30", "Contanti", "21.00", "0.00", "2", "                            Scuola Allievi Lezione + Strumento Febbraio 2006\r\nSquaratti Paolo                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("71", "58", "2006-05-30", "Contanti", "40.00", "0.00", "2", "                            Scuola Allievi Lezione Febbraio/Marzo/Aprile/Maggio 2006\r\nSchizzerato Leonardo                        ", "20", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("72", "59", "2006-05-29", "Contanti", "240.00", "0.00", "2", "Rimborso Spese Anpi Sezione Grignasco", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("73", "60", "2006-05-30", "Contanti", "4.92", "0.00", "2", "                                                        Oblazione Velatta Laura                                                ", "18", "2000-11-30", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("74", "61", "2006-05-27", "Contanti", "1050.00", "0.00", "2", "Rimborso doppio Servizio presso Rovasenda per Festa patronale.\r\nConcerto 700 euro\r\nProcessione 350 euro", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("75", "62", "2006-05-30", "Assegno Bancario", "350.00", "0.00", "3", "Rimborso Processione Rovasenda 21/05/2006\r\nAssegno versato il 30/05/2006", "22", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("76", "63", "2006-01-01", "Contanti", "753.73", "0.00", "2", "Sado Cassa a passaggio consegne", "0", "0000-00-00", "Y", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("77", "71", "2006-06-03", "Contanti", "0.00", "20.00", "2", "Rimborso spese per acquisto fiori a Barlassina Patrizia", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("78", "72", "2006-06-01", "Contanti", "0.00", "8.60", "2", "Rimborso spese per acquisto francobolli e spedizione raccomandata a Vanni Marica", "3", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("79", "66", "2006-06-03", "Contanti", "0.00", "48.00", "2", "Rimborso spese per acquisto paste a Borelli Ezio", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("80", "72", "2006-06-03", "Contanti", "0.00", "22.61", "2", "Rimborso spese per acquisto generi alimentari per rinfresco a Vanni Marica", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("81", "72", "2006-06-03", "Contanti", "0.00", "50.00", "2", "Rimborso spese per acquisto tranci di pizza a Vanni Marica", "0", "0000-00-00", "N", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("92", "67", "2006-10-04", "Assegno Bancario", "0.00", "100.00", "1", "qeqweqwewqeqwe", "7", "2006-10-04", "Y", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("93", "69", "2006-10-04", "Bonifico Bancario", "0.00", "201.00", "3", "asasasaaassaassaas", "13", "2000-01-01", "Y", "0");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("94", "59", "2006-10-04", "Carta di Credito", "301.00", "0.00", "1", "wewewqerwqerwre", "14", "2006-10-04", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("95", "35", "2006-10-04", "Ricevuta Bancaria", "404.00", "0.00", "1", "adsdsddssd", "14", "2000-01-01", "Y", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("96", "", "2006-10-05", "Bonifico Bancario", "10.00", "0.00", "1", "dfsdfsdfd", "23", "2006-10-05", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("97", "35", "2006-10-05", "Bonifico Bancario", "0.00", "11.00", "1", "", "23", "2006-10-05", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("98", "35", "2006-10-05", "Bonifico Bancario", "0.00", "12.00", "1", "", "7", "2006-10-05", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("99", "64", "2006-10-05", "Bonifico Bancario", "1.00", "0.00", "1", "xxx", "1", "2006-10-05", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("100", "64", "2006-10-05", "Assegno Circolare", "2.00", "0.00", "2", "xxx", "0", "2000-01-01", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("101", "49", "2006-10-05", "Bonifico Bancario", "0.00", "2002.00", "2", "fdfffg                                                              sdsdsdddfs", "1", "2006-10-05", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("102", "35", "2006-10-05", "Bonifico Bancario", "3000.00", "0.00", "1", "", "18", "2006-10-05", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("103", "35", "2006-10-05", "Bonifico Bancario", "3000.00", "0.00", "1", "", "18", "2006-10-05", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("104", "35", "2006-10-05", "Bonifico Bancario", "123.00", "0.00", "1", "aasaasaasaas                                                    ", "1", "2006-10-05", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("105", "64", "2006-10-05", "Bonifico Bancario", "10.00", "0.00", "1", "gfgffffg                                                    ", "8", "2006-10-05", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("106", "76", "2006-07-22", "Carta di Credito", "10.00", "0.00", "2", "Oblazione Geroso Simone", "18", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("107", "77", "2006-07-22", "Contanti", "67.00", "0.00", "2", "Oblazione Quarna Claudio", "18", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("108", "78", "2006-07-22", "Contanti", "25.00", "0.00", "2", "Oblazione Calligaris Franco", "18", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("109", "79", "2006-07-22", "Contanti", "25.00", "0.00", "2", "Oblazione Flauto Romagnano", "18", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("110", "81", "2006-07-22", "Contanti", "100.00", "0.00", "2", "                                                        Oblazione Giustina Vanda in memoria di Giustina Florindo                                      ", "18", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("111", "80", "2006-07-22", "Contanti", "25.00", "0.00", "2", "Oblazione Poli figlio", "18", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("112", "82", "2006-07-22", "Contanti", "300.00", "0.00", "2", "Servizio a Zuccaro", "22", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("113", "83", "2006-07-22", "Assegno Bancario", "1000.00", "0.00", "3", "Contributo Comune Grignasco anno 2006", "19", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("114", "83", "2006-07-22", "Contanti", "433.83", "0.00", "2", "Concerto Estivo. Offerta ricevuta", "22", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("115", "84", "2006-07-22", "Assegno Bancario", "0.00", "1222.00", "3", "                                                        Compenso Gennaio/Giugno 2006 Negri Gilberto                                                ", "2", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("116", "65", "2006-07-22", "Contanti", "0.00", "534.00", "2", "                                                        Compenso Maggio/Giugno 2006 Platini Fabrizio.\r\nConcerti Rovasenda.                                                ", "2", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("117", "85", "2006-07-22", "Contanti", "0.00", "80.00", "2", "Acquisto toner", "12", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("118", "86", "2006-07-22", "Contanti", "0.00", "49.00", "2", "Acquisto cellulare", "1", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("119", "86", "2006-07-22", "Contanti", "0.00", "50.00", "2", "Ricarica cellulare", "1", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("120", "87", "2006-07-22", "Contanti", "0.00", "75.00", "2", "Rimborso Mosca Francesca", "27", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("121", "88", "2006-07-22", "Contanti", "0.00", "80.00", "2", "Rimborso Grigolon", "27", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("122", "89", "2006-07-22", "Contanti", "0.00", "25.00", "2", "Rimborso Domenico", "27", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("123", "90", "2006-07-22", "Contanti", "0.00", "45.00", "2", "Rimborso Sandra", "27", "2006-07-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("124", "65", "2006-09-06", "Contanti", "0.00", "482.00", "2", "                            Compenso Luglio/Agosto 2006 Platini Fabrizio        430 + concerto luglio euro 52                ", "30", "2006-09-06", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("125", "91", "2006-10-06", "Contanti", "0.00", "45.00", "2", "Rimborso Farassino", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("126", "92", "2006-10-06", "Contanti", "0.00", "45.00", "2", "Rimborso nipote Farassino", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("127", "93", "2006-10-06", "Contanti", "0.00", "45.00", "2", "Rimborso Roberto", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("128", "94", "2006-10-06", "Contanti", "0.00", "25.00", "2", "Rimborso Cappone Marcello", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("129", "95", "2006-10-06", "Contanti", "0.00", "25.00", "2", "Rimborso clarinetto basso", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("130", "96", "2006-10-06", "Contanti", "0.00", "25.00", "2", "Rimborso Sogno Paola", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("131", "97", "2006-10-06", "Contanti", "0.00", "30.00", "2", "Rimborso Cosimo", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("132", "98", "2006-10-06", "Contanti", "0.00", "25.00", "2", "Rimborso Wilmo", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("133", "99", "2006-10-06", "Contanti", "0.00", "25.00", "2", "Rimborso Bertolino", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("134", "100", "2006-10-06", "Contanti", "0.00", "25.00", "2", "Rimborso Pavan Chiara", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("135", "101", "2006-10-06", "Contanti", "0.00", "30.00", "2", "Rimborso Canella", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("136", "102", "2006-10-06", "Contanti", "0.00", "75.00", "2", "Rimborso clarinetto invorio", "27", "2006-10-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("137", "103", "2006-07-22", "Contanti", "0.00", "4.80", "2", "                            Spese per acqua prove... a chi??                        ", "1", "2006-07-17", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("138", "72", "2006-10-06", "Contanti", "0.00", "41.62", "2", "Rimborso a Marica.\r\n                              per rinfresco ?              ", "30", "2006-10-06", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("139", "104", "2006-07-22", "Contanti", "450.00", "0.00", "2", "Servizio a Pray", "22", "2006-06-11", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("140", "103", "2006-01-14", "Contanti", "0.00", "44.12", "2", "Acquisto n� 3 marche da bollo.\r\nAutentica                        ", "1", "2006-01-14", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("141", "103", "2006-01-14", "Contanti", "0.00", "43.86", "2", "Acquisto n� 3 marche da bollo", "1", "2006-01-14", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("142", "103", "2006-01-14", "Contanti", "0.00", "43.86", "2", "Acquisto n� 3 marche da bollo", "1", "2006-01-14", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("143", "30", "2006-01-18", "Contanti", "0.00", "4.50", "2", "                            Raccomandata  Ministero                        ", "3", "2006-01-18", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("144", "30", "2006-02-04", "Contanti", "0.00", "230.00", "2", "                                                Premio Lotteria Santa Cecilia 2005.        Buono pasto Osteria Sottovoce                                                ", "29", "2006-02-04", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("145", "34", "2006-02-04", "Contanti", "0.00", "110.50", "2", "                            Rimborso Giuliani Roberto. Dicembre 2005/Gennaio 2006                                 ", "2", "2006-02-04", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("146", "116", "2006-02-06", "Contanti", "0.00", "35.00", "2", "                                                        Casella Postale                                                ", "3", "2006-02-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("147", "115", "2006-02-13", "Contanti", "0.00", "55.00", "2", "                                                        Acquisto cancelleria presso Isola che non c\'�.                                                ", "12", "2006-02-13", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("148", "68", "2006-03-31", "Contanti", "0.00", "156.00", "2", "Rimborso Giuliani Roberto", "2", "2006-03-31", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("149", "103", "2006-01-01", "Contanti", "1624.85", "0.00", "2", "Saldo iniziale", "1", "2006-01-01", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("150", "106", "2006-01-07", "Contanti", "100.00", "0.00", "2", "                                                        Oblazione Luciana e Rosanna Negri                                                ", "18", "2006-01-07", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("151", "107", "2006-01-07", "Contanti", "100.00", "0.00", "2", "Oblazione Fam. Lana", "18", "2006-01-07", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("152", "28", "2006-01-31", "Contanti", "42.00", "0.00", "2", "Squaratti                        Paolo.\r\nMesi Dicembre 2005 / Gennaio 2006", "20", "2006-01-31", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("153", "56", "2006-01-31", "Contanti", "20.00", "0.00", "2", "                                                                                Scuola Allievi Lezione Dicembre 2005/Gennaio 2006 Mancin Gabriele   ", "20", "2006-01-31", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("154", "108", "2006-01-22", "Contanti", "100.00", "0.00", "2", "                                                        Oblazione Navazza Giovanni                               ", "18", "2006-01-22", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("155", "109", "2006-02-08", "Contanti", "50.00", "0.00", "2", "Oblazione Nobile Milena", "18", "2006-02-08", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("156", "110", "2006-02-05", "Contanti", "240.00", "0.00", "2", "                                                                                    Ara Sant\'Agata                                                                        ", "22", "2006-02-05", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("157", "111", "2006-02-19", "Contanti", "150.00", "0.00", "2", "                                                        Carnevale Zuccaro                                                ", "22", "2006-02-19", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("158", "112", "2006-02-28", "Contanti", "500.00", "0.00", "2", "                                                        Carnevale Valduggia                                                ", "22", "2006-02-28", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("159", "113", "2006-03-05", "Contanti", "270.00", "0.00", "2", "                                                        Carnevale Lebbia                                                ", "22", "2006-03-05", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("160", "103", "2006-03-03", "Contanti", "194.00", "0.00", "2", "Allievi (ric. Ornella)", "20", "2006-03-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("161", "103", "2006-10-07", "Bonifico Bancario", "0.00", "221133.00", "1", "           vcvcvccvcvcvcv                                                      ccgcvvc                                                                                           ", "1", "2006-10-07", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("162", "117", "2006-06-03", "Contanti", "0.00", "45.00", "2", "                                                        Rimborso De Paolis                                                ", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("163", "118", "2006-06-03", "Contanti", "0.00", "25.00", "2", "Rimborso Rondi", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("164", "120", "2006-06-03", "Contanti", "0.00", "50.00", "2", "                                                    Rimborso Vaudano Andrea", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("165", "97", "2006-06-03", "Contanti", "0.00", "60.00", "2", "                                                    Rimborso Cosimo", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("166", "121", "2006-06-03", "Contanti", "0.00", "30.00", "2", "                                                    Rimborso Erbetta", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("167", "122", "2006-06-03", "Contanti", "0.00", "45.00", "2", "                                                    Rimborso Poli", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("168", "123", "2006-06-03", "Contanti", "0.00", "30.00", "2", "                                                    Rimborso Canclini", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("169", "124", "2006-06-03", "Contanti", "0.00", "100.00", "2", "                                                    Rimborso Giletti", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("170", "96", "2006-06-03", "Contanti", "0.00", "30.00", "2", "                                                    Rimborso Sogno Paola", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("171", "125", "2006-06-03", "Contanti", "0.00", "50.00", "2", "                                                    Rimborso Alessio ??", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("172", "79", "2006-06-03", "Contanti", "0.00", "25.00", "2", "                                                    Rimborso Flauto Romagnano ????", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("173", "87", "2006-06-03", "Contanti", "0.00", "50.00", "2", "                                                    Rimborso Mosca Francesca", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("174", "127", "2006-06-03", "Contanti", "0.00", "30.00", "2", "                                                    Rimborso Mattia ????", "27", "2006-06-03", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("175", "60", "2006-06-01", "Contanti", "4.00", "0.00", "2", "                   Oblazione Velatta Laura                                 ", "18", "2006-06-01", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("176", "83", "2006-07-12", "Contanti", "0.00", "95.20", "2", "Imposta Comunale sulla Pubblicit�", "14", "2006-07-12", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("177", "129", "2006-06-19", "Bonifico Bancario", "0.00", "31.18", "3", "Bolletta enel bimestre aprile/maggio 2006", "9", "2006-06-19", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("178", "130", "2006-03-31", "Bonifico Bancario", "0.00", "26.93", "3", "                                                                                                            Competenze Banca Intesa                                                ", "15", "2006-04-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("179", "130", "2006-03-31", "Bonifico Bancario", "0.00", "2.80", "3", "                                                    Commissione invio documenti", "15", "2006-04-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("180", "130", "2006-03-31", "Bonifico Bancario", "0.00", "18.45", "3", "                                                    Imposta di bollo su conto corrente", "15", "2006-04-06", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("181", "103", "2006-04-19", "Bonifico Bancario", "0.00", "33.34", "3", "                                                    Pagamento ??????", "1", "2006-04-19", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("182", "103", "2006-04-10", "Bonifico Bancario", "0.00", "2400.00", "3", "                                                                              Acquisto Basso           .\r\nAssegno n� = 3126252628                                                                   ", "5", "2006-04-12", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("183", "83", "2006-06-14", "Bonifico Bancario", "1500.00", "0.00", "3", "                                                    Bonifico ricevuto da \"Comuine di Grignasco\" a favore di Musica Societ� Operaia \"del 12/06/2006\" mandato 784 - Compenso banda soms per servizi 2005", "19", "2006-06-13", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("184", "131", "2006-06-14", "Bonifico Bancario", "807.00", "0.00", "3", "Servizio Prato Sesia.\r\n              Bonifico ricevuto da comune di prato sesia a favore di musica societ� operaia \r\n                                      ", "22", "2006-06-08", "N", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("185", "132", "2006-05-20", "Bonifico Bancario", "796.05", "0.00", "3", "                                          Servizio Novara 2 giugno 2005.\r\nBonifico ricevuto da comune di novara                                                               ", "30", "2006-05-01", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("186", "114", "2006-10-07", "Bonifico Bancario", "40000.00", "0.00", "1", "                                  zzzzzzzzzzzz                                                                   aaaaaaaaaaaa   ", "1", "2006-10-07", "Y", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("187", "30", "2006-03-30", "Versamento Contanti", "2000.00", "0.00", "3", "                                 Movimento da Cassa a Banca                                                                       ", "28", "2006-03-30", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("188", "30", "2006-03-30", "Contanti", "0.00", "2000.00", "2", "                                  Movimento da Cassa a Banca                          ", "28", "2006-03-30", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("189", "134", "2006-09-12", "Contanti", "200.00", "0.00", "2", "                                   Vendita n� 2 metallofoni                                                                     ", "30", "2006-09-12", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("190", "135", "2006-08-06", "Contanti", "300.00", "0.00", "2", "                compenso per servizio valpiana 2006                                    ", "22", "2006-08-06", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("191", "136", "2006-08-15", "Contanti", "200.00", "0.00", "2", "    rimborso spese servizio festa patronale 2006                                                ", "22", "2006-08-15", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("192", "137", "2006-08-16", "Contanti", "240.00", "0.00", "2", "          rimborso servizio san rocco 2006                                          ", "22", "2006-08-16", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("193", "138", "2006-09-08", "Contanti", "240.00", "0.00", "2", "           rimborso servizio Bovagliano 2006                                         ", "22", "2006-09-08", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("194", "139", "2006-10-06", "Assegno Bancario", "300.00", "0.00", "3", "                 rimborso servizio Rastiglione 2006                                   ", "22", "2006-10-06", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("195", "86", "2006-08-29", "Contanti", "0.00", "100.00", "2", "             ricarica cellulare vodafone                                       ", "1", "2006-08-29", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("196", "137", "2006-08-16", "Contanti", "0.00", "50.00", "2", "               acquisto pancetta festa di S rocco                                     ", "13", "2006-08-16", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("197", "115", "2006-09-12", "Contanti", "0.00", "49.50", "2", "               acquisto carta A3                                      ", "12", "2006-09-12", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("198", "140", "2006-08-30", "Contanti", "0.00", "24.00", "2", "                                            acquisto n. 4 leggii                                                            ", "30", "2006-08-30", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("199", "115", "2006-09-13", "Contanti", "0.00", "2.50", "2", "   acquisto buste per libretti                                                 ", "12", "2006-09-13", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("200", "141", "2006-09-18", "Contanti", "0.00", "17.70", "2", "               spesa per fotocopie sinfonia dei giocattoli                                     ", "12", "2006-09-18", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("201", "116", "2006-06-02", "Contanti", "0.00", "3.40", "2", "     raccomandata per servizio 2 giugno 2006 a novara                                               ", "3", "2006-06-02", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("202", "142", "2006-10-03", "Contanti", "0.00", "188.00", "2", "           assicurazione responsabilit� civile 2006    scad 22-09-2007                                      ", "11", "2006-10-03", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("203", "143", "2006-10-07", "Contanti", "0.00", "121.90", "2", "               acquisto partiture                                     ", "6", "2006-10-07", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("204", "144", "2006-10-07", "Contanti", "0.00", "103.07", "2", "      partiture the persuaders amicalement votre                                              ", "6", "2006-10-07", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("205", "30", "2006-10-07", "Contanti", "0.00", "467.93", "2", "                                                                                                       versamento da cassa a banca                                                                                                         ", "28", "2006-10-07", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("206", "30", "2006-10-07", "Versamento Contanti", "467.93", "0.00", "3", "                                                               versamento contanti da cassa a banca                                                                                             ", "28", "2006-10-07", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("207", "89", "2006-10-07", "Contanti", "25.00", "0.00", "2", "          Oblazione Granieri Domenico                                          ", "18", "2006-10-07", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("208", "102", "2006-10-07", "Contanti", "75.00", "0.00", "2", "                        oblazione besuzzi clarinetto invorio                            ", "18", "2006-10-07", "N", "andrea.baron");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("209", "114", "2006-10-11", "Bonifico Bancario", "60000.00", "0.00", "1", "                                                                                                                     adaddaasd                                                                                                                                               ", "30", "2006-10-11", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("210", "114", "2006-10-11", "Bonifico Bancario", "30001.00", "0.00", "1", "                                                             adaddaasd                                                                                               ", "30", "2006-10-11", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("211", "114", "2006-10-11", "Bonifico Bancario", "30001.00", "0.00", "1", "                                 adaddaasd                                                                       ", "30", "2006-10-11", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("212", "114", "2006-10-11", "Bonifico Bancario", "0.00", "170001.00", "1", "               dfdfgdgdgdfgd                                                                     aaaaaaaaaaaaaaaaaaaaaaaa         dsssd                                                                   ddddd                                                ", "30", "2006-10-11", "Y", "sergio.belli");
INSERT INTO sd_movimenti (ID_Movimento, ID_Soggetto, Data_Valuta, Tipo_Pagamento, Entrate, Uscite, ID_Banca, Descrizione, Id_Voce_Bilancio, Data_Competenza, Deleted, ID_Admin) VALUES("213", "114", "2006-10-11", "Bonifico Bancario", "0.00", "70000.00", "1", "                                                              fdfdf  ggggg                                                                           ssdsdsd                 ", "30", "2006-10-11", "Y", "sergio.belli");


#
# Table structure for table 'sd_note_credito'
#

DROP TABLE IF EXISTS sd_note_credito;
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

DROP TABLE IF EXISTS sd_note_credito_fornitori;
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

DROP TABLE IF EXISTS sd_ordini;
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

DROP TABLE IF EXISTS sd_scadenzario;
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

INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("5", "0", "", "", "2006-05-22", "", "430.00", "0.00", "Contanti", "", "2", "", "", "3");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("6", "0", "", "", "2006-05-22", "", "240.00", "0.00", "Contanti", "", "4", "", "", "4");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("7", "0", "", "", "2006-05-22", "", "253.50", "0.00", "Contanti", "", "3", "", "", "5");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("8", "0", "", "", "2006-05-22", "", "202.47", "0.00", "Contanti", "", "5", "", "", "6");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("9", "0", "", "", "2006-03-16", "", "13.50", "0.00", "Contanti", "", "10", "", "", "7");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("10", "0", "", "", "2006-05-11", "", "0.00", "12.00", "Contanti", "2", "", "", "", "8");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("11", "0", "", "", "2006-05-11", "", "0.00", "12.00", "Contanti", "3", "", "", "", "9");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("12", "0", "", "", "2006-05-11", "", "0.00", "6.00", "Contanti", "4", "", "", "", "10");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("13", "0", "", "", "2006-05-17", "", "0.00", "500.00", "Contanti", "5", "", "", "", "11");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("14", "0", "", "", "2006-05-14", "", "0.00", "270.00", "Contanti", "6", "", "", "", "12");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("15", "0", "", "", "2006-02-28", "", "0.00", "500.00", "Assegno Bancario", "7", "", "", "", "13");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("16", "0", "", "", "2006-05-22", "", "0.00", "70.00", "Contanti", "8", "", "", "", "14");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("17", "0", "", "", "2006-05-22", "", "0.00", "20.00", "Contanti", "9", "", "", "", "15");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("18", "0", "", "", "2006-05-22", "", "0.00", "12.00", "Contanti", "10", "", "", "", "16");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("19", "0", "", "", "2006-05-22", "", "0.00", "12.00", "Contanti", "11", "", "", "", "17");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("20", "0", "", "", "2006-04-24", "", "0.00", "20.00", "Contanti", "12", "", "", "", "18");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("21", "0", "", "", "2006-04-24", "", "0.00", "10.00", "Contanti", "13", "", "", "", "19");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("22", "0", "", "", "2006-04-24", "", "0.00", "6.00", "Contanti", "14", "", "", "", "20");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("23", "0", "", "", "2006-04-24", "", "0.00", "10.00", "Contanti", "15", "", "", "", "21");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("24", "0", "", "", "2006-05-01", "", "0.00", "10.00", "Contanti", "16", "", "", "", "22");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("25", "0", "", "", "2006-05-22", "", "0.00", "6.00", "Contanti", "17", "", "", "", "23");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("26", "0", "", "", "2006-05-22", "", "0.00", "6.00", "Contanti", "18", "", "", "", "24");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("27", "0", "", "", "2006-05-22", "", "0.00", "6.00", "Contanti", "19", "", "", "", "25");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("28", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "20", "", "", "", "26");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("29", "0", "", "", "2006-05-26", "", "0.00", "20.00", "Contanti", "21", "", "", "", "27");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("30", "0", "", "", "2006-03-31", "", "0.00", "10.00", "Contanti", "22", "", "", "", "28");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("31", "0", "", "", "2006-03-31", "", "0.00", "20.00", "Contanti", "23", "", "", "", "29");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("32", "0", "", "", "2006-04-30", "", "0.00", "20.00", "Contanti", "24", "", "", "", "30");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("33", "0", "", "", "2006-03-31", "", "0.00", "20.00", "Contanti", "25", "", "", "", "31");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("34", "0", "", "", "2006-03-31", "", "0.00", "22.00", "Contanti", "25", "", "", "", "32");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("35", "0", "", "", "2006-02-28", "", "0.00", "10.00", "Contanti", "26", "", "", "", "33");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("36", "0", "", "", "2006-02-28", "", "0.00", "80.00", "Contanti", "27", "", "", "", "34");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("37", "0", "", "", "2006-03-31", "", "0.00", "10.00", "Contanti", "28", "", "", "", "35");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("38", "0", "", "", "2006-03-31", "", "0.00", "11.00", "Contanti", "28", "", "", "", "36");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("39", "0", "", "", "2006-03-31", "", "0.00", "20.00", "Contanti", "29", "", "", "", "37");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("40", "0", "", "", "2006-03-31", "", "0.00", "22.00", "Contanti", "29", "", "", "", "38");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("41", "0", "", "", "2006-05-22", "", "0.00", "39.00", "Contanti", "30", "", "", "", "39");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("42", "0", "", "", "2006-05-22", "", "0.00", "13.00", "Contanti", "31", "", "", "", "40");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("43", "0", "", "", "2006-05-22", "", "0.00", "16.00", "Contanti", "32", "", "", "", "41");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("44", "0", "", "", "2006-05-22", "", "0.00", "32.00", "Contanti", "33", "", "", "", "42");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("45", "0", "", "", "2006-05-26", "", "0.00", "12.92", "Contanti", "34", "", "", "", "43");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("46", "0", "", "", "2006-05-26", "", "0.00", "26.00", "Contanti", "34", "", "", "", "44");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("47", "0", "", "", "2006-05-26", "", "0.00", "6.00", "Contanti", "35", "", "", "", "45");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("48", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "36", "", "", "", "46");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("49", "0", "", "", "2006-05-26", "", "0.00", "6.00", "Contanti", "37", "", "", "", "47");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("50", "0", "", "", "2006-05-26", "", "0.00", "6.00", "Contanti", "38", "", "", "", "48");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("51", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "39", "", "", "", "49");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("52", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "40", "", "", "", "50");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("53", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "41", "", "", "", "51");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("54", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "42", "", "", "", "52");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("55", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "43", "", "", "", "53");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("56", "0", "", "", "2006-05-26", "", "0.00", "15.00", "Contanti", "44", "", "", "", "54");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("57", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "45", "", "", "", "55");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("58", "0", "", "", "2006-05-26", "", "0.00", "6.00", "Contanti", "46", "", "", "", "56");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("59", "0", "", "", "2006-05-26", "", "0.00", "6.00", "Contanti", "47", "", "", "", "57");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("60", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "48", "", "", "", "58");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("61", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "49", "", "", "", "59");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("62", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "50", "", "", "", "60");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("63", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "51", "", "", "", "61");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("64", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "52", "", "", "", "62");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("65", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "53", "", "", "", "63");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("66", "0", "", "", "2006-05-26", "", "0.00", "10.00", "Contanti", "54", "", "", "", "64");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("67", "0", "", "", "2006-05-30", "", "0.00", "10.00", "Contanti", "22", "", "", "", "65");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("68", "0", "", "", "2006-05-30", "", "0.00", "20.00", "Contanti", "23", "", "", "", "66");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("69", "0", "", "", "2006-05-30", "", "0.00", "20.00", "Contanti", "55", "", "", "", "67");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("70", "0", "", "", "2006-05-30", "", "0.00", "20.00", "Contanti", "56", "", "", "", "68");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("71", "0", "", "", "2006-05-30", "", "0.00", "10.00", "Contanti", "57", "", "", "", "69");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("72", "0", "", "", "2006-05-30", "", "0.00", "21.00", "Contanti", "28", "", "", "", "70");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("73", "0", "", "", "2006-05-30", "", "0.00", "40.00", "Contanti", "58", "", "", "", "71");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("74", "0", "", "", "2006-05-29", "", "0.00", "240.00", "Contanti", "59", "", "", "", "72");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("75", "0", "", "", "2006-05-30", "", "0.00", "5.00", "Contanti", "60", "", "", "", "73");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("76", "0", "", "", "2006-05-27", "", "0.00", "1050.00", "Contanti", "61", "", "", "", "74");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("77", "0", "", "", "2006-05-30", "", "0.00", "350.00", "Assegno Bancario", "62", "", "", "", "75");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("78", "0", "", "", "2006-01-01", "", "0.00", "753.73", "Contanti", "63", "", "", "", "76");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("79", "0", "", "", "2006-06-03", "", "20.00", "0.00", "Contanti", "", "7", "", "", "77");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("80", "0", "", "", "2006-06-01", "", "8.60", "0.00", "Contanti", "", "10", "", "", "78");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("81", "0", "", "", "2006-06-03", "", "48.00", "0.00", "Contanti", "", "11", "", "", "79");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("82", "0", "", "", "2006-06-03", "", "22.61", "0.00", "Contanti", "", "10", "", "", "80");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("83", "0", "", "", "2006-06-03", "", "50.00", "0.00", "Contanti", "", "10", "", "", "81");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("84", "0", "", "", "2006-10-03", "", "1.00", "0.00", "Contanti", "", "5", "", "", "88");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("85", "0", "", "", "2006-10-03", "", "0.00", "2.00", "Contanti", "35", "", "", "", "89");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("86", "0", "", "", "2006-10-03", "", "0.00", "111.00", "Contanti", "36", "", "", "", "90");
INSERT INTO sd_scadenzario (ID_Scadenza, ID_Fattura_Acquisto, ID_Fattura_Vendita, Ragione_Sociale, Scadenza, ID_Banca, Entrate, Uscite, Tipo_Pagamento, ID_Cliente, ID_Fornitore, ID_Nota_Fornitore, ID_Nota_Cliente, ID_Movimento) VALUES("87", "0", "", "", "2006-10-01", "", "200.00", "0.00", "Bonifico Bancario", "", "2", "", "", "91");


#
# Table structure for table 'sd_soggetti'
#

DROP TABLE IF EXISTS sd_soggetti;
CREATE TABLE sd_soggetti (
  ID_Soggetto int(12) NOT NULL auto_increment,
  Ragione_Sociale varchar(100) default NULL,
  Cognome varchar(100) NOT NULL default '',
  Nome varchar(30) NOT NULL default '',
  PI varchar(12) default NULL,
  CF varchar(12) default NULL,
  Descrizione varchar(100) default NULL,
  Tipo varchar(20) default NULL,
  Indirizzo varchar(60) default NULL,
  Citta varchar(60) default NULL,
  CAP varchar(5) default NULL,
  Provincia varchar(4) default NULL,
  Telefono varchar(20) default NULL,
  Telefono2 varchar(20) default NULL,
  Telefono3 varchar(20) default NULL,
  Fax varchar(20) default NULL,
  Cell varchar(20) default NULL,
  E_mail varchar(100) default NULL,
  Password varchar(8) default NULL,
  Web varchar(50) default NULL,
  Deleted char(1) NOT NULL default 'N',
  Privacy char(1) NOT NULL default 'Y',
  PRIMARY KEY  (ID_Soggetto)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_soggetti'
#

INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("2", "", "Contardi", "Giuseppe", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("3", "", "Contardi", "Marisa", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("4", "", "Cacciami", "Maria Teresa", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("5", "", "Gattinara", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("6", "", "Piane di", "Serravalle Sesia", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("7", "", "Comitato Carnevale", "Grignasco", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("8", "", "Club Patacioi", "Ara", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("9", "", "Famiglia", "Perazzi", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("10", "", "Famiglia Pozzi", "(Marica+Vanni)", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("11", "", "Famiglia", "DaPar�", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("12", "", "Vinzio", "Claudia", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("13", "", "Vinzio", "Vittorino", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("14", " Rag.", "Vinzio", "Laura", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("15", "", "Festa Bianchet", "Gianfranca", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("16", "", "Borelli", "Michele", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("17", "", "Franchi", "Carlo", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("18", "", "Ventura", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("19", "", "Fontaneto", "Marcello", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("20", "", "Frascotti", "Giuliano", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("21", "", "Vinzio", "Ermanno", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("22", "", "Di Lernia", "Giuseppe", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("23", "", "Famiglia Agazzini", "(Linda+Lore)", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("24", "", "Pozzi", "Carlo", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("25", "", "Pagnoni", "Federico", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("26", "", "Pontini", "Andrea", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("27", "", "Cascio", "Antonino+Annalisa", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("28", "", "Squaratti", "Paolo", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("29", "", "Aprile", "Mauro", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("30", "", "Belli", "Sergio", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("31", "", "Mischiatti", "Dino", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("32", "", "Pezzolato", "Luca", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("33", "", "Ritorno", "Cassa", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("34", "", "Giuliani", "Roberto", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("35", "", "Aleppo", "Athos", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("36", "", "Baglioni", "Angelo", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("37", "", "Balzarini", "Ernesto", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("38", "", "Borgato", "Giuliano", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("39", "", "Canobio", "Giuseppe", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("40", "", "Del Villani", "Luigi", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("41", "", "Franzosi", "Luciano", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("42", "", "Giordani", "Elio", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("43", "", "Gobbi", "Angelo", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("44", "", "Molli", "Luigi", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("45", "", "Negri", "Renato", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("46", "", "Nobile", "Piera", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("47", "", "Rabaglio", "Giovanni", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("48", "", "Stefani", "Davide", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("49", "", "Teraroli", "Gianni", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("50", "", "Valsesia", "Valentino", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("51", "", "Vinzio", "Fernando", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("52", "", "Mora", "Gaudenzio", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("53", "", "Mora", "Flora", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("54", "", "Martinetti", "Ugo", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("55", "", "Moretti", "Eleonora", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("56", "", "Mancin", "Gabriele", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("57", "", "Magistrini", "Giacomo", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("58", "", "Schizzerato", "Leonardo", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("59", "", "Anpi Sezione", "Grignasco", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("60", "", "Velatta", "Laura", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("61", "", "Priori", "Festa Patronale Rovasenda", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("62", "", "ProLoco", "Rovasenda", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("63", "", "Saldo Cassa", "Iniziale", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("65", NULL, "Platini", "Fabrizio", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("66", NULL, "Borelli", "Ezio", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("67", NULL, "De Angelis", "Roberto", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("68", NULL, "Giuliani", "Roberto", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("69", NULL, "Anbima", "", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("71", NULL, "Barlassina", "Patrizia", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("72", NULL, "Vanni", "Marica", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("73", "test", "test", "test", "test", "test", NULL, NULL, "test", "test", "test", "te", "test", "test", "test", "test", "test", "test", "test1111", "test", "Y", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("74", "a", "a", "a", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "Y", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("75", "c", "c", "c", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "Y", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("76", "", "Geroso", "Simone", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("77", "", "Quarna", "Claudio", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("78", "", "Calligaris", "Franco", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("79", "Flauto Romagnano", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("80", "Poli Figlio", "Poli", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("81", "", "Giustina", "Vanda", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("82", "Parrocchia Zuccaro", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("83", "Comune Grignasco", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("84", "", "Negri", "Gilberto", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("85", "Essegi Ufficio SRL", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("86", "Comunicare 2000", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("87", "", "Mosca", "Francesca", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("88", "", "Grigolon", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("89", "", "Granieri", "Domenico", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("90", "", ".", "Sandra", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("91", "", "Farassino", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("92", "nipote", "Farassino", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("93", "", ".", "Roberto", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("94", "", "Cappone", "Marcello", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("95", "clarinetto basso", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("96", "", "Sogno", "Paola", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("97", "", ".", "Cosimo", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("98", "", "Bussolino", "Wilmo", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("99", "", "Bertolino", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("100", "", "Pavan", "Chiara", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("101", "", "Canella", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("102", "Carinetto invorio", "Besuzzi", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("103", "undefined", "undefined", "undefined", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("104", "comune Pray", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("105", "addas", ".", ".", "ddfdfdf", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "Y", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("106", "Sigg", "Negri", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("107", "Famiglia", "Lana", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("108", "", "Navazza", "Giovanni", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("109", "", "Nobile", "Milena", "", "", NULL, NULL, "Via Bernardo Vittone 21", "Grignasco", "28075", "NO", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("110", "Priori Sant\'Agata", ".", ".", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("111", "Comitato Carnevale Zuccaro", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("112", "Comitato Carnevale Valduggia", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("113", "Comitato Carnevale Lebbia", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("114", "x rag soc", "xx cognome", "xxx nome", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("115", "Isola che non c\'�", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("116", "Posta Grignasco", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("117", "", "De Paolis", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("118", "", "Rondi", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("119", "Clarinetto Graglia", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("120", "", "Vaudano", "Andrea", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("121", "", "Erbetta", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("122", "", "Poli", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("123", "", "Canclini", "Mauro", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("124", "", "Giletti", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("125", "", ".", "Alessio", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("126", "Flauto Romagnano", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("127", "", ".", "Mattia", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("128", "", "Velatta", "Laura", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "Y", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("129", "Enel", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("130", "Banca Intesa", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("131", "Comune Prato Sesia", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("132", "Comune Novara", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("133", "pippo", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("134", "Dedalo Soc. Coop", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("135", "parrocchia di valpiana", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("136", "Parrocchia di Grignasco", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("137", "Priori SanRocco", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("138", "Priori di Bovagliano", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("139", "", "Lanfranchini", "Benito", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("140", "la bottega della musica", ".", ".", "00553350034", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("141", "tabacheria del peso", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("142", "reale mutua assicuarazioni", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("143", "edizioni musicali wicky", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");
INSERT INTO sd_soggetti (ID_Soggetto, Ragione_Sociale, Cognome, Nome, PI, CF, Descrizione, Tipo, Indirizzo, Citta, CAP, Provincia, Telefono, Telefono2, Telefono3, Fax, Cell, E_mail, Password, Web, Deleted, Privacy) VALUES("144", "scomegna edizioni musicali", ".", ".", "", "", NULL, NULL, "", "", "", "", "", "", "", "", "", "", "", "", "N", "Y");


#
# Table structure for table 'sd_tesseramenti'
#

DROP TABLE IF EXISTS sd_tesseramenti;
CREATE TABLE sd_tesseramenti (
  ID_Tesseramento int(12) unsigned NOT NULL auto_increment,
  ID_Soggetto int(12) unsigned NOT NULL default '0',
  Data_Tessera date NOT NULL default '0000-00-00',
  Importo_Versato int(12) unsigned NOT NULL default '0',
  Validita varchar(4) NOT NULL default '0000',
  Tipo_Socio varchar(50) NOT NULL default '',
  PRIMARY KEY  (ID_Tesseramento)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_tesseramenti'
#



#
# Table structure for table 'sd_tipi_pagamento'
#

DROP TABLE IF EXISTS sd_tipi_pagamento;
CREATE TABLE sd_tipi_pagamento (
  ID_Tipo_Pagamento int(3) NOT NULL auto_increment,
  Tipo_Pagamento varchar(30) NOT NULL default '',
  PRIMARY KEY  (ID_Tipo_Pagamento)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_tipi_pagamento'
#

INSERT INTO sd_tipi_pagamento (ID_Tipo_Pagamento, Tipo_Pagamento) VALUES("1", "Bonifico Bancario");
INSERT INTO sd_tipi_pagamento (ID_Tipo_Pagamento, Tipo_Pagamento) VALUES("2", "Carta di Credito");
INSERT INTO sd_tipi_pagamento (ID_Tipo_Pagamento, Tipo_Pagamento) VALUES("3", "Contanti");
INSERT INTO sd_tipi_pagamento (ID_Tipo_Pagamento, Tipo_Pagamento) VALUES("4", "Assegno Bancario");
INSERT INTO sd_tipi_pagamento (ID_Tipo_Pagamento, Tipo_Pagamento) VALUES("5", "Assegno Circolare");
INSERT INTO sd_tipi_pagamento (ID_Tipo_Pagamento, Tipo_Pagamento) VALUES("6", "Ricevuta Bancaria");
INSERT INTO sd_tipi_pagamento (ID_Tipo_Pagamento, Tipo_Pagamento) VALUES("7", "Versamento Contanti");


#
# Table structure for table 'sd_voci_bilancio'
#

DROP TABLE IF EXISTS sd_voci_bilancio;
CREATE TABLE sd_voci_bilancio (
  id tinyint(3) unsigned NOT NULL auto_increment,
  voce varchar(250) NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY id (id)
) TYPE=MyISAM;



#
# Dumping data for table 'sd_voci_bilancio'
#

INSERT INTO sd_voci_bilancio (id, voce) VALUES("1", "Varie");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("2", "Rimborso spese Maestri");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("3", "Spese Postali");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("4", "Acquisto divise e manutenzione");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("5", "Acquisto e manutenzione strumenti musicali e attrezzature");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("6", "Acquisto partiture");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("7", "Rimborso spese musici");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("8", "Oneri SIAE");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("9", "Energia Elettrica");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("10", "Riscaldamento");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("11", "Assicurazione");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("12", "Cancelleria e stampati");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("13", "Rinfreschi e pranzi");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("14", "Promozione e pubblicit�");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("15", "Oneri Cariplo/Banca Intesa");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("17", "Anbima");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("18", "Tessere e oblazioni");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("19", "Contributo comune di Grignasco");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("20", "Contributo frequenza allievi (Lezioni e Strumenti)");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("21", "Contributo per manutenzione strumenti");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("22", "Offerte ricevute durante servizi e concerti");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("23", "Sottoscrizioni a premi e dolci note");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("24", "Contributo provinciale");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("25", "Contributo Ministero dello Spettacolo");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("26", "Contributo scuola allievi");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("27", "Rimborso Esterni");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("28", "Partita di Giro");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("29", "Acquisto premi per sottoscrizioni");
INSERT INTO sd_voci_bilancio (id, voce) VALUES("30", "Vendita Strumenti");

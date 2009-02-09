# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             banda
# Server version:       4.1.12a-nt
# Server OS:            Win32
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.2 Revision: 1129
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1;*/
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'banda'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "banda";

USE "banda";


#
# Table structure for table 'sd_accessi'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_accessi" (
  "ID" int(11) NOT NULL auto_increment,
  "SESSIONE" varchar(32) NOT NULL default '',
  "USERNAME" varchar(50) NOT NULL default '',
  "DATA" date NOT NULL default '0000-00-00',
  "ORA" time NOT NULL default '00:00:00',
  PRIMARY KEY  ("ID","SESSIONE","USERNAME","DATA")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_accessi'
#

LOCK TABLES "sd_accessi" WRITE;
/*!40000 ALTER TABLE "sd_accessi" DISABLE KEYS;*/
REPLACE INTO "sd_accessi" ("ID", "SESSIONE", "USERNAME", "DATA", "ORA") VALUES
	(1,'','3daec07235','2007-01-17','13:45:13');
REPLACE INTO "sd_accessi" ("ID", "SESSIONE", "USERNAME", "DATA", "ORA") VALUES
	(2,'3daec07235f57f53769e1c7d1cd31c69','sergio.belli','2007-01-17','13:45:33');
/*!40000 ALTER TABLE "sd_accessi" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_acquisti'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_acquisti" (
  "ID_Cliente" int(8) NOT NULL default '0',
  "ID_Ordine" int(12) NOT NULL auto_increment,
  "Progressivo_Fattura" int(6) NOT NULL default '0',
  "ID_Articolo" int(10) NOT NULL default '0',
  "Prezzo" decimal(5,2) NOT NULL default '0.00',
  "Quantita" int(4) NOT NULL default '0',
  "IVA" int(2) NOT NULL default '0',
  "ID_Pagamento" varchar(30) NOT NULL default '',
  "Data_Ordine" date NOT NULL default '0000-00-00',
  "Data_Evasione" date NOT NULL default '0000-00-00',
  "Data_Scadenza" date NOT NULL default '0000-00-00',
  "Ragione_Sociale" varchar(100) NOT NULL default '',
  "Cognome" varchar(100) NOT NULL default '',
  "Nome" varchar(100) NOT NULL default '',
  "Indirizzo" varchar(100) NOT NULL default '',
  "Civico" varchar(12) NOT NULL default '',
  "Citta" varchar(100) NOT NULL default '',
  "CAP" varchar(6) NOT NULL default '',
  "Provincia" char(2) NOT NULL default '',
  "Stato" varchar(150) NOT NULL default '',
  "Telefono" varchar(20) NOT NULL default '',
  "Fax" varchar(20) NOT NULL default '',
  "E_mail" varchar(100) NOT NULL default '',
  PRIMARY KEY  ("ID_Ordine")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_acquisti'
#

# (No data found.)



#
# Table structure for table 'sd_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_admin" (
  "ID_Admin" int(12) NOT NULL auto_increment,
  "Cognome" varchar(30) NOT NULL default '',
  "Nome" varchar(30) NOT NULL default '',
  "Livello" int(2) NOT NULL default '0',
  "Login" varchar(50) NOT NULL default '',
  "Password" varchar(8) NOT NULL default '',
  "Email" varchar(100) default NULL,
  PRIMARY KEY  ("ID_Admin")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_admin'
#

LOCK TABLES "sd_admin" WRITE;
/*!40000 ALTER TABLE "sd_admin" DISABLE KEYS;*/
REPLACE INTO "sd_admin" ("ID_Admin", "Cognome", "Nome", "Livello", "Login", "Password", "Email") VALUES
	(1,'Belli','Sergio',0,'sergio.belli','sergio','sergio.belli@email.it');
REPLACE INTO "sd_admin" ("ID_Admin", "Cognome", "Nome", "Livello", "Login", "Password", "Email") VALUES
	(2,'Baron','Andrea',0,'andrea.baron','andrea','andrea.baron@deagostini.it,baron@alice.it');
REPLACE INTO "sd_admin" ("ID_Admin", "Cognome", "Nome", "Livello", "Login", "Password", "Email") VALUES
	(3,'Baglioni','Corrado',0,'corrado.baglioni','corrado','baglioni.net@libero.it');
REPLACE INTO "sd_admin" ("ID_Admin", "Cognome", "Nome", "Livello", "Login", "Password", "Email") VALUES
	(4,'De Angelis','Martino',0,'martino.deangelis','martino',NULL);
REPLACE INTO "sd_admin" ("ID_Admin", "Cognome", "Nome", "Livello", "Login", "Password", "Email") VALUES
	(5,'Regis','Marica',0,'marica.regis','marica','marica.vanni@alice.it');
REPLACE INTO "sd_admin" ("ID_Admin", "Cognome", "Nome", "Livello", "Login", "Password", "Email") VALUES
	(6,'Bressan','Luca',0,'luca.bressan','luca','brexy@libero.it');
REPLACE INTO "sd_admin" ("ID_Admin", "Cognome", "Nome", "Livello", "Login", "Password", "Email") VALUES
	(7,'Pasqualin','Ornella',0,'ornella.pasqualin','ornella',NULL);
/*!40000 ALTER TABLE "sd_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_anagrafica'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_anagrafica" (
  "ID_Azienda" int(10) NOT NULL auto_increment,
  "Abilitato" smallint(6) NOT NULL default '0',
  "Ragione_Sociale" varchar(100) NOT NULL default '',
  "Cognome" varchar(30) NOT NULL default '',
  "Nome" varchar(30) NOT NULL default '',
  "PI" varchar(16) NOT NULL default '',
  "CF" varchar(16) NOT NULL default '',
  "Indirizzo" varchar(60) NOT NULL default '',
  "Citta" varchar(60) NOT NULL default '',
  "CAP" varchar(5) NOT NULL default '',
  "Provincia" char(2) NOT NULL default '',
  "Telefono" varchar(20) NOT NULL default '',
  "Telefono2" varchar(20) default NULL,
  "Telefono3" varchar(20) default NULL,
  "Fax" varchar(20) default NULL,
  "Cell" varchar(20) default NULL,
  "E_mail" varchar(100) default NULL,
  "Web" varchar(50) default NULL,
  PRIMARY KEY  ("ID_Azienda"),
  UNIQUE KEY "PI" ("PI"),
  UNIQUE KEY "E_mail" ("E_mail")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_anagrafica'
#

LOCK TABLES "sd_anagrafica" WRITE;
/*!40000 ALTER TABLE "sd_anagrafica" DISABLE KEYS;*/
REPLACE INTO "sd_anagrafica" ("ID_Azienda", "Abilitato", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Web") VALUES
	(1,0,'Musica Societa Operaia di Grignasco','Banda','Musicale','91001100030','91001100030','Via Rosa Massara 18','Grignasco','28075','NO','0163417130','0163834668','','','','','');
/*!40000 ALTER TABLE "sd_anagrafica" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_anni_bilancio'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_anni_bilancio" (
  "Anno" varchar(4) NOT NULL default '0',
  PRIMARY KEY  ("Anno"),
  UNIQUE KEY "Anno" ("Anno")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_anni_bilancio'
#

LOCK TABLES "sd_anni_bilancio" WRITE;
/*!40000 ALTER TABLE "sd_anni_bilancio" DISABLE KEYS;*/
REPLACE INTO "sd_anni_bilancio" ("Anno") VALUES
	('2005');
REPLACE INTO "sd_anni_bilancio" ("Anno") VALUES
	('2006');
REPLACE INTO "sd_anni_bilancio" ("Anno") VALUES
	('2007');
REPLACE INTO "sd_anni_bilancio" ("Anno") VALUES
	('2008');
REPLACE INTO "sd_anni_bilancio" ("Anno") VALUES
	('2009');
REPLACE INTO "sd_anni_bilancio" ("Anno") VALUES
	('2010');
REPLACE INTO "sd_anni_bilancio" ("Anno") VALUES
	('2011');
/*!40000 ALTER TABLE "sd_anni_bilancio" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_banche'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_banche" (
  "ID_Banca" int(4) NOT NULL auto_increment,
  "Banca" varchar(50) NOT NULL default '',
  "Indirizzo" varchar(100) NOT NULL default '',
  "Agenzia" varchar(4) NOT NULL default '',
  "Abi" varchar(6) NOT NULL default '',
  "Cab" varchar(6) NOT NULL default '',
  "Conto" varchar(12) NOT NULL default '',
  "Titolare" varchar(100) NOT NULL default '',
  "Deleted" char(1) NOT NULL default 'N',
  PRIMARY KEY  ("ID_Banca")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_banche'
#

LOCK TABLES "sd_banche" WRITE;
/*!40000 ALTER TABLE "sd_banche" DISABLE KEYS;*/
REPLACE INTO "sd_banche" ("ID_Banca", "Banca", "Indirizzo", "Agenzia", "Abi", "Cab", "Conto", "Titolare", "Deleted") VALUES
	(1,'Banca del Credito Cooperativo','Via Boh, 32','Cent','08234','11345','565658','Gnauz Spa','Y');
REPLACE INTO "sd_banche" ("ID_Banca", "Banca", "Indirizzo", "Agenzia", "Abi", "Cab", "Conto", "Titolare", "Deleted") VALUES
	(2,'Cassa','','','','','','','N');
REPLACE INTO "sd_banche" ("ID_Banca", "Banca", "Indirizzo", "Agenzia", "Abi", "Cab", "Conto", "Titolare", "Deleted") VALUES
	(3,'Banca Intesa','','','03268','22300','aaaa','saaaa','N');
/*!40000 ALTER TABLE "sd_banche" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_clienti'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_clienti" (
  "ID_Cliente" int(10) NOT NULL auto_increment,
  "Ragione_Sociale" varchar(100) default NULL,
  "Cognome" varchar(100) NOT NULL default '',
  "Nome" varchar(30) NOT NULL default '',
  "PI" varchar(16) default NULL,
  "CF" varchar(16) default NULL,
  "Indirizzo" varchar(60) default NULL,
  "Citta" varchar(60) default NULL,
  "CAP" varchar(5) default NULL,
  "Provincia" char(2) default NULL,
  "Telefono" varchar(20) default NULL,
  "Telefono2" varchar(20) default NULL,
  "Telefono3" varchar(20) default NULL,
  "Fax" varchar(20) default NULL,
  "Cell" varchar(20) default NULL,
  "E_mail" varchar(100) default NULL,
  "Password" varchar(8) default NULL,
  "Web" varchar(50) default NULL,
  PRIMARY KEY  ("ID_Cliente")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_clienti'
#

LOCK TABLES "sd_clienti" WRITE;
/*!40000 ALTER TABLE "sd_clienti" DISABLE KEYS;*/
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(2,'','Contardi','Giuseppe','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(3,'','Contardi','Marisa','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(4,'','Cacciami','Maria Teresa','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(5,'','Gattinara','','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(6,'','Piane di','Serravalle Sesia','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(7,'','Comitato Carnevale','Grignasco','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(8,'','Club Patacioi','Ara','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(9,'','Famiglia','Perazzi','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(10,'','Famiglia Pozzi','(Marica+Vanni)','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(11,'','Famiglia','DaParé','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(12,'','Vinzio','Claudia','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(13,'','Vinzio','Vittorino','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(14,'','Vinzio Rag.','Laura','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(15,'','Festa Bianchet','Gianfranca','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(16,'','Borelli','Michele','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(17,'','Franchi','Carlo','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(18,'','Ventura','','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(19,'','Fontaneto','Marcello','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(20,'','Frascotti','Giuliano','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(21,'','Vinzio','Ermanno','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(22,'','Di Lernia','Giuseppe','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(23,'','Famiglia Agazzini','(Linda+Lore)','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(24,'','Pozzi','Carlo','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(25,'','Pagnoni','Federico','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(26,'','Pontini','Andrea','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(27,'','Cascio','Antonino+Annalisa','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(28,'','Squaratti','Paolo','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(29,'','Aprile','Mauro','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(30,'','Belli','Sergio','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(31,'','Mischiatti','Dino','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(32,'','Pezzolato','Luca','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(33,'','Ritorno','Cassa','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(34,'','Giuliani','Roberto','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(35,'','Aleppo','Athos','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(36,'','Baglioni','Angelo','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(37,'','Balzarini','Ernesto','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(38,'','Borgato','Giuliano','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(39,'','Canobio','Giuseppe','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(40,'','Del Villani','Luigi','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(41,'','Franzosi','Luciano','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(42,'','Giordani','Elio','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(43,'','Gobbi','Angelo','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(44,'','Molli','Luigi','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(45,'','Negri','Renato','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(46,'','Nobile','Piera','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(47,'','Rabaglio','Giovanni','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(48,'','Stefani','Davide','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(49,'','Teraroli','Gianni','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(50,'','Valsesia','Valentino','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(51,'','Vinzio','Fernando','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(52,'','Mora','Gaudenzio','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(53,'','Mora','Flora','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(54,'','Martinetti','Ugo','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(55,'','Moretti','Eleonora','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(56,'','Mancin','Gabriele','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(57,'','Magistrini','Giacomo','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(58,'','Schizzerato','Leonardo','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(59,'','Anpi Sezione','Grignasco','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(60,'','Velatta','Laura','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(61,'','Priori','Festa Patronale Rovasenda','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(62,'','ProLoco','Rovasenda','','','','','','','','','','','','','','');
REPLACE INTO "sd_clienti" ("ID_Cliente", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(63,'','Saldo Cassa','Iniziale','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE "sd_clienti" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_codici_iva'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_codici_iva" (
  "Codice" varchar(12) NOT NULL default '',
  "Descrizione" varchar(50) NOT NULL default '',
  "Percentuale" varchar(6) NOT NULL default '',
  "Indetraibile" varchar(6) NOT NULL default ''
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_codici_iva'
#

LOCK TABLES "sd_codici_iva" WRITE;
/*!40000 ALTER TABLE "sd_codici_iva" DISABLE KEYS;*/
REPLACE INTO "sd_codici_iva" ("Codice", "Descrizione", "Percentuale", "Indetraibile") VALUES
	('20','20%','20','0');
REPLACE INTO "sd_codici_iva" ("Codice", "Descrizione", "Percentuale", "Indetraibile") VALUES
	('10','10%','10','0');
/*!40000 ALTER TABLE "sd_codici_iva" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_fatture_acquisto'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_fatture_acquisto" (
  "ID_Fattura_Acquisto" int(10) NOT NULL auto_increment,
  "ID_Fornitore" int(10) NOT NULL default '0',
  "ID_Pagamento" varchar(30) NOT NULL default '',
  "N_Fattura" varchar(12) NOT NULL default '',
  "Data_Fattura" date NOT NULL default '0000-00-00',
  "Ragione_Sociale" varchar(200) NOT NULL default '',
  "PI" varchar(16) NOT NULL default '',
  "Indirizzo" varchar(100) NOT NULL default '',
  "Citta" varchar(60) NOT NULL default '',
  "CAP" varchar(5) NOT NULL default '',
  "Provincia" char(2) NOT NULL default '',
  "Descrizione" text NOT NULL,
  "Totale" decimal(10,2) NOT NULL default '0.00',
  "Imposta" decimal(10,2) NOT NULL default '0.00',
  "Tipo_Pagamento" varchar(20) NOT NULL default '',
  "Scadenza" date NOT NULL default '0000-00-00',
  "Note" text NOT NULL,
  PRIMARY KEY  ("ID_Fattura_Acquisto")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_fatture_acquisto'
#

# (No data found.)



#
# Table structure for table 'sd_fatture_vendita'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_fatture_vendita" (
  "ID_Fattura" int(10) NOT NULL auto_increment,
  "Prog_Fattura_Annuo" int(10) default NULL,
  "ID_Cliente" int(10) NOT NULL default '0',
  "ID_Banca" varchar(10) NOT NULL default '',
  "ID_Pagamento" varchar(30) NOT NULL default '',
  "Data_Fattura" date NOT NULL default '0000-00-00',
  "Ragione_Sociale" varchar(200) NOT NULL default '',
  "PI" varchar(16) NOT NULL default '',
  "Indirizzo" varchar(100) NOT NULL default '',
  "Citta" varchar(60) NOT NULL default '',
  "CAP" varchar(5) NOT NULL default '',
  "Provincia" char(2) NOT NULL default '',
  "Descrizione" text NOT NULL,
  "Totale" decimal(10,2) NOT NULL default '0.00',
  "Tipo_Pagamento" varchar(20) NOT NULL default '',
  "Scadenza" date NOT NULL default '0000-00-00',
  "Note" text NOT NULL,
  PRIMARY KEY  ("ID_Fattura")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_fatture_vendita'
#

# (No data found.)



#
# Table structure for table 'sd_fornitori'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_fornitori" (
  "ID_Fornitore" int(10) NOT NULL auto_increment,
  "Ragione_Sociale" varchar(100) default NULL,
  "Cognome" varchar(30) NOT NULL default '',
  "Nome" varchar(30) NOT NULL default '',
  "PI" varchar(16) default NULL,
  "CF" varchar(16) default NULL,
  "Indirizzo" varchar(60) default NULL,
  "Citta" varchar(60) default NULL,
  "CAP" varchar(5) default NULL,
  "Civico" varchar(10) default NULL,
  "Provincia" char(2) default NULL,
  "Telefono" varchar(20) default NULL,
  "Telefono2" varchar(20) default NULL,
  "Telefono3" varchar(20) default NULL,
  "Fax" varchar(20) default NULL,
  "Cell" varchar(20) default NULL,
  "E_mail" varchar(100) default NULL,
  "Password" varchar(8) default NULL,
  "Web" varchar(50) default NULL,
  PRIMARY KEY  ("ID_Fornitore")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_fornitori'
#

LOCK TABLES "sd_fornitori" WRITE;
/*!40000 ALTER TABLE "sd_fornitori" DISABLE KEYS;*/
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(2,'','Platini','Fabrizio','','','','','','','','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(11,'','Borelli','Ezio','','','','','',NULL,'','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(4,'','De Angelis','Roberto','','','','','','','','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(3,'','Giuliani','Roberto','','','','','','','','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(5,'','Anbima','','','','','','','','','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(64,'','Platini','Fabrizio','','','','','','','','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(7,'','Barlassina','Patrizia','','','','','',NULL,'','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(10,'','Vanni','Marica','','','','','',NULL,'','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(65,'','Borelli','Ezio','','','','','',NULL,'','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(66,'','De Angelis','Roberto','','','','','','','','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(67,'','Giuliani','Roberto','','','','','','','','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(68,'','Anbima','','','','','','','','','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(69,'','Barlassina','Patrizia','','','','','',NULL,'','','','','','','','','');
REPLACE INTO "sd_fornitori" ("ID_Fornitore", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Indirizzo", "Citta", "CAP", "Civico", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web") VALUES
	(70,'','Vanni','Marica','','','','','',NULL,'','','','','','','','','');
/*!40000 ALTER TABLE "sd_fornitori" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_movimenti'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_movimenti" (
  "ID_Movimento" int(12) NOT NULL auto_increment,
  "ID_Soggetto" varchar(12) NOT NULL default '',
  "Data_Valuta" date NOT NULL default '0000-00-00',
  "Tipo_Pagamento" varchar(100) NOT NULL default '',
  "Entrate" decimal(8,2) NOT NULL default '0.00',
  "Uscite" decimal(8,2) NOT NULL default '0.00',
  "ID_Banca" varchar(12) NOT NULL default '',
  "Descrizione" text NOT NULL,
  "Id_Voce_Bilancio" tinyint(3) unsigned NOT NULL default '0',
  "Data_Competenza" date NOT NULL default '0000-00-00',
  "Deleted" char(1) NOT NULL default 'N',
  "ID_Admin" varchar(50) NOT NULL default '0',
  "Anno_Bilancio" varchar(4) NOT NULL default '',
  PRIMARY KEY  ("ID_Movimento")
) /*!40100 DEFAULT CHARSET=latin1 PACK_KEYS=1*/;



#
# Dumping data for table 'sd_movimenti'
#

LOCK TABLES "sd_movimenti" WRITE;
/*!40000 ALTER TABLE "sd_movimenti" DISABLE KEYS;*/
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(3,'65','2006-05-22','Contanti','0','430','2','Pagamento Maestri Platini Fabrizio Marzo/Aprile 2006',2,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(4,'67','2006-05-22','Contanti','0','240','2','Pagamento Maestri DeAngelis Roberto 21/10/2005 - 24/03/2006',2,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(5,'34','2006-05-22','Contanti','0','253.5','2','Pagamento Maestri Giuliani Roberto Marzo/Aprile 2006',2,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(6,'69','2006-05-22','Contanti','0','202.47','2','Tesseramento Anbima 2006',17,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(7,'72','2006-03-16','Contanti','0','13.5','2','Spese Postali Acquisto Francobolli a Vanni Marica',3,'2006-03-16','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(8,'2','2006-05-11','Contanti','12','0','2','Tesseramento 2006 Contardi Giuseppe',18,'2006-05-11','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(9,'3','2006-05-11','Contanti','12','0','2','Tesseramento 2006 Contardi Marisa',18,'2006-05-11','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(10,'4','2006-05-11','Contanti','6','0','2','Tesseramento 2006 Cacciami Maria Teresa',18,'2006-05-11','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(11,'5','2006-05-17','Contanti','500','0','2','Compenso Servizio di Gattinara',22,'2006-05-17','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(12,'6','2006-05-14','Contanti','270','0','2','Compenso Servizio Piane di Serravalle Sesia',22,'2006-05-14','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(13,'7','2006-02-28','Assegno Bancario','500','0','2','Servizio Carnevale Grignasco "Giubiacia" Assegno',22,'2006-02-28','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(14,'8','2006-05-22','Contanti','70','0','2','Compenso Carnevale Ara Club Patacioi Ara',22,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(15,'9','2006-05-22','Contanti','20','0','2','Tesseramento 2006 Famiglia Perazzi Federica, Massimo, Gianpiero',18,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(16,'10','2006-05-22','Contanti','12','0','2','Tesseramento 2006 Famiglia Pozzi Vanni, Marica',18,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(17,'11','2006-05-22','Contanti','12','0','2','Tesseramento 2006 Famiglia Da Paré Augusto, Ornella',18,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(18,'12','2006-04-24','Contanti','20','0','2','Tesseramento 2006 Vinzio Claudia',18,'2006-04-24','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(19,'13','2006-04-24','Contanti','10','0','2','Tesseramento 2006 Vinzio Vittorino',18,'2006-04-24','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(20,'14','2006-04-24','Contanti','6','0','2','Tesseramento 2006 Vinzio Rag. Laura',18,'2006-04-24','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(21,'15','2006-04-24','Contanti','10','0','2','Tesseramento 2006 Festa Bianchet Gianfranca',18,'2006-04-24','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(22,'16','2006-05-01','Contanti','10','0','2','Tesseramento 2006 Borelli Michele',18,'2006-05-01','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(23,'17','2006-05-22','Contanti','6','0','2','Tesseramento 2006 Franchi Carlo',18,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(24,'18','2006-05-22','Contanti','6','0','2','Tesseramento 2006 Ventura',18,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(25,'19','2006-05-22','Contanti','6','0','2','Tesseramento 2006 Fontaneto Marcello',18,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(26,'20','2006-05-26','Contanti','10','0','2',' Tesseramento 2006 Frascotti Giuliano ',18,'2006-05-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(27,'21','2006-05-26','Contanti','20','0','2',' Tesseramento 2006 Vinzio Ermanno ',18,'2006-05-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(28,'22','2006-03-31','Contanti','10','0','2','                             Scuola Allievi Lezione Marzo 2006 Di Lernia Giuseppe                         ',20,'2006-03-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(29,'23','2006-03-31','Contanti','20','0','2',' Scuola Allievi Lezione Marzo Agazzini Linda+Lorenzo ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(30,'24','2006-04-30','Contanti','20','0','2',' Scuola Allievi Lezione Marzo/Aprile 2006 Pozzi Carlo ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(31,'25','2006-03-31','Contanti','20','0','2',' Scuola Allievi Lezione Febbraio/Marzo 2006 Pagnoni Federico ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(32,'25','2006-03-31','Contanti','22','0','2',' Scuola Allievi Strumento Febbraio/Marzo 2006 Pagnoni Federico ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(33,'26','2006-02-28','Contanti','10','0','2','                             Scuola Allievi Lezione Febbraio Pontini Andrea                         ',20,'2006-11-30','N','marica.regis','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(34,'27','2006-02-28','Contanti','80','0','2',' Scuola Allievi Lezione Novembre/Dicembre 2005 Gennaio/Febbraio 2006 Cascio Antonino+Annalisa ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(35,'28','2006-03-31','Contanti','10','0','2',' Scuola Allievi Lezione Marzo 2006 Squaratti Paolo ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(36,'28','2006-03-31','Contanti','11','0','2',' Scuola Allievi Strumento Marzo 2006 Squaratti Paolo ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(37,'29','2006-03-31','Contanti','20','0','2',' Scuola Allievi Lezione Febbraio/Marzo 2006 Aprile Mauro ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(38,'29','2006-03-31','Contanti','22','0','2',' Scuola Allievi Strumento Febbraio/Marzo 2006 Aprile Mauro ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(39,'30','2006-05-22','Contanti','39','0','2','Oblazione Sergio Belli',18,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(40,'31','2006-05-22','Contanti','13','0','2','Oblazione Mischiatti Dino',18,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(41,'32','2006-05-22','Contanti','16','0','2','Oblazione Pezzolato Luca',18,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(42,'33','2006-05-22','Contanti','32','0','2','Ritorno Cassa',1,'2006-05-22','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(43,'34','2006-05-26','Contanti','12.92','0','2','Oblazione Giuliani Roberto',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(44,'34','2006-05-26','Contanti','26','0','2',' Rettifica Retribuzione Aprile/Maggio 2006 Giuliani Roberto ',1,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(45,'35','2006-05-26','Contanti','6','0','2','Tesseramento 2006 Aleppo Athos',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(46,'36','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Baglioni Angelo',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(47,'37','2006-05-26','Contanti','6','0','2','Tesseramento 2006 Balzarini Ernesto',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(48,'38','2006-05-26','Contanti','6','0','2','Tesseramento 2006 Borgato Giuliano',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(49,'39','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Canobio Giuseppe',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(50,'40','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Del Villani Luigi',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(51,'41','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Franzosi Luciano',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(52,'42','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Giordani Elio',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(53,'43','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Gobbi Angelo',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(54,'44','2006-05-26','Contanti','15','0','2','Tesseramento 2006 Molli Luigi',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(55,'45','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Negri Renato',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(56,'46','2006-05-26','Contanti','6','0','2','Tesseramento 2006 Nobile Piera',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(57,'47','2006-05-26','Contanti','6','0','2','Tesseramento 2006 Rabaglio Giovanni',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(58,'48','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Stefani Davide',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(59,'49','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Teraroli Gianni',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(60,'50','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Valsesia Valentino',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(61,'51','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Vinzio Fernando',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(62,'52','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Mora Gaudenzio',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(63,'53','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Mora Flora',18,'2006-05-02','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(64,'54','2006-05-26','Contanti','10','0','2','Tesseramento 2006 Martinetti Ugo',18,'2006-05-26','N','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(65,'22','2006-05-30','Contanti','10','0','2','   Scuola Allievi Lezione Febbraio 2006 Di Lernia Giuseppe    ',20,'2000-11-30','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(66,'23','2006-05-30','Contanti','20','0','2',' Scuola Allievi Lezione Febbraio 2006 ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(67,'55','2006-05-30','Contanti','20','0','2',' Scuola Allievi Lezione Febbraio/Marzo 2006 Moretti Eleonora ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(68,'56','2006-05-30','Contanti','20','0','2','   Scuola Allievi Lezione Febbraio/Marzo 2006 Mancin Gabriele    ',20,'2006-05-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(69,'57','2006-05-30','Contanti','10','0','2',' Scuola Allievi Lezione Febbraio 2006 Magistrini Giacomo ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(70,'28','2006-05-30','Contanti','21','0','2',' Scuola Allievi Lezione + Strumento Febbraio 2006 Squaratti Paolo ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(71,'58','2006-05-30','Contanti','40','0','2',' Scuola Allievi Lezione Febbraio/Marzo/Aprile/Maggio 2006 Schizzerato Leonardo ',20,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(72,'59','2006-05-29','Contanti','240','0','2',' Rimborso Spese Anpi Sezione Grignasco ',22,'2006-05-29','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(73,'60','2006-05-30','Contanti','4.92','0','2','  Oblazione Velatta Laura   ',18,'2000-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(74,'61','2006-05-27','Contanti','1050','0','2',' Rimborso doppio Servizio presso Rovasenda per Festa patronale. Concerto 700 euro Processione 350 euro ',22,'2006-05-27','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(75,'62','2006-06-08','Assegno Bancario','350','0','3',' Rimborso Processione Rovasenda 21/05/2006 Assegno versato il 30/05/2006 ',22,'2006-05-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(76,'63','2006-01-01','Contanti','753.73','0','2','Saldo Cassa a passaggio consegne',0,'2006-01-01','Y','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(77,'71','2006-06-03','Contanti','0','20','2',' Rimborso spese per acquisto fiori a Barlassina Patrizia ',1,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(78,'72','2006-06-01','Contanti','0','8.6','2',' Rimborso spese per acquisto francobolli e spedizione raccomandata a Vanni Marica ',3,'2006-06-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(79,'66','2006-06-03','Contanti','0','48','2',' Rimborso spese per acquisto paste a Borelli Ezio ',1,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(80,'72','2006-06-03','Contanti','0','22.61','2',' Rimborso spese per acquisto generi alimentari per rinfresco a Vanni Marica ',1,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(81,'212','2006-06-03','Contanti','0','50','2','                              Rimborso spese per acquisto tranci di pizza (a Vanni Marica)                           ',13,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(92,'67','2006-10-04','Assegno Bancario','0','100','1','qeqweqwewqeqwe',7,'2006-10-04','Y','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(93,'69','2006-10-04','Bonifico Bancario','0','201','3','asasasaaassaassaas',13,'2000-01-01','Y','0','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(94,'59','2006-10-04','Carta di Credito','301','0','1','wewewqerwqerwre',14,'2006-10-04','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(95,'35','2006-10-04','Ricevuta Bancaria','404','0','1','adsdsddssd',14,'2000-01-01','Y','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(96,'','2006-10-05','Bonifico Bancario','10','0','1','dfsdfsdfd',23,'2006-10-05','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(97,'35','2006-10-05','Bonifico Bancario','0','11','1','',23,'2006-10-05','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(98,'35','2006-10-05','Bonifico Bancario','0','12','1','',7,'2006-10-05','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(99,'64','2006-10-05','Bonifico Bancario','1','0','1','xxx',1,'2006-10-05','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(100,'64','2006-10-05','Assegno Circolare','2','0','2','xxx',0,'2000-01-01','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(101,'49','2006-10-05','Bonifico Bancario','0','2002','2','fdfffg    sdsdsdddfs',1,'2006-10-05','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(102,'35','2006-10-05','Bonifico Bancario','3000','0','1','',18,'2006-10-05','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(103,'35','2006-10-05','Bonifico Bancario','3000','0','1','',18,'2006-10-05','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(104,'35','2006-10-05','Bonifico Bancario','123','0','1','aasaasaasaas ',1,'2006-10-05','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(105,'64','2006-10-05','Bonifico Bancario','10','0','1','gfgffffg ',8,'2006-10-05','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(106,'76','2006-07-22','Carta di Credito','10','0','2','Oblazione Geroso Simone',18,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(107,'77','2006-07-22','Contanti','67','0','2','Oblazione Quarna Claudio',18,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(108,'78','2006-07-22','Contanti','25','0','2','Oblazione Calligaris Franco',18,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(109,'79','2006-07-22','Contanti','25','0','2','Oblazione Flauto Romagnano',18,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(110,'81','2006-07-22','Contanti','100','0','2','  Oblazione Giustina Vanda in memoria di Giustina Florindo ',18,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(111,'80','2006-07-22','Contanti','25','0','2','Oblazione Poli figlio',18,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(112,'82','2006-07-22','Contanti','300','0','2','Servizio a Zuccaro',22,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(113,'83','2006-07-22','Assegno Bancario','1000','0','3','Contributo Comune Grignasco anno 2006',19,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(114,'210','2006-07-22','Contanti','433.83','0','2',' Concerto Estivo. Offerta ricevuta ',22,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(115,'84','2006-07-22','Assegno Bancario','0','1222','3','   Compenso Gennaio/Giugno 2006 Negri Gilberto   . ASSEGNO NR 3126252629 ',2,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(116,'65','2006-07-22','Contanti','0','534','2','  Compenso Maggio/Giugno 2006 Platini Fabrizio. Concerti Rovasenda.   ',2,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(117,'85','2006-07-22','Contanti','0','80','2','Acquisto toner',12,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(118,'86','2006-07-22','Contanti','0','49','2',' Acquisto cellulare ',31,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(119,'86','2006-07-22','Contanti','0','50','2',' Ricarica cellulare ',31,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(120,'87','2006-07-22','Contanti','0','75','2','Rimborso Mosca Francesca',27,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(121,'88','2006-07-22','Contanti','0','80','2','Rimborso Grigolon',27,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(122,'89','2006-07-22','Contanti','0','25','2','Rimborso Domenico',27,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(123,'90','2006-07-22','Contanti','0','45','2','Rimborso Sandra',27,'2006-07-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(124,'65','2006-09-06','Contanti','0','482','2','  Compenso Luglio/Agosto 2006 Platini Fabrizio    430 + concerto luglio euro 52   ',2,'2006-09-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(125,'91','2006-10-06','Contanti','0','45','2','Rimborso Farassino',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(126,'92','2006-10-06','Contanti','0','45','2','Rimborso nipote Farassino',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(127,'93','2006-10-06','Contanti','0','45','2','Rimborso Roberto',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(128,'94','2006-10-06','Contanti','0','25','2','Rimborso Cappone Marcello',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(129,'95','2006-10-06','Contanti','0','25','2','Rimborso clarinetto basso',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(130,'96','2006-10-06','Contanti','0','25','2','Rimborso Sogno Paola',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(131,'97','2006-10-06','Contanti','0','30','2','Rimborso Cosimo',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(132,'98','2006-10-06','Contanti','0','25','2','Rimborso Wilmo',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(133,'99','2006-10-06','Contanti','0','25','2','Rimborso Bertolino',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(134,'100','2006-10-06','Contanti','0','25','2','Rimborso Pavan Chiara',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(135,'101','2006-10-06','Contanti','0','30','2','Rimborso Canella',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(136,'102','2006-10-06','Contanti','0','75','2','Rimborso clarinetto invorio',27,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(137,'232','2006-07-22','Contanti','0','4.8','2','    Spese per acqua prove. ',13,'2006-07-17','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(138,'72','2006-10-06','Contanti','0','41.62','2','  Rimborso a Marica.    per rinfresco . ',13,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(139,'104','2006-07-22','Contanti','450','0','2',' Servizio festa alpini a Pray ',22,'2006-06-11','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(140,'103','2006-01-14','Contanti','0','44.12','2','   Acquisto n° 3 marche da bollo. Autentica ',3,'2006-01-14','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(141,'103','2006-01-14','Contanti','0','43.86','2','Acquisto n° 3 marche da bollo',1,'2006-01-14','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(142,'103','2006-01-14','Contanti','0','43.86','2','Acquisto n° 3 marche da bollo',1,'2006-01-14','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(143,'30','2006-01-18','Contanti','0','4.5','2',' Raccomandata  Ministero ',3,'2006-01-18','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(144,'30','2006-02-04','Contanti','0','230','2','   Premio Lotteria Santa Cecilia 2005.    Buono pasto Osteria Sottovoce   ',29,'2006-02-04','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(145,'34','2006-02-04','Contanti','0','110.5','2',' Rimborso Giuliani Roberto. Dicembre 2005/Gennaio 2006  ',2,'2006-02-04','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(146,'116','2006-02-06','Contanti','0','35','2','  Casella Postale   ',3,'2006-02-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(147,'115','2006-02-13','Contanti','0','55','2','  Acquisto cancelleria presso Isola che non c''è.   ',12,'2006-02-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(148,'34','2006-03-31','Contanti','0','156','2','Rimborso Giuliani Roberto',2,'2006-03-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(149,'103','2006-01-01','Contanti','579.41','0','2','   Saldo iniziale    ',32,'2005-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(150,'106','2006-01-07','Contanti','100','0','2','  Oblazione Luciana e Rosanna Negri   ',18,'2006-01-07','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(151,'107','2006-01-07','Contanti','100','0','2','Oblazione Fam. Lana',18,'2006-01-07','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(152,'28','2006-01-31','Contanti','42','0','2','Squaratti Paolo. Mesi Dicembre 2005 / Gennaio 2006',20,'2006-01-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(153,'56','2006-01-31','Contanti','20','0','2','  Scuola Allievi Lezione Dicembre 2005/Gennaio 2006 Mancin Gabriele   ',20,'2006-01-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(154,'108','2006-01-22','Contanti','100','0','2','  Oblazione Navazza Giovanni    ',18,'2006-01-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(155,'109','2006-02-08','Contanti','50','0','2','Oblazione Nobile Milena',18,'2006-02-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(156,'110','2006-02-05','Contanti','240','0','2','   Ara Sant''Agata    ',22,'2006-02-05','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(157,'111','2006-02-19','Contanti','150','0','2','  Carnevale Zuccaro   ',22,'2006-02-19','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(158,'112','2006-02-28','Contanti','500','0','2','  Carnevale Valduggia   ',22,'2006-02-28','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(159,'113','2006-03-05','Contanti','270','0','2','  Carnevale Lebbia   ',22,'2006-03-05','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(160,'103','2006-03-03','Contanti','194','0','2','Allievi (ric. Ornella)',20,'2006-03-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(161,'103','2006-10-07','Bonifico Bancario','0','221133','1',' vcvcvccvcvcvcv   ccgcvvc  ',1,'2006-10-07','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(162,'117','2006-06-03','Contanti','0','45','2','  Rimborso De Paolis   ',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(163,'118','2006-06-03','Contanti','0','25','2','Rimborso Rondi',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(164,'120','2006-06-03','Contanti','0','50','2',' Rimborso Vaudano Andrea',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(165,'97','2006-06-03','Contanti','0','60','2',' Rimborso Cosimo',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(166,'121','2006-06-03','Contanti','0','30','2',' Rimborso Erbetta',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(167,'122','2006-06-03','Contanti','0','45','2',' Rimborso Poli',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(168,'123','2006-06-03','Contanti','0','30','2',' Rimborso Canclini',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(169,'124','2006-06-03','Contanti','0','100','2',' Rimborso Giletti',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(170,'96','2006-06-03','Contanti','0','30','2',' Rimborso Sogno Paola',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(171,'125','2006-06-03','Contanti','0','50','2','  Rimborso Alessio ghemme bombardino    ',7,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(172,'79','2006-06-03','Contanti','0','25','2',' Rimborso Flauto Romagnano ????',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(173,'87','2006-06-03','Contanti','0','50','2',' Rimborso Mosca Francesca',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(174,'127','2006-06-03','Contanti','0','30','2',' Rimborso Mattia ????',27,'2006-06-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(175,'60','2006-06-01','Contanti','4','0','2',' Oblazione Velatta Laura  ',18,'2006-06-01','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(176,'83','2006-07-12','Contanti','0','95.2','2','Imposta Comunale sulla Pubblicità',14,'2006-07-12','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(177,'129','2006-06-19','Bonifico Bancario','0','31.18','3','Bolletta enel bimestre aprile/maggio 2006',9,'2006-06-19','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(178,'130','2006-03-31','Bonifico Bancario','0','26.93','3','   Competenze Banca Intesa   ',15,'2006-04-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(179,'130','2006-03-31','Bonifico Bancario','0','2.8','3',' Commissione invio documenti',15,'2006-04-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(180,'130','2006-03-31','Bonifico Bancario','0','18.45','3',' Imposta di bollo su conto corrente',15,'2006-04-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(181,'129','2006-04-19','Bonifico Bancario','0','33.34','3','  Pagamento enel.',9,'2006-04-19','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(182,'242','2006-04-10','Bonifico Bancario','0','2400','3',' Acquisto Basso . Assegno n° = 3126252628  ',5,'2006-04-12','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(183,'83','2006-06-14','Bonifico Bancario','1500','0','3',' Bonifico ricevuto da "Comuine di Grignasco" a favore di Musica Società Operaia "del 12/06/2006" mandato 784 - Compenso banda soms per servizi 2005',19,'2006-06-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(184,'131','2006-06-14','Bonifico Bancario','807','0','3','Servizio Prato Sesia. Bonifico ricevuto da comune di prato sesia a favore di musica società operaia   ',22,'2006-06-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(185,'132','2006-05-20','Bonifico Bancario','796.05','0','3','  Servizio Novara 2 giugno 2005. Bonifico ricevuto da comune di novara  ',22,'2006-05-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(186,'114','2006-10-07','Bonifico Bancario','40000','0','1','   zzzzzzzzzzzz   aaaaaaaaaaaa   ',1,'2006-10-07','Y','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(187,'30','2006-03-30','Versamento Contanti','2000','0','3','  Movimento da Cassa a Banca   ',28,'2006-03-30','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(188,'30','2006-03-30','Contanti','0','2000','2','   Movimento da Cassa a Banca  ',28,'2006-03-30','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(189,'134','2006-09-12','Contanti','200','0','2','    Vendita n° 2 metallofoni ',30,'2006-09-12','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(190,'135','2006-08-06','Contanti','300','0','2','  compenso per servizio valpiana 2006     ',22,'2006-08-06','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(191,'136','2006-08-15','Contanti','200','0','2','    rimborso spese servizio festa patronale 2006   ',22,'2006-08-15','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(192,'137','2006-08-16','Contanti','240','0','2','  rimborso servizio san rocco 2006 ',22,'2006-08-16','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(193,'138','2006-09-08','Contanti','240','0','2',' rimborso servizio Bovagliano 2006    ',22,'2006-09-08','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(194,'139','2006-10-06','Assegno Bancario','300','0','3','   rimborso servizio Rastiglione 2006    ',22,'2006-10-06','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(195,'86','2006-08-29','Contanti','0','100','2','    ricarica cellulare vodafone     ',31,'2006-08-29','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(196,'137','2006-08-16','Contanti','0','50','2',' acquisto pancetta festa di S rocco  ',13,'2006-08-16','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(197,'115','2006-09-12','Contanti','0','49.5','2',' acquisto carta A3 ',12,'2006-09-12','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(198,'140','2006-08-30','Contanti','0','24','2','Acquisto n. 4 leggii   ',5,'2006-08-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(199,'115','2006-09-13','Contanti','0','2.5','2','Acquisto buste per libretti    ',12,'2006-09-13','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(200,'141','2006-09-18','Contanti','0','17.7','2','Spesa per fotocopie sinfonia dei giocattoli  ',12,'2006-09-18','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(201,'116','2006-06-02','Contanti','0','3.4','2',' raccomandata per servizio 2 giugno 2006 a novara  ',3,'2006-06-02','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(202,'142','2006-10-03','Contanti','0','188','2','  Assicurazione responsabilità civile 2006    scad 22-09-2007    ',11,'2006-10-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(203,'143','2006-10-07','Contanti','0','127.26','2','  acquisto partiture   ',6,'2006-10-07','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(204,'144','2006-10-07','Contanti','0','109.58','2','   partiture the persuaders amicalement votre  ',6,'2006-10-07','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(205,'30','2006-10-07','Contanti','0','467.93','2','    versamento da cassa a banca ',28,'2006-10-07','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(206,'30','2006-10-07','Versamento Contanti','467.93','0','3','     versamento contanti da cassa a banca  ',28,'2006-10-07','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(207,'89','2006-10-07','Contanti','25','0','2','  Oblazione Granieri Domenico ',18,'2006-10-07','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(208,'102','2006-10-07','Contanti','75','0','2',' oblazione besuzzi clarinetto invorio ',18,'2006-10-07','N','andrea.baron','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(209,'114','2006-10-11','Bonifico Bancario','60000','0','1','     adaddaasd    ',30,'2006-10-11','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(210,'114','2006-10-11','Bonifico Bancario','30001','0','1','   adaddaasd    ',30,'2006-10-11','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(211,'114','2006-10-11','Bonifico Bancario','30001','0','1','  adaddaasd   ',30,'2006-10-11','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(212,'114','2006-10-11','Bonifico Bancario','0','170001','1',' dfdfgdgdgdfgd aaaaaaaaaaaaaaaaaaaaaaaa     dsssd   ddddd   ',30,'2006-10-11','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(213,'114','2006-10-11','Bonifico Bancario','0','70000','1','    fdfdf  ggggg   ssdsdsd   ',30,'2006-10-11','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(214,'125','2006-12-08','Contanti','0','60','2',' Rimborso semestrale Alessio di ghemme (bombardino)  ',7,'2006-12-08','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(215,'125','2006-12-08','Contanti','0','60','2',' Rimborso semestrale Alessio di ghemme (bombardino)  ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(216,'100','2006-12-08','Contanti','0','25','2','    Rimborso Chiara Pavan per concerto Immacolata 2006   ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(217,'117','2006-12-08','Contanti','0','45','2','   Rimborso Alessandra DePaoli per concerto Immacolata 2006    ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(218,'118','2006-12-08','Contanti','0','25','2','Rimborso Rondi per concerto Immacolata 2006    ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(219,'94','2006-12-08','Contanti','0','25','2',' Rimborso Capone Marcello per concerto Immacolata 2006',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(220,'98','2006-12-08','Contanti','0','25','2','    Rimborso Bussolino Wilmo per concerto Immacolata 2006 ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(221,'87','2006-12-08','Contanti','0','50','2',' Rimborso Mosca Francesca per concerto Immacolata 2006 ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(222,'101','2006-12-08','Contanti','0','45','2','   Rimborso Canella per concerto Immacolata 2006   (2 prove + 1 concerto) ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(223,'88','2006-12-08','Contanti','0','80','2','  Rimborso Grigolon per concerto Immacolata 2006 (1 prova + 1 concerto tariffa fissa)    ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(224,'80','2006-12-08','Contanti','0','90','2',' Rimborso Poli Stefano per concerto Immacolata 2006    (5 prove + 1 concerto) ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(225,'122','2006-12-08','Contanti','0','90','2','  Rimborso Poli Paolo per concerto Immacolata 2006 (5 prove + 1 concerto) ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(226,'99','2006-12-08','Contanti','0','25','2','  Rimborso Bertolino Michele per concerto Immacolata 2006 (Forfait)   ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(227,'97','2006-12-08','Contanti','0','45','2',' Rimborso Cosimo per concerto Immacolata 2006 (2 prove + 1 concerto) ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(228,'91','2006-12-08','Contanti','0','60','2',' Rimborso Farassino (Gippo) per concerto Immacolata 2006  (3 prove + 1 concerto) ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(229,'149','2006-12-08','Contanti','0','25','2','   Rimborso Martinetti Claudio per concerto Immacolata 2006  (forfait) ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(230,'78','2006-12-08','Contanti','0','25','2','   Rimborso Calligaris Franco per concerto Immacolata 2006    (forfait)  ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(231,'120','2006-12-08','Contanti','0','25','2','   Rimborso Vaudano Andrea per concerto Immacolata 2006    (forfait)  ',27,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(232,'150','2006-12-08','Contanti','0','62','2','   Rimborso Gessica (romagnano) 2006  ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(233,'60','2006-12-08','Contanti','0','8','2',' Rimborso Velatta Laura 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(234,'151','2006-12-08','Contanti','0','15.5','2','  Rimborso Vergerio Donatella 2006 ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(235,'152','2006-12-08','Contanti','0','30.5','2',' Rimborso Flautina Romagnano 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(236,'30','2006-12-08','Contanti','0','47','2','   Rimborso Belli Sergio 2006  ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(237,'66','2006-12-08','Contanti','0','117','2','  Rimborso Borelli Ezio 2006     ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(238,'153','2006-12-08','Contanti','0','9','2',' Rimborso Cabassa Diego 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(239,'154','2006-12-08','Contanti','0','16.5','2',' Rimborso Claudio (Quarona) 2006  ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(240,'155','2006-12-08','Contanti','0','88','2',' Rimborso De Angelis Martino 2006    ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(241,'156','2006-12-08','Contanti','0','23.5','2',' Rimborso Ferrara Elena 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(242,'157','2006-12-08','Contanti','0','76','2',' Rimborso Ferrara Floran 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(243,'158','2006-12-08','Contanti','0','39','2',' Rimborso Ferro Andrea 2006  ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(244,'34','2006-12-08','Contanti','0','12','2','  Rimborso Giuliani Roberto 2006 ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(245,'159','2006-12-08','Contanti','0','10.5','2',' Rimborso Pietro (Coggiola) 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(246,'160','2006-12-08','Contanti','0','127','2','  Rimborso Porzio Vittorio 2006 ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(247,'161','2006-12-08','Contanti','0','112.5','2',' Rimborso Pozzi Mauro 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(248,'162','2006-12-08','Contanti','0','164.5','2','    Rimborso Stefani Monica 2006   ',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(249,'163','2006-12-08','Contanti','0','66','2',' Rimborso Trapella Bruno 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(250,'164','2006-12-08','Contanti','0','48.5','2',' Rimborso Turuani Egidio 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(251,'165','2006-12-08','Contanti','0','136','2',' Rimborso Bonfiglio Giacomo 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(252,'166','2006-12-08','Contanti','0','52','2',' Rimborso Giglio Pasquale 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(253,'167','2006-12-08','Contanti','0','11.5','2',' Rimborso Vogesi Antonio 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(254,'168','2006-12-08','Contanti','0','51.5','2',' Rimborso Ferrara Gianni 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(255,'169','2006-12-08','Contanti','0','89','2',' Rimborso Gallino Antonio 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(256,'170','2006-12-08','Contanti','0','78','2',' Rimborso Ren Sergio 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(257,'171','2006-12-08','Contanti','0','30','2',' Rimborso Ronco Renzo 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(258,'172','2006-12-08','Contanti','0','59','2',' Rimborso Tosetti Enrico 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(259,'173','2006-12-08','Contanti','0','21.5','2',' Rimborso Cascio 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(260,'71','2006-12-08','Contanti','0','16.5','2','Rimborso Barlassina Patrizia 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(261,'174','2006-12-08','Contanti','0','62','2',' Rimborso Baron Andrea 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(262,'175','2006-12-08','Contanti','0','116.5','2',' Rimborso Bino Italo 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(263,'176','2006-12-08','Contanti','0','81.5','2',' Rimborso Bressan Luca 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(264,'177','2006-12-08','Contanti','0','31','2',' Rimborso Giglio Nicola 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(265,'31','2006-12-08','Contanti','0','18','2',' Rimborso Mischiatti Dino 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(266,'24','2006-12-08','Contanti','0','75.5','2',' Rimborso Pozzi Carlo 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(267,'178','2006-12-08','Contanti','0','81.5','2',' Rimborso Rognoni Umberto 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(268,'179','2006-12-08','Contanti','0','28.5','2',' Rimborso Vistali Mario 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(269,'180','2006-12-08','Contanti','0','64.5','2',' Rimborso Cecchini (Coggiola) 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(270,'28','2006-12-08','Contanti','0','10','2',' Rimborso Squaratti Paolo 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(271,'181','2006-12-08','Contanti','0','16','2',' Rimborso Allorio Bruno 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(272,'182','2006-12-08','Contanti','0','79.5','2',' Rimborso Bagarotti Francesco 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(273,'183','2006-12-08','Contanti','0','123.5','2',' Rimborso Baglioni Corrado 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(274,'184','2006-12-08','Contanti','0','66','2',' Rimborso Da Paré Paolo 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(275,'22','2006-12-08','Contanti','0','49.5','2',' Rimborso Dilernia Giuseppe 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(276,'185','2006-12-08','Contanti','0','40.5','2',' Rimborso Fornaro Michele 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(277,'84','2006-12-08','Contanti','0','156.5','2',' Rimborso Negri Gilberto 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(278,'186','2006-12-08','Contanti','0','36','2',' Rimborso Trombone Masserano Agostino 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(279,'187','2006-12-08','Contanti','0','70','2',' Rimborso Baglioni Davide 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(280,'188','2006-12-08','Contanti','0','85','2',' Rimborso Perotto Eraldo 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(281,'189','2006-12-08','Contanti','0','12','2',' Rimborso Giraldi Gianni 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(282,'26','2006-12-08','Contanti','0','33','2',' Rimborso Pontini Andrea 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(283,'190','2006-12-08','Contanti','0','23.5','2',' Rimborso Testori Giuseppe 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(284,'191','2006-12-08','Contanti','0','29','2',' Rimborso Zanellato Francesco 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(285,'192','2006-12-08','Contanti','0','84','2',' Rimborso Azzalin Antonio 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(286,'193','2006-12-08','Contanti','0','156','2',' Rimborso Bertaggia Ruggero 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(287,'194','2006-12-08','Contanti','0','24','2',' Rimborso Bertolini Enrico 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(288,'195','2006-12-08','Contanti','0','62','2',' Rimborso Bertolini Franco 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(289,'196','2006-12-08','Contanti','0','100','2',' Rimborso Contardi Marco 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(290,'197','2006-12-08','Contanti','0','23.5','2',' Rimborso Farinone 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(291,'198','2006-12-08','Contanti','0','64.5','2',' Rimborso Silvestri Riccardo 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(292,'199','2006-12-08','Contanti','0','19','2',' Rimborso Zanolo Gianni 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(293,'200','2006-12-08','Contanti','0','8','2',' Rimborso Cassa Romagnano 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(294,'201','2006-12-08','Contanti','0','5','2',' Rimborso Romagnano Tromba 2006',7,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(295,'34','2006-12-09','Contanti','0','71.5','2',' Rimborso spese Giuliani Roberto novembre 2006',2,'2006-12-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(296,'133','2006-12-12','Bonifico Bancario','0','10000','1',' wwddddddddddddddddddd    ',21,'2006-12-12','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(297,'84','2006-12-09','Contanti','0','1027','2',' Rimborso Negri Gilberto  periodo luglio/dicembre 2006   ',2,'2006-12-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(298,'89','2006-12-09','Contanti','25','0','2',' Oblazione Domenico Granieri',18,'2006-12-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(299,'102','2006-12-09','Contanti','75','0','2',' Oblazione Clarinetto INvorio Besuzzi',18,'2006-12-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(300,'26','2007-01-13','Contanti','20','0','2','  Contributo lezioni Pontini Andrea periodo Marzo / Aprile 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(301,'57','2007-01-13','Contanti','20','0','2',' Contributo Lezioni Magistrini Andrea periodo Marzo / Aprile 2006   ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(302,'28','2007-01-13','Contanti','10','0','2','  Contributo Lezioni Squaratti Paolo periodo Maggio 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(303,'56','2007-01-13','Contanti','10','0','2','  Contributo Lezioni Mancin Gabriele periodo Giugno 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(304,'28','2007-01-13','Contanti','43','0','2',' Contributo Lezione/Strumento Squaratti Paolo periodo Giugno 2006  Rimborso Strumento Squaratti Paolo periodo Luglio / Agosto 2006    ',20,'2006-07-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(305,'28','2007-01-13','Contanti','21','0','2','  Contributo Lezioni + Strumento Squaratti Paolo periodo Aprile 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(306,'202','2007-01-13','Contanti','21','0','2','  Contributo Lezioni + Strumento Balzano Massimiliano periodo Aprile 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(307,'203','2007-01-13','Contanti','148','0','2','  Contributo Lezioni Massarotti periodo Gennaio / Agosto 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(308,'25','2007-01-13','Contanti','11','0','2','  Contributo Strumento Pagnoni Federico periodo Aprile 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(309,'56','2007-01-13','Contanti','20','0','2','  Contributo Lezioni Mncin Gabriele periodo Aprile / Maggio 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(310,'55','2007-01-13','Contanti','20','0','2','  Contributo Lezioni Moretti Eleonora periodo Aprile / Maggio 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(311,'23','2007-01-13','Contanti','20','0','2','  Contributo Lezioni Agazzini Linda e Lorenzo periodo Aprile 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(312,'22','2007-01-13','Contanti','10','0','2','  Contributo Lezioni Di Lernia Giuseppe periodo Aprile 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(313,'24','2007-01-13','Contanti','10','0','2','  Contributo Lezioni Pozzi Carlo periodo Maggio 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(314,'78','2007-01-13','Contanti','25','0','2',' Oblazione Calligaris Franco su Rimborso per concerto Immacolata 2006 (forfait)',18,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(315,'205','2006-12-08','Contanti','0','15','2','  Fotocopie per Programma Concerto Immacolata 2006 ',12,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(316,'206','2006-12-09','Contanti','0','29','2','  Biscotti per rinfresco Concerto Immacolata 2006 ',13,'2006-12-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(317,'207','2006-12-08','Contanti','0','249','2','   Primo premio sottoscrizione a premi 2006 (TV LCD)   ',29,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(318,'83','2006-12-09','Contanti','0','27.2','2','  Imposta manifesti Santa Cecilia 2006 ',14,'2006-12-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(319,'25','2007-01-13','Contanti','21','0','2','     Contributo Lezioni/Strumento Pagnoni Federico   periodo Maggio 2006 ',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(320,'22','2007-01-13','Contanti','10','0','2',' Contributo Lezioni Di Lernia Giuseppe periodo Maggio 2006',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(321,'23','2007-01-13','Contanti','20','0','2',' Contributo Lezioni Agazzini Lidia e Lorenzo periodo Maggio 2006',20,'2007-01-13','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(322,'204','2007-01-13','Contanti','250','0','2','   Rimborso servizio alpini Grignasco   ',22,'2006-07-21','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(323,'98','2007-01-13','Contanti','25','0','2',' Oblazione Wilmo su Rimborso per concerto Immacolata 2006',18,'2006-12-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(324,'65','2006-11-29','Assegno Bancario','0','500','3','                             Rimborso Platini Fabrizio periodo settembre/ottobre 2006. ASSEGNO NR 3173573041                         ',2,'2006-12-12','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(325,'208','2007-01-13','Contanti','1075','0','2','Incassi da vendita biglietti sottoscrizione a premi (pranzo santa cecilia 2006). Blocchetti da 127 a 169 (n° 43 blocchetti). Biglietti da numero 3176 a 4750. Conto unitario 1 euro.',23,'2006-12-10','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(326,'209','2007-01-13','Contanti','0','1050','2',' Pranzo santa cecilia 2006 Casa Galloni. (Ricevuta fiscale n 1030 da 2100 euro, la differenza pagata da simpatizzanti presenti al pranzo) ',13,'2006-12-10','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(327,'123','2007-01-13','Contanti','0','15','2',' Rimborso servizio alpini grignasco a Canclini Mauro',27,'2006-12-10','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(328,'155','2006-12-05','Assegno Bancario','0','4348','3','                              Prelievo da banca a cassa per rimborsi annuali musici ed esterni 8 dicembre 2006. (Bonifico effettuato su conto di De Angelis Martino, che poi ha prelevato dal suo conto). ASSEGNO NR 3173573042                           ',28,'2006-12-05','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(329,'155','2007-01-13','Contanti','4348','0','2',' Entrata da Banca a cassa per pagamento musici e rimborso esterni 8 dicembre 2006.',28,'2006-12-05','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(330,'208','2007-01-13','Contanti','466.5','0','2','  Entrate a seguito vendita torte per santa cecilia 2006. ',23,'2006-12-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(331,'210','2007-01-13','Contanti','516.5','0','2',' Offerte ricevute per il concerto di santa cecilia 2006',22,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(332,'211','2007-01-13','Contanti','0','53.32','2',' Spese per rinfresco Santa cecilia 2006 (e cesti per sottoscrizioni a premi)',13,'2006-12-05','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(333,'212','2007-01-13','Contanti','0','45','2',' Acquisto tranci pizza presso Peccati di Gola',13,'2006-12-08','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(334,'212','2007-01-13','Contanti','0','45','2',' Acquisto tranci pizza presso Peccati di Gola',13,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(335,'214','2007-01-13','Contanti','0','2.79','2',' Acquisto generi alimentari per rinfresco santa cecilia 2006',13,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(336,'83','2007-01-13','Contanti','0','13.6','2',' Imposta comunale pubblicità per affissione cartelloni. concerto del 26/12/2006',14,'2006-12-18','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(337,'122','2007-01-13','Contanti','0','30','2',' Rimborso Poli Paolo per concerto 26/12/2006',27,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(338,'99','2007-01-13','Contanti','0','25','2','   Rimborso Bertolino Michele per concerto 26/12/2006',27,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(339,'125','2007-01-13','Contanti','0','20','2','   Rimborso Alessio per concerto 26/12/2006',27,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(340,'124','2007-01-13','Contanti','0','75','2','   Rimborso Giletti PierAngelo per concerto 26/12/2006',27,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(341,'127','2007-01-13','Contanti','0','50','2','   Rimborso Mattia per concerto 26/12/2006',27,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(342,'215','2007-01-13','Contanti','0','25','2','   Rimborso Facciotti Piero per concerto 26/12/2006',27,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(343,'78','2007-01-13','Contanti','0','25','2','   Rimborso Calligaris Franco per concerto 26/12/2006',27,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(344,'89','2007-01-13','Contanti','0','25','2','   Rimborso Granieri Domenico per concerto 26/12/2006',27,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(345,'215','2007-01-13','Contanti','25','0','2',' Oblazione su   Rimborso Facciotti Piero per concerto 26/12/2006',18,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(346,'78','2007-01-13','Contanti','25','0','2',' Oblazione   Rimborso Calligaris Franco per concerto 26/12/2006',18,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(347,'89','2007-01-13','Contanti','25','0','2','  Oblazione  Rimborso Granieri Domenico per concerto 26/12/2006',18,'2006-12-26','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(348,'216','2007-01-13','Contanti','0','28.5','2',' Acquisto premi presso Punto SMA (usato buono spesa)',29,'2006-12-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(349,'130','2007-01-14','Versamento Contanti','15841.62','0','3',' Saldo iniziale conto corrente in data 31/12/2005.',32,'2005-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(350,'217','2007-01-14','Assegno Bancario','240','0','3','  Rimborso spese servizio  AVIS a Prato Sesia. ',22,'2006-11-27','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(351,'218','2007-01-14','Contanti','200','0','2',' Oblazione di Tassan Ernesto in memoria di Negri Gina',18,'2007-01-14','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(352,'219','2007-01-14','Contanti','0','93','2',' Acquisto Cesto Valsesiano per premio lotteria santa cecilia 2006',29,'2006-12-02','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(353,'72','2007-01-14','Contanti','0','18','2',' Spese postali acquisto francobolli n30 x 0,60 euro.',3,'2006-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(354,'72','2007-01-14','Contanti','0','33.89','2',' Spese postali acquisto marche da bollo n2 x 14.62 euro. Spese per raccomandata 4,65 euro.',3,'2006-10-28','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(355,'25','2007-01-14','Contanti','11','0','2','  Contributo Strumento Pagnoni Federico periodo Settembre 2006   ',20,'2006-09-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(356,'23','2007-01-14','Contanti','20','0','2',' Contributo Lezioni Famiglia Agazzini (linda e lorenzo) periodo Ottobre 2006. ',20,'2006-10-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(357,'220','2007-01-14','Contanti','10','0','2',' Contributo Lezioni Vaccaro Vito periodo Ottobre 2006.   ',20,'2006-10-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(358,'221','2007-01-14','Contanti','10','0','2',' Contributo Lezioni Rosaclerio Camilla periodo Ottobre 2006. ',20,'2006-10-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(359,'24','2007-01-14','Contanti','20','0','2',' Contributo Lezioni Pozzi Carlo periodo Ottobre / Novembre 2006. ',20,'2006-10-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(360,'202','2007-01-14','Contanti','50','0','2',' Contributo Lezioni Balzano Massimiliano periodo Maggio / Ottobre 2006. ',20,'2006-10-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(361,'22','2007-01-14','Contanti','10','0','2','  Contributo Lezioni Di Lernia Giuseppe periodo Ottobre 2006.    ',20,'2006-10-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(362,'222','2007-01-14','Contanti','10','0','2','     Contributo Lezioni Mingolla Paola periodo Ottobre 2006.   ',20,'2006-10-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(363,'203','2007-01-14','Contanti','21','0','2','Contributo Lezioni/Strumento Massarotti Francesca periodo Ottobre 2006.',20,'2006-10-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(364,'28','2007-01-14','Contanti','11','0','2','  Contributo Strumento Squaratti Paolo periodo Settembre 2006.',20,'2006-10-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(365,'223','2007-01-14','Contanti','0','160','2',' Rimborso musici di confienza per servizio Pray.',27,'2007-01-14','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(366,'114','2007-01-15','Ricevuta Bancaria','20001','0','1','  BALALALLALALALALALLA   ',2,'2007-01-15','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(367,'103','2007-01-17','','0','300000','','  eretetertetetertrtetetetertet ',0,'2007-01-17','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(368,'103','2007-01-17','','0','300000','','  eretetertetetertrtetetetertet ',0,'2007-01-17','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(369,'114','2007-01-16','Contanti','0','40000','2','  tytututyutyutyutyuituity   ',18,'2007-01-16','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(370,'114','2007-01-16','Contanti','0','1','2',' Tesseramento xxxx yyyy ',18,'2007-01-16','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(371,'114','2007-01-16','Contanti','0','1','2',' Tesseramento xxxx yyyy ',18,'2007-01-16','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(372,'114','2007-01-16','Contanti','0','1','2',' Tesseramento xxxx yyyy ',18,'2007-01-16','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(373,'134','2007-01-16','Contanti','0','12','2','Tesseramento 2007',18,'2007-01-16','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(374,'134','2007-01-16','Contanti','0','12','2','Tesseramento 2007',18,'2007-01-16','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(375,'134','2007-01-16','Contanti','0','12','2','Tesseramento 2007',18,'2007-01-16','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(376,'83','2007-01-31','Contanti','0','1000000','2','Tesseramento 2005',18,'2007-01-31','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(377,'83','2007-01-31','Contanti','0','1000000','2','Tesseramento 2005',18,'2007-01-31','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(378,'83','2007-01-31','Contanti','0','1000000','2','Tesseramento 2005',18,'2007-01-31','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(379,'83','2007-01-31','Contanti','0','1000000','2','Tesseramento 2005',18,'2007-01-31','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(380,'83','2007-01-31','Contanti','0','1000000','2','Tesseramento 2005',18,'2007-01-31','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(381,'83','2007-01-31','Contanti','0','1000000','2','Tesseramento 2005',18,'2007-01-31','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(382,'134','2007-01-16','Contanti','0','12','2','Tesseramento 2005',18,'2007-01-16','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(383,'83','2007-01-16','Contanti','0','34','2','Tesseramento 2005',18,'2007-01-16','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(384,'133','2007-01-15','Contanti','0','100','2','Tesseramento 2007',18,'2007-01-15','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(385,'114','2007-01-17','Bonifico Bancario','0','100000','1',' dfsddffsddfsdfs  ',4,'2007-01-17','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(386,'114','2007-01-17','Bonifico Bancario','100000','0','1','sffddfdfdfdf',4,'2007-01-17','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(387,'8','2007-01-18','2007','100000','0','1','     asaasasas  ',25,'2007-01-18','Y','sergio.belli','Boni');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(388,'8','2007-01-18','2007','100000','0','1','     asaasasas  ',25,'2007-01-18','Y','sergio.belli','Boni');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(389,'113','2007-01-18','Bonifico Bancario','100000','0','1','   sdsdsdds    ',25,'2007-01-18','Y','sergio.belli','2010');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(390,'69','2007-01-18','Bonifico Bancario','100000','0','1',' sfdfdfdfdfdf    ',4,'2007-01-18','Y','sergio.belli','2005');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(391,'59','2007-01-18','Bonifico Bancario','0','1000001','1','   adadsdsdsd    ',5,'2007-01-18','Y','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(392,'231','2007-01-22','Contanti','0','164.7','2',' Onere SIAE per permesso 2007 euro 164.63.',8,'2007-01-22','Y','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(393,'34','2007-01-22','Contanti','0','97.5','2',' Rimborso Giuliani Roberto periodo mese ottobre 2006.',2,'2006-11-14','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(394,'259','2007-01-22','Contanti','0','32','2',' Rimborso a DeAngelis Martino per acquisto pelle per riparazione cassa in seguito a rottura da parte di Silvestri Riccardo. ',5,'2007-01-16','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(395,'65','2006-04-13','Assegno Bancario','0','430','3','  Rimborso Platini Fabrizio mesi Gennaio/Febbraio 2006. Assegno n° 3126252627',2,'2006-04-11','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(396,'86','2007-01-22','Contanti','0','100','2',' Spese per ricarica telefonica 100 euro. ',31,'2007-01-22','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(397,'72','2007-01-22','Contanti','0','2','2',' Rimborso a Regis Marica per marche da bollo e francobolli (1,89 euro).',3,'2007-01-22','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(398,'130','2006-12-31','Bonifico Bancario','0','18.45','3','  Imposta di bollo su conto corrente.   ',15,'2007-01-04','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(399,'130','2006-12-31','Bonifico Bancario','0','1.8','3',' Commissione invio e/conto e lettere trasparenza ',15,'2007-01-04','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(400,'130','2006-12-31','Bonifico Bancario','0','28.36','3',' Competenze banca intesa ',15,'2007-01-04','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(401,'129','2006-12-19','Bonifico Bancario','0','37.09','3',' Bolletta enel periodo ottobre/novembre 2006',9,'2006-12-19','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(402,'130','2006-01-01','Bonifico Bancario','0','12','3','                            Canone annuale intesa on line. CANONE ANNUALE INTESA ONLINE PERIODO 12/2006-12/2007                        ',15,'2006-01-01','N','sergio.belli','2005');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(403,'129','2006-10-17','Bonifico Bancario','0','38.18','3','Pagamento bolletta enel.',9,'2006-10-17','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(404,'228','2006-10-09','Versamento Contanti','1975','0','3','Contributo scuola allievi anno 2006',26,'2006-10-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(405,'130','2006-09-30','Bonifico Bancario','0','18.45','3','Imposta bollo su conto corrente',15,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(406,'130','2006-09-30','Bonifico Bancario','0','1.8','3','Commissione invio E/conto e lettere trasparenza',15,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(407,'130','2006-09-30','Bonifico Bancario','0','23.68','3','Competenze banca intesa',15,'2006-10-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(408,'129','2006-08-17','Bonifico Bancario','0','33.42','3','Pagamento bolletta enel.',9,'2006-08-17','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(409,'130','2006-06-30','Bonifico Bancario','0','18.45','3','Imposta di bollo su conto corrente',15,'2006-07-05','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(410,'130','2006-06-30','Bonifico Bancario','0','1.8','3','Commissione invio e/conto e lettere trasparenza',15,'2006-07-05','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(411,'130','2006-06-30','Bonifico Bancario','0','28.22','3','Competenze banca intesa.',15,'2006-07-05','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(412,'129','2006-02-20','Bonifico Bancario','0','36.98','3','Pagamento bolletta enel',9,'2006-02-20','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(413,'116','2007-01-23','Contanti','0','35','2','Affitto annuale 2007 della casella postale . ',3,'2007-01-20','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(414,'86','2007-01-31','Bonifico Bancario','0','100000','2',' dfdfdfddf',28,'2007-01-31','Y','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(415,'211','2007-02-10','Contanti','0','23.1','2',' Rimborso a Sergio Belli per acquisto cancelleria. ',12,'2007-01-22','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(416,'69','2007-02-17','Bonifico Bancario','100000','0','3','  sddsdssdsd  ',4,'2007-02-17','Y','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(417,'65','2007-02-18','Assegno Bancario','0','600','3','                             Rimborso spese Platini Fabrizio periodo novembre dicembre 2006     .ASSEGNO NR 3173573045                   ',2,'2007-02-18','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(418,'234','2007-02-18','Contanti','0','500','2','    Spese per acquisto fotocopiatrice da Vinzio Maurilia.  ',35,'2007-02-18','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(419,'34','2007-02-18','Contanti','0','39','2','Rimborso spese Giuliani Roberto dicembre 2006',2,'2007-02-18','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(420,'34','2007-02-18','Contanti','0','78','2','Rimborso spese Giuliani Roberto gennaio 2007',2,'2007-02-18','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(421,'25','2007-03-04','Contanti','21','0','2',' Contributo lezioni + strumento Pagnoni Federico Ottobre 2006    ',20,'2006-10-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(422,'56','2007-03-04','Contanti','30','0','2',' Contributo Lezioni Mancin Gabriele Ottobre/Novembre/Dicembre 2006    ',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(423,'235','2007-02-08','Assegno Bancario','500','0','3','  Offerta per concerto santo stefano 2006 ',22,'2006-12-26','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(424,'112','2007-02-20','Contanti','270','0','2','Offerta per servizio di Valduggia 2006 ',22,'2007-02-20','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(425,'236','2007-02-18','Contanti','0','15','2','Rimborso Basso Gattinara (Riccardo) per servizio Piane 2007   ',27,'2007-02-18','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(426,'237','2007-03-01','Assegno Bancario','300','0','3','                            Offerta per servizio Piane di Serravalle Sesia 2007                          ',22,'2007-03-01','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(427,'129','2007-02-19','Bonifico Bancario','0','30.34','3','Spese Enel periodo Dicembre 2006 /    Gennaio 2007   ',9,'2007-02-19','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(428,'140','2006-12-19','Contanti','0','849','2','Acquisto trombone Yamaha mod 350. Acquisto chitarra classica. (Donazione in memoria di Astolfi Gian Vito) ',5,'2006-12-19','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(429,'140','2006-12-16','Contanti','0','758','2','Acquisto saxofono tenore Maxtone. (Strumento Marika) ',5,'2006-12-16','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(430,'238','2006-11-11','Contanti','0','98','2','Acquisto bocchino tuba Yamaha  e marsupio tuba Dampi. ',5,'2006-11-11','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(431,'239','2006-10-21','Contanti','805','0','2',' Entrate a seguito di acquisto biglietti per Pomeriggio Musicale a Milano 2006.  35 persone x 23 euro = 805. ',33,'2006-10-21','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(432,'240','2006-10-27','Contanti','0','495','2',' Ingresso Concerto di sabato 4 Novembre ore 16:00 nell''ambito del Pomeriggio Musicale a Milano 2006. Posti 38 x 13 euro = 494.00  Compreso di 1 euro per vaglia postale.    ',33,'2006-10-27','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(433,'241','2006-10-04','Contanti','0','300','2','Noleggio Pullman Baranzelli nell''ambito del Pomeriggio Musica a Milano 2006  ',33,'2006-10-04','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(434,'241','2006-11-08','Assegno Bancario','0','160','3',' Rimborso a Baranzelli per noleggio pullman Servizio a novara 2 giugno 2006 . Numero assegno 3126252630.   ',34,'2006-06-02','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(435,'241','2006-11-08','Assegno Bancario','0','300','3','Rimborso Baranzelli per noleggio pullman in occasione del Pomeriggio Musicale a Milano 2006. Numero assegno 3126252630. ',33,'2006-11-04','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(436,'243','2006-11-09','Contanti','0','39','2','Acquisto combustibile stufa presso Trony quarona  ',10,'2006-11-09','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(437,'115','2006-12-04','Contanti','0','2','2','Acquisto buste per paghe musici 2006    ',12,'2006-12-04','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(438,'155','2006-11-03','Contanti','0','6.4','2','Acquisto raccoglitore per articoli giornali ',12,'2006-11-03','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(439,'141','2006-11-06','Contanti','0','43.4','2','Fotocopie varie ',12,'2006-11-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(440,'211','2006-11-06','Contanti','0','1.41','2','Acquisto etichette   ',12,'2006-11-06','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(441,'113','2007-01-30','Contanti','270','0','2','Offerta per carnevale Lebbia 2007   ',22,'2007-01-30','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(442,'69','2007-02-25','Contanti','0','204.04','2','Spese tesseramento Anbima 2007.  ',17,'2007-02-25','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(443,'238','2006-12-20','Contanti','0','412.5','2','Spese riparazione 2 trombe ed 1 trombone.',5,'2006-12-20','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(444,'236','2006-06-02','Contanti','0','15','2','Rimborso basso gattinara (riccardo) per servizio 2 giugno 2006   ',27,'2006-06-02','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(445,'26','2007-03-04','Contanti','20','0','2','Contributo Lezioni Pontini Andrea Novembre / Dicembre 2006 ',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(446,'244','2007-03-04','Contanti','10','0','2','Contributo lezioni Carbone Nicolò Novembre 2006 ',20,'2006-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(447,'202','2007-03-04','Contanti','20','0','2','Contributo lezioni Balzano Massimiliano novembre dicembre 2006 ',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(448,'24','2007-03-04','Contanti','10','0','2','Contributo lezioni Pozzi Carlo dicembre 2006   ',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(449,'24','2007-03-04','Contanti','10','0','2','  Contributo lezioni Pozzi Carlo gennaio 2007    ',20,'2007-01-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(450,'29','2007-03-04','Contanti','42','0','2','Contributo lezioni/strumento Aprile Mauro novembre dicembre 2006 ',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(451,'56','2007-03-04','Contanti','20','0','2','Contributo lezioni Mancin Gabriele gennaio febbraio 2007  ',20,'2007-02-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(452,'55','2007-03-04','Contanti','10','0','2','Contributo lezioni Moretti Eleonora gennaio 2007 ',20,'2007-01-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(453,'25','2007-03-04','Contanti','21','0','2','Contributo lezioni Pagnoni Federico gennaio 2007   ',20,'2007-01-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(454,'25','2007-03-04','Contanti','21','0','2','Contributo lezioni/strumento Pagnoni Federico dicembre 2006   ',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(455,'27','2007-03-04','Contanti','140','0','2','                            Contributo lezioni Cascio Antonino e Annalisa marzo/aprile/maggio/giugno Ottobre/novembre/dicembre 2006                        ',20,'2006-12-31','N','marica.regis','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(456,'25','2007-03-04','Contanti','21','0','2','Contributo lezioni/strumento Pagnoni Federico novembre 2006 ',20,'2006-11-30','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(457,'55','2007-03-04','Contanti','20','0','2','Contributo lezioni Moretti Eleonora novembre dicembre 2006    ',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(458,'220','2007-03-04','Contanti','20','0','2','Contributo lezioni Vaccaro Vito novembre dicembre 2006  ',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(459,'220','2007-03-04','Contanti','10','0','2','Contributo lezioni Vaccaro Vito gennaio 2007 ',20,'2007-01-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(460,'245','2007-03-04','Contanti','0','35','2','Acquisto cesto prodotti equo solidali presso La Bottega del Mondo   ',29,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(461,'23','2007-03-04','Contanti','40','0','2','Contributo lezioni Famiglia Agazzini novembre dicembre 2006',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(462,'222','2007-03-04','Contanti','20','0','2','Contributo lezioni Mingolla Paola novembre dicembre 2006 ',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(463,'58','2007-03-04','Contanti','30','0','2','Contributo lezioni Schizzerotto Leonardo ottobre novembre dicembre 2006   ',20,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(464,'58','2007-03-04','Contanti','10','0','2','Contributo lezioni Schizzerotto Leonardo gennaio 2007  ',20,'2007-01-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(465,'258','2007-03-04','Contanti','10','0','2','Tessera 2006 Donetti Roberto  ',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(466,'257','2007-03-04','Contanti','10','0','2','Tessera 2006 Donetti Maris   ',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(467,'256','2007-03-04','Contanti','10','0','2','Tessera 2006 Canobio Angioletta    ',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(468,'255','2007-03-04','Contanti','6','0','2','Tessera 2006 Arienta Maria Rosa',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(469,'254','2007-03-04','Contanti','6','0','2','Tessera 2006 Sagliaschi Wilma',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(470,'253','2007-03-04','Contanti','6','0','2','Tessera 2006 Roggero Gianfranco',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(471,'252','2007-03-04','Contanti','6','0','2','Tessera 2006 Bondesan Giuseppe',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(472,'251','2007-03-04','Contanti','6','0','2','Tessera 2006 Arvotti Luciana',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(473,'250','2007-03-04','Contanti','20','0','2','Tessera 2006 Monti Rosina',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(474,'249','2007-03-04','Contanti','15','0','2','Tessera 2006 Negri Luciana',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(475,'106','2007-03-04','Contanti','15','0','2','Tessera 2006 Negri Rosanna',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(476,'232','2007-03-04','Contanti','10','0','2','Tessera 2006 Dal Fovo Antonio',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(477,'248','2007-03-04','Contanti','10','0','2','Tessera 2006 Molli Luciana',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(478,'247','2007-03-04','Contanti','10','0','2','Tessera 2006 Bertolini Renzo',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(479,'246','2007-03-04','Contanti','6','0','2','Tessera 2006 Covini Daria',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(480,'246','2007-03-04','Contanti','25','0','2','Oblazione Covini Daria',18,'2006-12-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(481,'83','2007-02-07','Bonifico Bancario','2500','0','3','Rimborso spese servizi 2006 Comune Grignasco',19,'2007-02-06','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(482,'233','2007-03-04','Contanti','2019.5','0','2','                            DONAZIONE PER ACQUISTI E MANUTENZIONE STRUMENTI                        ',30,'2007-03-04','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(483,'103','2006-01-01','Contanti','1045.44','0','2','Oblazione soci. ',18,'2006-01-01','Y','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(484,'103','2007-01-01','Contanti','17911.37','0','2','                                                                                         saldo iniziale 2007                                                                          ',32,'2006-12-31','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(485,'34','2007-03-15','Contanti','0','58.5','2',' Rimborso Maestro Giuliani Roberto febbraio 2007',2,'2007-03-15','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(486,'65','2007-03-15','Assegno Bancario','0','600','3','                             Rimborso Maestri Platini Fabrizio gennaio/febbraio 2007.   
ASSEGNO NR 3173573046                 ',2,'2007-03-15','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(487,'67','2007-03-15','Contanti','0','260','2',' Rimborso Maestri De Angelis Roberto 1° semestre 2006/2007',2,'2007-03-15','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(488,'260','2007-03-15','Contanti','0','18','2',' Spese per acquisto buste plastificate.',12,'2007-03-15','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(489,'132','2007-02-17','Assegno Bancario','796.05','0','3',' Assegno per servizio a Novara 2 giugno 2006',22,'2007-02-17','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(490,'130','2006-12-01','Bonifico Bancario','0','12','3',' Canone annuale Intesa Online   . CANONE ANNUALE INTESA ONLINE PERIODO 12/2006-12/2007 ',15,'2006-12-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(491,'132','2006-08-07','Bonifico Bancario','696.05','0','3',' Servizio Novara 6/12/2005',22,'2006-08-08','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(492,'65','2006-02-06','Assegno Bancario','0','482','3','Rimborso spese Platini Fabrizio periodo novembre/dicembre 2005. Assegno numero 3126252626.',2,'2006-02-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(493,'241','2006-02-01','Bonifico Bancario','0','515.01','3','DATA ORDINE 01/02/06 A FAVORE BARANZELLI C/O 03226 10100.',34,'2006-02-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(494,'130','2006-02-01','Bonifico Bancario','0','3.5','3','Commissioni varie ',15,'2006-02-01','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(495,'103','2006-01-31','Ricevuta Bancaria','0','84.72','3','Ricevuta Bancaria',1,'2006-01-31','N','sergio.belli','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(496,'7','2007-04-05','Assegno Bancario','500','0','3','Rimborso Servizio Carnevale Grignasco Giubiacia                                    ',22,'2007-04-05','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(497,'129','2007-04-10','Bonifico Bancario','0','32.05','3','Enel              febbraio-marzo 2007                                       ',9,'2007-04-10','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(498,'130','2007-03-31','Bonifico Bancario','0','18.45','3','    IMPOSTA DI BOLLO SU CONTO CORRENTE                                                ',15,'2007-04-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(499,'130','2007-03-31','Bonifico Bancario','0','3','3','                     COMMISSIONE INVIO E/CONTO E LETTERE TRASPARENZA                               ',15,'2007-04-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(500,'130','2007-03-31','Bonifico Bancario','0','26.19','3','                                                     COMPETENZE                                                   ',15,'2007-04-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(501,'84','2007-05-05','Contanti','0','344.5','2','                            Rimborso spese Negri Gilberto  per periodo marzo-aprile 2007.
Ore di lezione =  26,5                                       ',2,'2007-05-05','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(502,'34','2007-05-05','Contanti','0','71.5','2','                            Rimborso spese Giuliani Roberto per periodo marzo 2007
Ore di lezione =   5,5.                                                                            ',2,'2007-05-05','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(503,'103','2006-01-01','Contanti','1045.44','0','2','                            Oblazione soci                        ',18,'2006-01-01','N','corrado.baglioni','2006');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(504,'72','2007-05-11','Contanti','203','0','2','Tesseramento soci 2007 - Sede Marica',18,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(505,'236','2007-05-11','Contanti','0','30','2','Rimborso spese Riccardo basso di gattinara per servizi 25 aprile e primo maggio',27,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(506,'195','2007-05-11','Contanti','209','0','2','Tesseramento soci 2007 - Bertolini',18,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(507,'236','2007-05-11','Contanti','0','15','2','Rimborso spese Riccardo per servizio di novara 24 febbraio 2007',27,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(508,'223','2007-05-11','Contanti','0','30','2','Rimborso spese per Gregorio e Alberto di Confienza per servizio di Novara 24 febbraio 2007.',27,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(509,'261','2007-05-11','Contanti','0','60','2','                            Spese per Calendario Associazioni 2007                        ',14,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(510,'72','2007-05-11','Contanti','0','6.8','2','Rimborso  a Marica per raccomandate Silvestri e Tosetti',3,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(511,'84','2007-05-11','Contanti','0','234','2','Rimborso spese Negri Gilberto periodo gennaio/febbraio 2007.',2,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(512,'85','2007-05-11','Contanti','0','50','2','Spese per preventivo riparazione fotocopiatrice.
Fattura EssegiUfficio numero 458 del 13/04/07',35,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(513,'253','2007-05-11','Contanti','10','0','2','Tesseramento 2007 Roggero GianFranco',18,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(514,'262','2007-05-11','Contanti','10','0','2','                            Tesseramento 2007 Cacciami Antonio                        ',18,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(515,'263','2007-05-11','Contanti','10','0','2','                            Tesseramento 2007 Guglielmina Umberto                        ',18,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(516,'72','2007-05-11','Contanti','0','10.2','2','Acquisto Francobolli',3,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(517,'65','2007-05-11','Assegno Bancario','0','600','3','                                                        Rimborso spese maestro Platini Fabrizio          Marzo / Aprile 2007     .  Numero assegno 3173573048                .                                                                      ',2,'2007-05-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(518,'65','2007-05-10','Assegno Bancario','0','600','3','Rimborso spese maestro Platini Fabrizio periodo maggio / giugno 2007                                                    ',2,'2007-05-11','Y','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(519,'69','2007-07-25','Bonifico Bancario','9999999.99','0','3','xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',6,'2007-07-25','Y','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(520,'72','2007-07-24','Contanti','0','43.41','2','Rimborso a Marica Regis per acquisto attrezzatura pulizia nuova sede.',3,'2007-07-24','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(521,'86','2007-07-24','Contanti','0','100','2','Spesa acquisto ricarica cellulare. Denaro anticipato e saldato ad Ezio Borelli.',31,'2007-07-24','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(522,'264','2007-07-28','Contanti','0','690','2','                            Rimborso Esterni  Concerto 28 / 07 / 2007.
Elenco musici:
De Paoli Alessandra 30 euro
Raffaella (Ghemme) 25 euro                                        
Evelina (Gattinara) 25 euro
Rondi 25 euro
Paola Sogno 25 euro
Vaudano Andrea 25 euro
Sax Gattinara 25 euro
Calligaris 25 euro
Canella Egidio 30 euro
Giletti e Moglie 100 euro
Roberto 30 euro
Poli e figlio 75 euro
Bertolino 25 euro
Due corni 200 euro
Canclini 25 euro                         ',27,'2007-07-28','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(523,'236','2007-06-02','Contanti','0','15','2','Rimborso esterni Basso di Gattinara  per servizio di novara del 2 giugno 2007                                                    ',27,'2007-06-02','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(524,'265','2007-07-22','Contanti','450','0','2','                            Offerta da Parte del Comune di Campertogno per il servizio del 22 luglio 2007                                                                            ',22,'2007-07-22','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(525,'135','2007-08-05','Contanti','290','0','2','                                   Offerta da parte della Parrocchia di Valpiana per il servizio del 5 agosto 2007                                                                     ',22,'2007-08-05','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(526,'86','2007-07-23','Contanti','0','100','2','Ricarica telefonica                                          ',31,'2007-07-23','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(527,'266','2007-07-27','Contanti','0','25','2','                            Acquisto 
ciabatta elettrica 
appendiquadri                    
duplicazione chiavi sede nuova          
aste tende                                              ',38,'2007-07-27','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(528,'206','2007-06-28','Contanti','0','40','2','                      Acquisto biscotti per rinfresco saggio allievi                              ',13,'2007-06-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(529,'125','2007-07-28','Contanti','0','50','2','Rimborso spese semestrale Alessio                                                    ',27,'2007-07-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(530,'267','2007-06-28','Contanti','0','13.45','2','                            Acquisto
liquido citronella per ficcole per saggio allievi                                                   ',13,'2007-06-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(531,'72','2007-07-28','Contanti','0','70','2','Spese rinfresco per Inaugurazione Nuova Sede                                                    ',13,'2007-07-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(532,'268','2007-07-27','Contanti','0','100','2','                            Acquisto lampada sede nuova                                                                            ',38,'2007-07-27','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(533,'83','2007-08-13','Contanti','0','15','2','Spese marche da bollo per                  contratto comodato gratuito Nuova Sede                                   ',3,'2007-08-13','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(534,'228','2007-07-27','Contanti','0','35','2','                            Spese per pulizia nuova sede                                                                            ',38,'2007-07-27','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(535,'72','2007-08-13','Contanti','0','3.8','2','Raccomandata                  per I                                  invio bilancio consuntivo 2006 per erogazione contributo statale ',0,'2007-08-13','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(536,'129','2007-08-11','Bonifico Bancario','0','41.12','3','                            Spese per energia elettrica periodo giugno/luglio 2007                                                                            ',9,'2007-08-13','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(537,'129','2007-06-11','Bonifico Bancario','0','40.45','3','Spese energia elettrica periodo aprile/maggio 2007                                                    ',9,'2007-06-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(538,'210','2007-07-28','Contanti','421.32','0','2','Offerte ricevute durante il concerto del 28 luglio 2007                                                    ',22,'2007-07-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(539,'264','2007-06-03','Contanti','0','755','2','Rimborso esterni per concerto del 3 giugno 2007.
Musici : 
Pavan Chiara 25 euro
De Paoli Alessandra 45 euro
Anna 25 euro
Capone Marcello 25 euro
Rondi 25 euro
Cosimo 60 euro
Canella Egidio 30 euro
Bussolino Wilmo 25 euro
Vaudano 25 euro
Francesca Mosca 50 euro
Valerio 50 euro
Poli Paolo 75 euro
Poli Stefano 50 euro
Basso 30 euro
Domenico 25 euro
Calligaris 25 euro
Confienza Alberto 60 euro
Confienza Gregorio 45 euro
Trombone 30 euro
Roberto 30 euro
















',27,'2007-06-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(540,'89','2007-06-03','Contanti','25','0','2','Oblazione concerto 3 giugno Domenico                                                    ',18,'2007-06-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(541,'78','2007-06-03','Contanti','25','0','2','Oblazione concerto 4 giugno                                                    ',18,'2007-06-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(542,'98','2007-06-03','Contanti','25','0','2','Oblazione concerto 3 giugno                                                    ',18,'2007-06-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(543,'78','2007-07-28','Contanti','25','0','2','                                                    Oblazione concerto 28 giugno',18,'2007-07-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(544,'269','2007-07-28','Contanti','25','0','2','                                                    Oblazione concerto 28 luglio',18,'2007-07-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(545,'270','2007-07-26','Contanti','1972.8','0','2','Contributo provinciale scuola allievi anno 2007                                                    ',26,'2007-07-26','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(546,'232','2007-07-24','Contanti','4.8','0','2','                                                    Oblazione Dal Fovo Antonio',18,'2007-07-24','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(547,'211','2007-06-03','Contanti','0','40.99','2','Spesa per rinfresco concerto 3 giugno 2007                                                    ',13,'2007-06-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(548,'212','2007-06-03','Contanti','0','40','2','                   Spesa per rinfresco concerto 3 giugno 2007                                 ',13,'2007-06-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(549,'206','2007-06-03','Contanti','0','14','2','                                                    Spesa per rinfresco concerto 3 giugno 2007',13,'2007-06-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(550,'132','2007-06-03','Contanti','0','3.62','2','Marche da bollo per Comune di Novara                                                    ',3,'2007-06-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(551,'241','2007-05-19','Contanti','0','370','2','Ingresso Concerto del 20 Maggio 2007 per il Pomeriggio Musicale a Milano 2007.             ',33,'2007-05-19','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(552,'239','2007-05-19','Contanti','325.5','0','2','                                                    Rimborso spese trasporto da partecipanti al pomeriggio musicale 2007',33,'2007-05-19','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(553,'271','2007-06-17','Contanti','270','0','2','Offerta ricevuta da Oratorio San Bernardo per il servizio del 17 giugno 2007                                                    ',22,'2007-06-17','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(554,'272','2007-05-27','Contanti','270','0','2','Offerta per servizio alpini valbusaga del 27 maggio 2007                                                    ',22,'2007-05-27','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(555,'273','2007-06-13','Contanti','500','0','2','              Offerta per servizio compleanno Palma Urano giugno 2006                                      ',22,'2007-06-13','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(556,'204','2007-06-17','Contanti','0','330','2','Pranzo Festa Alpini 2007 dopo servizio                                                     ',13,'2007-06-17','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(557,'151','2007-06-17','Contanti','15','0','2','                                               Oblazione Donatella per pranzo alpini 2007                                                         ',18,'2007-06-17','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(558,'274','2007-05-13','Contanti','100','0','2','Tessera euro 10
Oblazione euro 90                                                    ',18,'2007-05-13','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(559,'6','2007-05-13','Contanti','270','0','2','Offerta per servizio Festa San Rocco 2007 Piane sesia                                                     ',22,'2007-05-13','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(560,'34','2007-05-09','Contanti','0','104.5','2','Rimborso Spese Giuliani Roberto per periodo Aprile 2007 ore 6,5 x 13. Più musica insieme                                                    ',2,'2007-05-09','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(561,'34','2007-07-07','Contanti','0','335','2','                                                    Rimborso spese maestri Giuliani Roberto per periodo maggio / giugno 2007.
Ore 14 + musica d insieme',2,'2007-07-07','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(562,'84','2007-07-07','Contanti','0','247','2','                                                                                Rimborso spese maestri Gilberto Negri periodo maggio / giugno 2007.
Totale ore 19                        ',2,'2007-07-07','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(563,'65','2007-07-07','Assegno Bancario','0','600','3','                                                    Rimborso spese maestri Platini Fabrizio periodo maggio / giugno 2007.

Numero assegno 3173573049',2,'2007-07-07','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(564,'59','2007-05-09','Contanti','240','0','2','                                                    Offerta per servizio cimitero 30 marzo 2007',22,'2007-05-09','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(565,'275','2007-08-14','Contanti','15','0','2','                                                                                Oblazione Signor Velatta                        ',18,'2007-08-14','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(566,'276','2007-05-20','Contanti','50','0','2','                                                    Oblazione Zanaroli Mario per sveglia Primo Maggio',18,'2007-05-20','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(567,'223','2007-03-31','Contanti','32','0','2','                                                    Oblazione da musici di confienza',18,'2007-03-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(568,'69','2007-03-31','Contanti','0','11','2','Abbonamento rivista Risveglio Musicale',17,'2007-03-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(569,'241','2007-05-08','Assegno Bancario','0','260','3','Trasporto per servizio Una Provincia in Cartolina                                                    ',34,'2007-05-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(570,'131','2007-06-22','Bonifico Bancario','267','0','3','                                                    Bonifico da Comune Prato Sesia per servizio primo maggio 2007.
(commissioni pari a 3 euro)',22,'2007-06-22','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(571,'231','2007-01-25','Bonifico Bancario','0','164.64','3','Oneri SIAE anno 2007',8,'2007-01-25','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(572,'241','2007-09-03','Contanti','0','260','2','Rimborso a Baranzelli per Servizio Novara/Lumellogno 02/06/2007                 ',34,'2007-09-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(573,'137','2007-08-16','Contanti','240','0','2','Rimborso per servizio di San Rocco del 16/08/2007                                                    ',22,'2007-08-16','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(574,'277','2007-10-11','Contanti','0','120','2','Rimborso a Evelina (di gattinara) per corso promozionale scuole media                                                     ',2,'2007-10-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(575,'196','2007-11-11','Contanti','0','100','2','                            Acquisto contatore parziale per sede nuova.                                                                             ',38,'2007-11-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(576,'136','2007-08-15','Contanti','240','0','2','Rimborso per servizio del 15/08/2007 a grignasco                                                    ',22,'2007-08-15','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(577,'137','2007-08-16','Contanti','0','50','2','Acquisto pancetta per merenda del 16 agosto                                                    ',13,'2007-08-16','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(578,'243','2007-10-24','Assegno Bancario','0','39.9','3','Spesa per acquisto Combustibile stufa.


Voce appartenente all''assegno numero 3205127644-04                                                    ',10,'2007-10-24','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(579,'243','2007-10-24','Contanti','0','39.9','2','Spesa per acquisto combustibile stufa                                                    ',10,'2007-10-24','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(580,'155','2007-10-24','Assegno Bancario','0','200','3','Manutenzione strumenti musicali :
- flauto Mogar;
- flauto Grassi;
- flicorno.

Voce appartenente all''assegno numero 3205127644-04',5,'2007-10-24','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(581,'140','2007-10-12','Contanti','0','32','2','Acquisto bocchino per clarinetto scuola allievi.',5,'2007-10-12','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(582,'30','2007-08-23','Contanti','0','3000','2','Versamento contanti su conto per partita di giro             ',28,'2007-08-23','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(583,'30','2007-08-23','Versamento Contanti','3000','0','3','Versamento da cassa su conto per partita di giro                 ',28,'2007-08-23','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(584,'142','2007-09-22','Contanti','0','190','2','                            Premio assicurazione anno 2007                        ',11,'2007-09-22','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(585,'144','2007-10-24','Contanti','0','120','2','Acquisto partiture "Willow"  ',6,'2007-10-24','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(586,'278','2007-10-11','Contanti','0','30','2','Rimborso a Mantovani (di gattinara) per corso promozionale scuole media',2,'2007-10-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(587,'278','2007-10-11','Contanti','30','0','2','Oblazione Mantovani (di Gattinara)                                                    ',18,'2007-10-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(588,'115','2007-10-13','Contanti','0','21','2','Acquisto carta per fotocopie A4                                                    ',12,'2007-10-13','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(589,'221','2007-08-31','Contanti','40','0','2','Contributo lezioni Rosaclerio
Marzo Aprile Maggio Giugno 2007',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(590,'279','2007-08-31','Contanti','10','0','2',' Contributo lezioni Tomalino   Giugno 2007                                                                            ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(591,'25','2007-08-31','Contanti','11','0','2','Contributo strumento Pagnoni Giugno 2007                                                    ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(592,'29','2007-08-31','Contanti','64','0','2','Contributo lezioni e strumento Aprile Mauro per Maggio Giugno Luglio Agosto 2007',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(593,'203','2007-08-31','Contanti','190','0','2','Contributo lezione e strumento Massarotti

Novembre 2006 - Agosto 2007                                                    ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(594,'27','2007-08-31','Contanti','100','0','2','                            Contributo lezioni  Cascio Annalia e Antonino Gennaio - Maggio 2007                                                                            ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(595,'280','2007-08-31','Contanti','20','0','2','Contributo lezioni Saragno Febbraio Marzo 2007              ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(596,'221','2007-08-11','Contanti','20','0','2','          Contributo lezioni Rosaclerio Gennaio Febbraio 2007                                          ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(597,'281','2007-08-31','Contanti','40','0','2','Contributo lezioni Lasoued Febbraio Marzo 2007                                                    ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(598,'23','2007-08-31','Contanti','20','0','2','               Contributo lezioni Agazzini Gennaio 2007                                     ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(599,'282','2007-08-31','Contanti','10','0','2','                                                            Contributo lezioni Mingolla Gennaio 2007                                                                              ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(600,'23','2007-08-31','Contanti','20','0','2','                                      Contributo lezioni Agazzini Febbraio 2007              ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(601,'282','2007-08-31','Contanti','10','0','2','                                      Contributo lezioni Mingolla Febbraio 2007                                                                  ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(602,'283','2007-08-31','Contanti','10','0','2','                 Contributo lezioni Andoh Febbraio 2007                                   ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(603,'26','2007-08-31','Contanti','20','0','2','                    Contributo lezioni Pontini Gennaio Febbraio 2007                                ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(604,'23','2007-08-31','Contanti','40','0','2','                          Contributo lezioni Agazzini Marzo Aprile 2007                          ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(605,'282','2007-08-31','Contanti','20','0','2','                                             Contributo lezioni Mingolla Marzo Aprile 2007                                                           ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(606,'284','2007-08-31','Contanti','10','0','2','                       Contributo lezioni Granieri Aprile 2007                             ',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(607,'25','2007-08-31','Contanti','21','0','2','Contributo lezioni e strumento Pagnoni Marzo 2007',20,'2007-08-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(608,'267','2007-07-28','Contanti','0','9.9','2','                            Acquisto cornice per ingrandimento fotografia                                                                            ',38,'2007-07-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(609,'285','2007-07-28','Contanti','0','19.35','2','Spese per ingrandimento fotografia Novara                                                    ',38,'2007-07-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(610,'204','2007-06-17','Contanti','240','0','2','Offerta per servizio Alpini di Grignasco del 17 giugno 2007                                                    ',22,'2007-06-17','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(611,'84','2007-11-02','Assegno Bancario','0','351','3','Rimborso spese Maestri Negri Gilberto Settembre Ottobre 2007. Totale ore 27. Assegno numero 3205127645-05',2,'2007-11-02','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(612,'67','2007-10-31','Assegno Bancario','0','182','3','                   Rimborso spese maestri De Angelis periodo 12/03/2007 - 04/06/2007. Totale ore 14. Assegno numero 3205127643-03                                 ',2,'2007-10-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(613,'65','2007-11-07','Assegno Bancario','0','600','3','                      Rimborso spese maestri Platini periodo Settembre Ottobre 2007. Assegno numero 3205127646-06                              ',2,'2007-11-07','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(614,'194','2007-09-24','Contanti','0','65','2','          Rimborso spese maestri Bertolini Giugno Luglio 2007. Totale ore 5.                                         ',2,'2007-09-24','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(615,'35','2007-11-01','Contanti','8','0','2','Tesseramento socio ordinario 2007                                         - Baglioni                                                  ',18,'2007-11-01','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(616,'','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                    ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(617,'36','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(618,'37','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                         ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(619,'38','2007-11-01','Contanti','6','0','2','Tesseramento socio ordinario 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(620,'39','2007-11-01','Contanti','10','0','2',' Tesseramento socio sostenitore 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(621,'40','2007-11-01','Contanti','10','0','2',' Tesseramento socio sostenitore 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(622,'41','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(623,'42','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                      ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(624,'43','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                    ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(625,'44','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(626,'45','2007-11-01','Contanti','10','0','2',' Tesseramento socio sostenitore 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(627,'46','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(628,'47','2007-11-01','Contanti','6','0','2','                                                        Tesseramento socio ordinario 2007 - Baglioni                                                                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(629,'48','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                    ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(630,'49','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(631,'50','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(632,'52','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(633,'53','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                      ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(634,'54','2007-11-01','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                     ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(635,'286','2007-11-01','Contanti','20','0','2','Tesseramento socio sostenitore 2007 - Baglioni                                                                             ',18,'2007-11-01','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(636,'244','2007-08-31','Contanti','51','0','2','Contributo lezioni Carbone  Febbraio Marzo Aprile Maggio 07 + strumento Maggio 07 
                                                 ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(637,'26','2007-08-31','Contanti','10','0','2','Contributo lezioni Pontini  Marzo  2007                                              ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(638,'26','2007-08-31','Contanti','10','0','2','Contributo lezioni Pontini Aprile 2007',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(639,'58','2007-08-31','Contanti','40','0','2','Contributo lezioni Schizzerotto Febbraio Marzo Aprile Maggio 2007
                                          ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(640,'279','2007-08-31','Contanti','20','0','2','Contributo lezioni Tomalino  Aprile Maggio 2007
                                ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(641,'287','2007-08-31','Contanti','11','0','2','Contributo Strumento Andorno  Giugno 2007                                                    ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(642,'284','2007-08-31','Contanti','10','0','2','Contributo lezioni Granieri Maggio 2007  
                                                  ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(643,'23','2007-08-31','Contanti','20','0','2','Contributo lezioni Agazzini Linda e Lorenzo Maggio 2007
                                                    ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(644,'282','2007-08-31','Contanti','10','0','2','Contributo lezioni Mingolla Maggio 2007 
                                                   ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(645,'25','2007-08-31','Contanti','21','0','2','Contributo lezioni e strumento Pagnoni Maggio 2007
                                                    ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(646,'24','2007-08-31','Contanti','10','0','2','Contributo lezioni Pozzi carlo Maggio 2007
                                      ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(647,'284','2007-08-31','Contanti','10','0','2','Contributo lezioni Granieri Giugno 2007 
                                                   ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(648,'23','2007-08-31','Contanti','20','0','2','Contributo lezioni Agazzini Linda e Lorenzo Giugno 2007
                                                    ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(649,'282','2007-08-31','Contanti','10','0','2','Contributo lezioni Mongolla Giugno 2007
                                                     ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(650,'29','2007-08-31','Contanti','64','0','2','Contributo lezioni Aprile Mauro Marzo Aprile 2007 e strumento Gen./Feb./Marzo/Aprile 2007 
                            ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(651,'24','2007-08-31','Contanti','30','0','2','Contributo lezioni Pozzi Carlo Febbraio   Marzo Aprile 2007   
                                                  ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(652,'281','2007-08-31','Contanti','40','0','2','Contributo lezioni Lasoued Aya e Yed  Aprile Maggio 2007 
                                                   ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(653,'25','2007-08-31','Contanti','21','0','2','Contributo lezioni e strumento Pagnoni Aprile 2007
                                                    ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(654,'287','2007-08-31','Contanti','21','0','2','Contributo lezioni e strumento Andorno  Maggio 2007         
                                            ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(655,'55','2007-08-31','Contanti','20','0','2','                            Contributo lezioni Moretti Eleonora Febbraio Marzo 2007       
                                                                     ',20,'2007-08-31','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(656,'284','2007-11-11','Contanti','10','0','2','Contributo lezioni Granieri Ottobre 2007
                                                    ',20,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(657,'58','2007-11-11','Contanti','20','0','2','Contributo lezioni Schizzerotto Settembre Ottobre 2007
                                                     ',20,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(658,'23','2007-11-11','Contanti','20','0','2','Contributo lezioni Agazzini Linda e Lorenzo Ottobre 2007  
                                                   ',20,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(659,'282','2007-11-11','Contanti','10','0','2','Contributo lezioni Mingolla Ottobre 2007 
                                                   ',20,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(660,'56','2007-11-11','Contanti','10','0','2','Contributo lezioni Mancin Ottobre 2007  
                                                  ',20,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(661,'284','2007-08-31','Contanti','10','0','2','Contributo lezioni Granieri Marzo  2007    
                                                ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(662,'25','2007-08-31','Contanti','21','0','2','Contributo lezioni e strumento Pagnoni Febbraio 2007 
                                                   ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(663,'220','2007-08-31','Contanti','10','0','2','Contributo lezioniVaccaro Vito Febbraio 2007  
                                                  ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(664,'244','2007-08-31','Contanti','20','0','2','Contributo lezioni Carbone Dicembre 06- Gennaio 2007
                                                  ',20,'2007-08-31','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(665,'232','2007-11-11','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Claudia                                           ',18,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(666,'247','2007-11-11','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Claudia                                                    ',18,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(667,'248','2007-11-11','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Claudia                                                    ',18,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(668,'246','2007-11-11','Contanti','20','0','2','Tesseramento socio sostenitore 2007 - Claudia                                                     ',18,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(669,'249','2007-11-11','Contanti','15','0','2','Tesseramento socio sostenitore 2007 - Claudia                                                     ',18,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(670,'106','2007-11-11','Contanti','15','0','2','Tesseramento socio sostenitore 2007 - Claudia                                                     ',18,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(671,'251','2007-11-11','Contanti','6','0','2','Tesseramento socio ordinario 2007 - Claudia                                                    ',18,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(672,'289','2007-11-11','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Claudia                                                  ',18,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(673,'290','2007-11-11','Contanti','10','0','2','Tesseramento socio sostenitore 2007 - Bertolini                                                 ',18,'2007-11-11','N','marica.regis','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(674,'69','2008-01-02','Bonifico Bancario','99999','0','2','            jjjjjjjjjjjjjjjjj                                                        xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                    ',10,'2008-01-02','Y','sergio.belli','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(675,'285','2008-01-08','Bonifico Bancario','9999999.99','0','3','    bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb                                                ',27,'2008-01-08','Y','sergio.belli','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(676,'292','2007-12-30','Contanti','0','626.98','2','                                   Acquisto pc portatile asus con borsa e mouse                                                                    ',35,'2007-12-30','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(677,'207','2007-10-20','Assegno Bancario','0','220','3','                            Acquisto premi per lotteria 2007             . Assegno numero 3205127642.                               ',29,'2007-10-20','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(678,'56','2007-11-01','Contanti','10','0','2','Contributo lezioni Mancin Gabriele Novembre 2007        ',20,'2007-11-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(679,'25','2007-07-01','Contanti','54','0','2','Contributo lezioni + strumento Pagnoni Federico Luglio-Agosto-Settembre-Ottobre-Novembre 2007                                        ',20,'2007-07-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(680,'279','2007-10-01','Contanti','41','0','2','            Contributo lezioni Tomalino Cristian Ottobre-Novembre-Dicembre 2007                                           ',20,'2007-10-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(681,'293','2007-10-01','Contanti','90','0','2','                            Contributo lezioni Borsoi Alberto Anno 2006 più Ottobre-Novembre 2007                                                                         ',20,'2007-10-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(682,'294','2007-12-01','Contanti','10','0','2','                                    Contributo lezioni Ferraris Marco Dicembre 2007                                                                       ',20,'2007-12-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(683,'294','2007-11-01','Contanti','10','0','2','                      Contributo lezioni Ferraris Marco Novembre 2007                                ',20,'2007-11-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(684,'58','2007-11-01','Contanti','20','0','2','                           Contributo lezioni Schizzerotto Leonardo Novembre-Dicembre 2007                            ',20,'2007-11-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(685,'284','2007-11-01','Contanti','10','0','2','Contributo lezioni Granieri Antonio Novembre 2007                             ',20,'2007-11-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(686,'23','2007-11-01','Contanti','20','0','2','Contributo lezioni Fam Agazzini Novembre 2007                     ',20,'2007-11-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(687,'282','2007-11-01','Contanti','10','0','2','Contributo lezioni Mingolla Paola Novembre 2007                        ',20,'2007-11-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(688,'296','2007-11-01','Contanti','21','0','2','Contributo lezioni + strumento Cerutti Alessandro Novembre 2007                                ',20,'2007-11-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(689,'296','2007-10-01','Contanti','21','0','2','          Contributo lezioni + strumento Cerutti Alessandro Ottobre 2007                                             ',20,'2007-10-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(690,'295','2007-10-01','Contanti','10','0','2','                         Contributo lezioni Milone Marianna Ottobre 2007                              ',20,'2007-10-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(691,'295','2007-11-01','Contanti','10','0','2','          Contributo lezioni Milone Marianna Novembre 2007                                             ',20,'2007-11-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(692,'208','2007-12-01','Contanti','490','0','2','Offerte pro scuola allievi "Dolci Note" 2007        ',23,'2007-12-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(693,'210','2007-12-08','Contanti','700.53','0','2','Offerte ricevute per Concerto Immacolata 2007                     ',22,'2007-12-08','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(694,'212','2007-12-08','Contanti','0','55.2','2','Spese per rinfresco Concerto Immacolata 2007               ',13,'2007-12-08','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(695,'211','2007-12-08','Contanti','0','33','2','Spese per rinfresco Concerto Immacolata 2007               ',13,'2007-12-08','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(696,'260','2007-11-13','Assegno Bancario','0','15','3','                            Fotocopie Metodo per scuola allievi            . Assegno numero 3205127647-07                         ',12,'2007-11-13','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(697,'260','2007-12-01','Contanti','0','13','2','Spese Acquisto fogli trasparenti                  ',12,'2007-12-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(698,'211','2007-12-08','Contanti','0','22','2','                                            Premi per Lotteria 2007        ',29,'2007-12-08','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(699,'208','2007-12-09','Contanti','1210','0','2','Ricavato sottoscrizione a premi lotteria 2007            ',23,'2007-12-09','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(700,'115','2007-12-08','Contanti','0','9','2','Acquisto cancelleria                                    ',12,'2007-12-08','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(701,'52','2007-12-09','Contanti','0','7.5','2','               Acquisto 5 litri vino per rinfresco                                     ',13,'2007-12-08','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(702,'83','2007-11-26','Contanti','0','31','2','                            Tassa comunale pubblicità temporanea 45 locandine.                                ',14,'2007-11-26','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(703,'243','2007-12-14','Contanti','0','46','2','         Combustibile stufa scuola allievi                                           ',10,'2007-12-14','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(704,'297','2007-11-17','Contanti','0','50','2','                                                 Spese per rinfresco lotteria 2007                                                       ',29,'2007-11-17','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(705,'231','2007-11-27','Contanti','0','104.84','2','       Permessi SIAE fuori abbonamento       ',8,'2007-11-27','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(706,'72','2007-11-28','Contanti','0','18','2','         Acquisto francobolli                                           ',3,'2007-11-28','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(707,'34','2007-11-10','Assegno Bancario','0','175.5','3','                            Rimborso spese maestri Giuliani Roberto                                      Settembre-Ottobre 2007             . Assegno numero 3205127647           ',2,'2007-11-10','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(708,'34','2007-12-28','Contanti','0','136.5','2','                  Rimborso Spese maestri Giuliani Roberto Novembre 2007                                  ',2,'2007-12-28','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(709,'65','2007-09-24','Assegno Bancario','0','600','3','                                         Rimborso spese maestri Platini Fabrizio Luglio-Agosto 2007              .Assegno numero 3173573050.                                                 ',2,'2007-09-24','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(710,'217','2007-11-18','Contanti','240','0','2','                            Offerta ricevuta per servizio AVIS 2007                                                 ',22,'2007-11-18','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(711,'29','2007-09-01','Contanti','74','0','2','          Contributo lezioni + strumento Aprile Mauro Strumento:Settembre-Ottobre-Novembre-Dicembre 2007    Lezioni:Ottobre-Novembre-Dicembre                                             ',20,'2007-09-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(712,'25','2007-11-01','Contanti','32','0','2','                             Contributo lezioni + strumento Pagnoni Federico Strumento:Nov-Dic 2007, Lezione Nov 2007',20,'2007-11-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(713,'296','2007-12-01','Contanti','21','0','2','                      Contributo lezioni+strumento Cerutti Alessandro Dicembre 2007                                 ',20,'2007-12-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(714,'26','2007-10-01','Contanti','30','0','2','Contributo lezioni Ott-Nov-Dic 2007          ',20,'2007-10-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(715,'23','2007-12-01','Contanti','20','0','2','Contributo lezioni Dicembre 2007                                ',20,'2007-12-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(716,'282','2007-12-01','Carta di Credito','10','0','2','                       Contributo lezioni Dicembre 2007                         ',20,'2007-12-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(717,'295','2007-12-01','Contanti','10','0','2','                     Contributo lezioni Dicembre 2007                                 ',20,'2007-12-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(718,'55','2007-10-01','Contanti','30','0','2','                 Contributo lezioni Ott-Nov-Dic 2007                                     ',20,'2007-10-01','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(719,'298','2007-12-09','Assegno Bancario','0','1200','3','                            Pranzo Sociale 2007. Numero 40 coperti.                Assegno numero 3205127649-09                                            ',13,'2007-12-09','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(720,'84','2007-12-28','Contanti','0','351','2','              Rimborso Spese Maestri Nov-Dic 2007                                      ',2,'2007-12-28','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(721,'155','2007-12-07','Assegno Bancario','0','3000','3','                            Prelevamento contanti da banca . Assegno numero 3205127648.                                               ',28,'2007-12-07','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(722,'155','2007-11-07','Contanti','3000','0','2','            Versamento contanti in cassa per partita di giro                                        ',28,'2007-12-07','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(723,'187','2007-12-08','Contanti','0','84','2','Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(724,'193','2007-12-08','Contanti','0','118','2','                  Rimborso spese musici 2007                                  ',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(725,'184','2007-12-08','Contanti','0','54','2','      Rimborso spese musici 2007                                              ',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(726,'176','2007-12-08','Contanti','0','39','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(727,'191','2007-12-08','Contanti','0','16','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(728,'26','2007-12-08','Contanti','0','43','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(729,'24','2007-12-08','Contanti','0','64','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(730,'158','2007-12-08','Contanti','0','25','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(731,'161','2007-12-08','Contanti','0','103','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(732,'66','2007-12-08','Contanti','0','58','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(733,'166','2007-12-08','Contanti','0','52','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(734,'178','2007-12-08','Contanti','0','51','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(735,'284','2007-12-08','Contanti','0','5','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(736,'165','2007-12-08','Contanti','0','83','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(737,'160','2007-12-08','Contanti','0','72','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(738,'157','2007-12-08','Contanti','0','50','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(739,'195','2007-12-08','Contanti','0','20','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(740,'194','2007-12-08','Contanti','0','13','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(741,'163','2007-12-08','Contanti','0','52','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(742,'192','2007-12-08','Contanti','0','63','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(743,'167','2007-12-08','Contanti','0','5','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(744,'188','2007-12-08','Contanti','0','52','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(745,'197','2007-12-08','Contanti','0','57','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(746,'156','2007-12-08','Contanti','0','15','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(747,'170','2007-12-08','Contanti','0','74','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(748,'299','2007-12-08','Contanti','0','15','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(749,'168','2007-12-08','Contanti','0','34','2','Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(750,'177','2007-12-08','Contanti','0','24','2','                                                     Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(751,'183','2007-12-08','Contanti','0','97','2','                                                     Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(752,'175','2007-12-08','Contanti','0','90','2','                                                     Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(753,'71','2007-12-08','Contanti','0','13','2','                                                     Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(754,'84','2007-12-08','Contanti','0','115','2','                                                     Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(755,'22','2007-12-08','Contanti','0','18','2','                                                     Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(756,'182','2007-12-08','Contanti','0','65','2','                                                     Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(757,'300','2007-12-08','Contanti','0','23','2','                                                     Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(758,'196','2007-12-08','Contanti','0','70','2','                                                    Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(759,'198','2007-12-08','Contanti','0','45','2','          Rimborso spese musici 2007                                            ',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(760,'198','2007-12-08','Contanti','45','0','2','                            Rimborso spese riparazione pelle cassa          da Silvestri Riccardo                                                                  ',21,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(761,'30','2007-12-08','Contanti','0','13','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(762,'153','2007-12-08','Contanti','0','9','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(763,'154','2007-12-08','Contanti','0','34','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(764,'154','2007-12-08','Contanti','34','0','2','                                                    Oblazione Abbate Claudio',18,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(765,'155','2007-12-08','Contanti','0','89','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(766,'34','2007-12-08','Contanti','0','11','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(767,'34','2007-12-08','Contanti','11','0','2','                                                    Oblazione Giuliani Roberto',18,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(768,'162','2007-12-08','Contanti','0','79','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(769,'169','2007-12-08','Contanti','0','130','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(770,'174','2007-12-08','Contanti','0','67','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(771,'179','2007-12-08','Contanti','0','19','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(772,'180','2007-12-08','Contanti','0','145','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(773,'28','2007-12-08','Contanti','0','31','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(774,'185','2007-12-08','Contanti','0','10','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(775,'190','2007-12-08','Contanti','0','8','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(776,'107','2007-12-08','Contanti','0','8','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(777,'199','2007-12-08','Contanti','0','6','2','                                                      Rimborso spese musici 2007',7,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(778,'147','2007-12-08','Contanti','0','60','2','                                                      Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(779,'100','2007-12-08','Contanti','0','25','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(780,'93','2007-12-08','Contanti','0','45','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(781,'122','2007-12-08','Contanti','0','75','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(782,'80','2007-12-08','Contanti','0','50','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(783,'101','2007-12-08','Contanti','0','45','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(784,'88','2007-12-08','Contanti','0','100','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(785,'96','2007-12-08','Contanti','0','25','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(786,'118','2007-12-08','Contanti','0','25','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(787,'89','2007-12-08','Contanti','0','25','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(788,'89','2007-12-08','Contanti','25','0','2','                                                    Oblazione Granieri Domenico',18,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(789,'78','2007-12-08','Contanti','0','25','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(790,'78','2007-12-08','Contanti','25','0','2','                                                    Oblazione Calligaris Franco',18,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(791,'301','2007-12-08','Contanti','0','100','2','Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(792,'302','2007-12-08','Contanti','0','70','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(793,'120','2007-12-08','Contanti','0','25','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(794,'98','2007-12-08','Contanti','0','25','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(795,'98','2007-12-08','Contanti','25','0','2','                                                    Oblazione Bussolino Wlmo',18,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(796,'149','2007-12-08','Contanti','0','25','2','                              Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(797,'99','2007-12-08','Contanti','0','25','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(798,'125','2007-12-08','Contanti','0','30','2','                                                    Rimborso spese esterni 2007',27,'2007-12-08','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(799,'303','2007-12-31','Contanti','0','120','2','                            Spesa per acquisto toner fotocopiatrice                                                                            ',12,'2007-12-01','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(800,'194','2007-12-29','Contanti','0','201.5','2','                                                    Rimborso spese Maestri Bertolini Enrico Ott-Nov-Dic 2007',2,'2007-12-29','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(801,'67','2007-12-29','Contanti','0','175.5','2','                                                    Rimborso spese Maestri De Angelis Roberto secondo semestre 2007',2,'2007-12-29','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(802,'83','2007-12-07','Bonifico Bancario','0','102.36','3','Reversale Corso Provinciale Scuola Allievi 2007',2,'2007-12-07','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(803,'130','2007-12-30','Bonifico Bancario','0','12','3','Canone annuale Intesa Online . CANONE ANNUALE INTESA ONLINE PERIODO 12/2007-12/2008              ',15,'2007-12-30','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(804,'129','2007-12-11','Bonifico Bancario','0','41.77','3','Enel Ottobre-Novembre 2007',9,'2007-12-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(805,'129','2007-10-11','Bonifico Bancario','0','41.82','3','Enel agosto-settembre 2007                                                    ',9,'2007-10-11','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(806,'304','2007-10-04','Assegno Bancario','300','0','3','Offerta per servizio Rastiglione del 30 Settembre 2007                                                    ',22,'2007-10-04','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(807,'130','2007-10-03','Bonifico Bancario','0','23.94','3','                                                                                Competenze Banca Intesa                        ',15,'2007-10-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(808,'130','2007-10-03','Bonifico Bancario','0','18.45','3','                                                    Imposta di bollo su conto corrente',15,'2007-10-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(809,'130','2007-10-03','Bonifico Bancario','0','2','3','                                                    Commissioni banca intesa',15,'2007-10-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(810,'305','2007-10-05','Assegno Bancario','0','624.9','3','Acquisto  sedie pieghevoli rosse 60 pezzi x 8,65 cad            . Assegno numero 3205127641',38,'2007-10-05','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(811,'132','2007-12-17','Bonifico Bancario','146.05','0','3','Offerta per servizio Lumellogno 2 giugno 2007  ',22,'2007-12-17','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(812,'132','2007-12-17','Bonifico Bancario','900','0','3','                                                    Offerta per servizio Novara 2 giugno 2007',22,'2007-12-17','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(813,'83','2007-10-10','Bonifico Bancario','1200','0','3','Contributo Comune Grignasco anno 2007',19,'2007-10-10','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(814,'147','2007-07-28','Contanti','0','30','2','                                                                            Rimborso concerto di luglio                                                                                ',27,'2007-07-28','Y','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(815,'306','2007-07-28','Contanti','0','25','2','                                        Rimborso concerto di luglio     Raffaella e marito                                                           ',27,'2007-07-28','Y','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(816,'277','2007-07-28','Contanti','0','25','2','      Rimborso concerto di luglio                                              ',27,'2007-07-28','Y','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(817,'118','2007-07-28','Contanti','0','25','2','                   Rimborso concerto di luglio                                 ',27,'2007-07-28','Y','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(818,'96','2007-07-28','Contanti','0','25','2','         Rimborso concerto di luglio                                           ',27,'2007-07-28','Y','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(819,'120','2007-07-28','Contanti','0','25','2','          Rimborso concerto di luglio                                          ',27,'2007-07-28','Y','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(820,'78','2007-07-28','Contanti','0','25','2','           Rimborso concerto di luglio                                         ',27,'2007-07-28','Y','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(821,'243','2007-12-14','Contanti','0','42','2','Spese per acquisto carburante stufa',10,'2007-12-14','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(822,'130','2007-07-03','Bonifico Bancario','0','25.06','3','Competenze banca intesa          secondo trimestre 2007                  ',15,'2007-07-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(823,'130','2007-07-03','Bonifico Bancario','0','18.45','3','                                                    Imposta di bollo su conto corrente secondo trimestre 2007',15,'2007-07-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(824,'130','2007-07-03','Bonifico Bancario','0','2','3','                                                    Commissioni invio documento',15,'2007-07-03','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(825,'270','2007-07-13','Bonifico Bancario','1296.05','0','3','                            Contributo provinciale legge 38/2006                                ',37,'2007-07-13','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(826,'233','2007-11-24','Contanti','550','0','2','DONAZIONE PER ACQUISTI E MANUTENZIONE STRUMENTI        ',30,'2007-11-24','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(827,'307','2007-11-24','Contanti','0','565','2','Acquisto Sax Contralto Jupiter  JAS 769. Acquisto ance.',5,'2007-11-24','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(828,'307','2007-09-27','Contanti','0','102','2','Noleggio strumenti : 
- 2 sax contralti
- 1 flauto

Acquisto ance',39,'2007-09-27','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(829,'307','2007-10-20','Contanti','0','25','2','Noleggio strumenti : 
- 1 Sax COntralto Weril',39,'2007-10-20','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(830,'307','2007-09-27','Contanti','0','10','2','Acquisto bacchette batteria di seconda scelta.                                                    ',5,'2007-09-27','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(831,'307','2007-09-27','Contanti','0','5.3','2','                                                    Acquisto n 2 bacchette a dirigere',5,'2007-09-27','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(832,'308','2007-07-28','Contanti','5.6','0','2','                            Oblazione Ornella Pasqualin                                                                            ',18,'2007-07-28','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(833,'172','2007-12-31','Contanti','59','0','2','Oblazione Tosetti Enrico',18,'2007-12-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(834,'154','2007-12-30','Contanti','16.5','0','2','Oblazione 2007 Claudio Abbate                                                    ',18,'2007-12-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(835,'34','2007-12-31','Contanti','11.5','0','2','                                                    Oblazione 2007 Giuliani Roberto',18,'2007-12-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(836,'60','2007-12-31','Carta di Credito','8','0','2','                                                    Oblazione 2007 Velatta Laura',18,'2007-12-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(837,'31','2007-12-31','Contanti','18','0','2','                                                    Oblazione Mischiatti',18,'2007-12-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(838,'173','2007-12-31','Contanti','21.5','0','2','                                                    Oblazione 2007 Cascio',18,'2007-12-31','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(839,'115','2007-12-29','Contanti','0','24.5','2','        carta A3 gialla per manifesti                                            ',12,'2007-12-29','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(840,'297','2007-12-05','Contanti','0','60.8','2','                                   Spesa GS per premi lotteria Cesto volante                                                                     ',29,'2007-12-05','N','corrado.baglioni','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(841,'34','2007-12-29','Contanti','0','78','2','                                                    Rimborso Giuliani Dicembre 2007',2,'2007-12-29','N','sergio.belli','2007');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(842,'63','2008-01-01','Ricevuta Bancaria','16925.91','0','3','Saldo iniziale conto corrente in data 31/12/2007.                                                            ',32,'2008-01-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(843,'63','2008-01-01','Contanti','1885.28','0','2','                                  Saldo iniziale cassa anno 2008                                                                      ',32,'2008-01-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(844,'183','2008-01-01','Contanti','6.2','0','2','Oblazione da cesto volante                                 ',18,'2008-01-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(845,'55','2008-01-01','Contanti','30','0','2','Contributo lezioni Moretti Eleonora Gen-Feb-Mar 2008                        ',20,'2008-01-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(846,'27','2008-01-01','Contanti','100','0','2','                       Contributo lezioni allievi Cascio Annalisa e Antonino       ott-nov-dic 2007 e gen-feb 2008                      ',20,'2008-01-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(847,'284','2008-02-01','Contanti','20','0','2','                         Contributo lezioni Granieri Antonio feb-mar 2008                           ',20,'2008-02-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(848,'29','2008-01-01','Contanti','63','0','2','    Contributo lezioni+strumento Aprile Mauro gen-feb-mar 2008                                                ',20,'2008-01-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(849,'29','2008-01-01','Contanti','63','0','2','    Contributo lezioni+strumento Aprile Mauro gen-feb-mar 2008                                                ',20,'2008-01-01','Y','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(850,'294','2008-03-01','Contanti','20','0','2','   Contributo lezioni Ferraris Marco  - mar-apr - 08                                                 ',20,'2008-03-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(851,'26','2008-03-01','Contanti','10','0','2','                                         contributo lezioni Pontini Andrea - mar 08           ',20,'2008-03-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(852,'296','2008-03-01','Contanti','21','0','2','   contributo lezioni + strumento cerutti alessandro mar 2008                                                 ',20,'2008-03-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(853,'58','2008-01-01','Contanti','50','0','2','   contributo lezioni schizzerotto gen-feb-mar-apr-mag 2008                                                 ',20,'2008-01-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(854,'308','2008-04-10','Contanti','0','1','2','Rimborso a Pasqualin Ornella su rimborso allievi                                                    ',1,'2008-04-10','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(855,'130','2008-01-01','Bonifico Bancario','0','18.45','3','                        Imposta di bollo su c/c  quarto trimestre 2007',15,'2008-01-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(856,'130','2008-01-01','Bonifico Bancario','0','36.04','3','       Competenze banca intesa quarto trimestre 2007                                             ',15,'2008-01-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(857,'130','2008-01-01','Bonifico Bancario','0','2','3','      Commissioni invio documenti qurto trimestre                                              ',15,'2008-01-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(858,'34','2008-02-10','Contanti','0','84.5','2','                                                                               rimborso spese maestri giuliani roberto - gen 08 -                          ',2,'2008-02-10','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(859,'34','2008-03-02','Contanti','0','84.5','2','                                     rimborso pese maestri giuliani roberto - feb 08               ',2,'2008-03-02','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(860,'34','2008-04-10','Contanti','0','58.5','2','                                          rimborso spese maestri giuliani roberto - mar 08

      ',2,'2008-04-10','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(861,'65','2008-03-18','Assegno Bancario','0','600','3','                              rimborso spese mestri platini fabrizio - gen  - feb 08 - assegno n. 3212063121-07                      ',2,'2008-03-18','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(862,'84','2008-03-18','Contanti','0','312','2','                                                                                rimborso spese maestri Gilberto Negri - gen  - feb 08                        ',2,'2008-03-18','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(863,'228','2008-03-04','Contanti','0','30','2','                                     spese per acquisto francobolli - Balama Federica               ',3,'2008-03-04','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(864,'2','2008-05-22','Contanti','20','0','2','                                                 Tesseramento 2008                                                       ',18,'2008-05-22','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(865,'3','2008-05-22','Contanti','20','0','2','                                              Tesseramento 2008                                                                                  ',18,'2008-05-22','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(866,'4','2008-05-22','Contanti','10','0','2','                                  Tesseramento 2008                                          ',18,'2008-05-22','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(867,'6','2008-05-22','Contanti','270','0','2','                               Servizio Piane di Serravalle 11/05/08 Priori oratorio S. Carlo                     ',22,'2008-05-11','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(868,'309','2008-05-22','Contanti','150','0','2','                                       Tesseramento componenti Coro anno 2008  15 componenti           ',18,'2008-03-07','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(869,'310','2008-05-22','Contanti','0','74','2','                               Prima fornitura distributore caffè Lavazza con consegna macchina e mobiletto                     ',38,'2008-04-30','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(870,'211','2008-05-22','Contanti','0','11.85','2','                                Colazione 1 maggio 2008                    ',13,'2008-04-30','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(871,'311','2008-05-22','Contanti','10','0','2','                                                         Tesseramento 2008                                               ',18,'2008-03-09','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(872,'312','2008-05-22','Contanti','10','0','2','                                Tesseramento 2008                    ',18,'2008-03-09','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(873,'13','2008-05-22','Contanti','20','0','2','                                               Tesseramento 2008     ',18,'2008-03-09','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(874,'12','2008-05-22','Contanti','20','0','2','                                       Tesseramento 2008                  ',18,'2008-03-09','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(875,'313','2008-05-22','Contanti','20','0','2','                                                           Tesseramento 2008                                                  ',18,'2008-03-09','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(876,'255','2008-01-02','Contanti','6','0','2','                                                                 Tesseramento 2007                                       ',18,'2008-01-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(877,'250','2008-01-02','Contanti','20','0','2','      Tesseramento 2007                                              ',18,'2008-01-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(878,'254','2008-01-02','Contanti','6','0','2','                                    Tesseramento 2007                ',18,'2008-01-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(879,'252','2008-01-02','Contanti','6','0','2','                       Tesseramento 2007                             ',18,'2008-01-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(880,'20','2008-03-07','Contanti','10','0','2',' Tesseramento 2008                                                    ',18,'2008-03-07','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(881,'314','2008-03-04','Contanti','8','0','2','                            Tesseramento 2008                                                             ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(882,'315','2008-03-04','Contanti','7','0','2','                                                   Tesseramento 2008  ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(883,'308','2008-03-04','Contanti','10','0','2','                                                     Tesseramento 2008',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(884,'11','2008-03-04','Contanti','10','0','2','     Tesseramento 2008                                                ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(885,'72','2008-03-04','Contanti','10','0','2','   Tesseramento 2008                                                  ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(886,'10','2008-03-04','Contanti','10','0','2','  Tesseramento 2008                                                   ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(887,'256','2008-03-04','Contanti','10','0','2','           Tesseramento 2008                                          ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(888,'256','2008-03-04','Contanti','40','0','2','               Oblazione 2008                                     ',41,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(889,'258','2008-03-04','Contanti','15','0','2','   Tesseramento 2008                                                  ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(890,'257','2008-03-04','Contanti','15','0','2','  Tesseramento 2008                                                   ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(891,'228','2008-03-04','Contanti','10','0','2','           Tesseramento 2008                                          ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(892,'316','2008-03-04','Contanti','10','0','2','                                        Tesseramento 2008                                                                 ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(893,'317','2008-03-04','Contanti','7','0','2','                                Tesseramento 2008                                                                         ',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(894,'17','2008-03-04','Contanti','10','0','2',' Tesseramento 2008',18,'2008-03-04','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(895,'318','2008-03-18','Contanti','140','0','2','Oblazione 2008 in memoria di Borelli Luciano',41,'2008-03-18','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(896,'307','2008-04-19','Contanti','0','2290','2','       Acquisto clarinetto Buffet Crampon RC                                             ',5,'2008-04-19','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(897,'307','2008-05-17','Contanti','0','180','2','                                  Riparazione Clarinetto Yamaha                                                                      ',36,'2008-05-17','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(898,'161','2008-05-17','Contanti','2470','0','2','                                                                                Donazione 2008 Pozzi Mauro per strumenti                        ',30,'2008-05-17','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(899,'229','2008-04-05','Contanti','10','0','2','                                           Contributo lezione mese Aprile 2008 Agazzini Linda                                                             ',20,'2008-04-05','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(900,'282','2008-04-05','Contanti','10','0','2','                                                    Contributo lezione mese Aprile 2008 Mingolla Paola                                         ',20,'2008-04-05','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(901,'279','2008-04-05','Contanti','84','0','2','                                                    Contributo lezione e strumento mesi di Gen/Feb/Mar/Aprile 2008 Tomalino Christian                                                 ',20,'2008-04-05','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(902,'295','2008-04-05','Contanti','10','0','2','Contributo lezione mese Marzo 2008 Millone Marianna                                                 ',20,'2008-04-05','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(903,'25','2008-04-05','Contanti','21','0','2','                 Contributo lezione e strumento Marzo 2008 Pagnoni Federico',20,'2008-04-05','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(904,'296','2008-05-05','Contanti','21','0','2','                             Contributo lezione e strumento mese Aprile 2008 Cerutti Alessandro                                                                        ',20,'2008-05-05','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(905,'25','2008-05-05','Contanti','21','0','2','                                                    Contributo lezione e strumento mese Aprile 2008 Pagnoni Federico',20,'2008-05-05','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(906,'293','2008-05-05','Contanti','50','0','2','         Contributo lezione mese Dic.2007/Gen/Feb/Mar/Aprile 2008 Borsoi Alberto                                                                                       ',20,'2008-05-05','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(907,'26','2008-05-31','Contanti','20','0','2','                    Contributo lezione mese Aprile e Maggio 2008 Pontini Andrea                                                                                ',20,'2008-05-31','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(908,'305','2008-04-21','Contanti','0','167.29','2','                            Cancelleria varia Mondoffice ft. 58/296125 del 21/04/08                                                             ',12,'2008-04-21','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(909,'112','2008-02-05','Contanti','270','0','2','Comitato carnevale di Valduggia servizio del 05/02/08              ',22,'2008-02-05','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(910,'243','2008-04-09','Contanti','0','43','2','                            Trony acquisto combustibile un fustino                                                      ',10,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(911,'86','2008-04-09','Contanti','0','55','2','                                                                                    Ricarica 50 €  Ezio + scheda Tino 5 € nuovo cell. 3485798625                                                                                             ',31,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(912,'229','2008-04-09','Contanti','10','0','2','Lezione marzo 2008 Agazzini Linda                                      ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(913,'282','2008-04-09','Contanti','10','0','2','   Lezione marzo 2008 Mingolla Paola                                                                  ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(914,'229','2008-04-09','Contanti','20','0','2','  Lezione gen/feb.  2008 Agazzini Linda                                                                   ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(915,'230','2008-04-09','Contanti','20','0','2','                        Lezione gen/feb.  2008 Agazzini Lorenzo                            ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(916,'282','2008-04-09','Contanti','20','0','2','      Lezione gen/feb.  2008 Mingolla Paola                                              ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(917,'26','2008-04-09','Contanti','20','0','2','  Lezione gen/feb.  2008 Pontini Andrea                                                  ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(918,'294','2008-04-09','Contanti','20','0','2','              Lezione gen/feb.  2008 Ferraris Marco                                      ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(919,'295','2008-04-09','Contanti','10','0','2','              Lezione febbraio  2008 Millone Marianna                                      ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(920,'296','2008-04-09','Contanti','21','0','2','       Lezione + strumento gennaio 2008                                              ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(921,'296','2008-04-09','Contanti','21','0','2','                      Lezione + strumento febbraio 2008                                                                    ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(922,'280','2008-04-09','Contanti','50','0','2','Lezione ott/nov/dic. 2007 gen/feb. 2008 Saragno Annalisa                                         ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(923,'287','2008-04-09','Contanti','77','0','2','Strumento nov/dic. 2007 gen/feb/mar/apr/mag. 2008                                                                   ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(924,'221','2008-04-09','Contanti','50','0','2','       Lezione ott/nov/dic. 2007 gen/feb. 2008   Rosaclerio Camilla                                                                                ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(925,'244','2008-04-09','Contanti','66','0','2','Strumento lug/ago/set/ott/nov/dic 2008   Carbone Nicolò                                                                          ',20,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(926,'270','2008-04-16','Assegno Bancario','798','0','3','Provincia di Novara "una provincia in cartolina" febbraio 2007',22,'2008-04-08','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(927,'319','2008-04-09','Contanti','7','0','2','                            Tesseramento Lovatto Bruno                                                                           ',18,'2008-04-09','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(928,'167','2008-03-07','Contanti','0','11.4','2','                            Rimborso spese 2006 Vogesi Antonio                                                                            ',27,'2008-03-07','Y','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(929,'164','2008-03-07','Contanti','0','48.3','2','Rimborso spese 2006 Turuani Egidio                                                    ',27,'2008-03-07','Y','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(930,'285','2008-01-19','Contanti','0','9.5','2','                 Acquisto album cartoline                                   ',12,'2008-01-19','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(931,'261','2008-03-07','Contanti','0','60','2','Contributo calendario Grignasco 2008                                                     ',3,'2008-03-07','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(932,'295','2008-03-07','Contanti','10','0','2',' Lezione gennaio 2008                                 Millone Marianna                   ',20,'2008-03-07','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(933,'65','2008-01-30','Assegno Bancario','0','600','3','Rimborso maestro Fabrizio Platini Nov/Dic. 2007 assegno n° 3205127650                                                                          ',2,'2008-01-30','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(934,'130','2008-03-31','Bonifico Bancario','0','20.7','3',' Competenze Inesa San Paolo 1° trim. 08                                                   ',15,'2008-03-31','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(935,'130','2008-03-31','Bonifico Bancario','0','3','3',' Commissioni invio estratto conto banca Intesa 1° trim 08                                                  ',15,'2008-03-31','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(936,'130','2008-03-31','Bonifico Bancario','0','18.45','3','Imposta di bollo su c/c 1° trim 08 Intesa San Paolo                                                     ',15,'2008-03-31','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(937,'83','2008-05-12','Bonifico Bancario','2500','0','3','Rimborso spese servizi 2007 Comune Grignasco                                                    ',19,'2008-05-12','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(938,'129','2008-04-10','Bonifico Bancario','0','81.87','3','Energia elettrica feb/mar. 08                                                     ',9,'2008-04-10','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(939,'228','2008-03-19','Contanti','0','3.85','2','          raccomandata a Prov.Novara x consuntivo 2007                                          ',3,'2008-03-19','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(940,'116','2008-01-29','Contanti','0','35','2','                   Rinnovo cassetta postale tipo piccolo x anno 2008                                 ',3,'2008-01-29','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(941,'116','2008-02-11','Contanti','0','19.27','2','            Racomandata e marca da bollo per Ministero dello spettacolo domanda contr. 2008                                        ',3,'2008-02-10','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(942,'183','2008-05-28','Contanti','0','50','2','                                      Ricarica nuova scheda 3485798625              ',31,'2008-05-28','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(943,'65','2008-05-14','Assegno Bancario','0','600','3','                       Rimborso bimestre marzo aprile 2008 Platini
assegno n 3212063122-08                          ',2,'2008-05-14','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(944,'84','2008-05-14','Contanti','0','377','2','                       Rimborso marzo/aprile 2008                             ',2,'2008-05-14','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(945,'34','2008-05-14','Contanti','0','117','2','               Rimborso spese aprile 2008                                     ',2,'2008-05-14','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(946,'194','2008-05-20','Contanti','0','292.5','2','                            Rimborso spese gennaio/20 maggio 2008                        ',2,'2008-05-20','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(947,'276','2008-05-01','Contanti','50','0','2','                            Oblazione ricevuta durante servizio "Sveglia" 01/05/08 da Cav. Mario Zanaroli                        ',41,'2008-05-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(948,'69','2008-02-15','Contanti','0','285.78','2','                  Tesseramento Anbima 2008                                  ',17,'2008-02-15','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(949,'144','2008-05-16','Contanti','0','30','2','                                Acquisto libretti Inni Nazionali per corni                    ',6,'2008-05-16','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(950,'272','2008-05-25','Contanti','300','0','2','                                   Servizio del 25/05/08 Alpini di Valbusaga                 ',22,'2008-05-25','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(951,'231','2008-02-07','Contanti','0','167','2','                     Abbonamento SIAE 2008                               ',8,'2008-03-07','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(952,'243','2008-03-07','Contanti','0','43','2','                          Aquisto tanica combustibile sede                           ',10,'2008-03-07','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(953,'320','2008-01-20','Contanti','240','0','2','                                                 Servizio Carnevale Sagliaschi 20/01/08                                                       ',22,'2008-01-20','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(954,'237','2008-01-27','Contanti','300','0','2','                              Rimborso spese servizio carnevale Piane Sesia                      ',22,'2008-01-27','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(955,'110','2008-02-03','Contanti','240','0','2','    Servizio di S. Agata Ara 2008                                                ',22,'2008-02-03','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(956,'193','2008-02-07','Contanti','200','0','2','    Oblazione di Bertaggia Ruggero in memoria del papà Idillio                                                ',41,'2008-02-07','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(957,'228','2008-02-07','Contanti','27','0','2','                  Tesseramento Federica Balma, Massimo Perazzi, Gianpiera Perazzi                                  ',18,'2008-02-07','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(958,'243','2008-02-15','Contanti','0','43','2','   Acquisto tanica combustibile stufa sede                                                 ',10,'2008-02-15','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(959,'266','2008-01-04','Contanti','0','3.6','2','                                  Copia chiavi per sede                                                                      ',38,'2008-01-04','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(960,'260','2008-01-19','Contanti','0','7.5','2','    Fogli per copertine di plastica                                                ',12,'2008-01-19','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(961,'115','2008-03-20','Contanti','0','1','2','  Cartelletta                                                  ',12,'2008-03-20','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(962,'321','2008-03-20','Contanti','0','3.6','2','   Buste a L                                                 ',12,'2008-03-20','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(963,'16','2008-03-12','Contanti','10','0','2','    Tesseramento 2008                                                ',18,'2008-03-12','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(964,'322','2008-03-12','Contanti','10','0','2','      Tesseramento 2008                                              ',18,'2008-03-12','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(965,'129','2008-06-10','Bonifico Bancario','0','43.1','3','     Bolletta per il periodo aprile - maggio 2008                                               ',9,'2008-05-21','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(966,'236','2008-05-31','Contanti','0','25','2','     Rimborso spese servizio 25 aprile e 2 giugno Novara                                               ',27,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(967,'264','2008-06-01','Contanti','0','625','2','   Rimborsi musici esterni concerto 01/06/08
Pavan €25, raffaella €25,Alessandra €25, Paola €25,Poli P. €45, Poli S. €35, Vaudano €25, Rondi €25, Andrea corno €70, Giletti e consorte €90, Canella €30, Cucchi €70, Domenico €25, Calligaris €25, Francesca €50.                                                 ',27,'2008-06-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(968,'34','2008-05-31','Contanti','0','78','2','        Rimborso scuola alievi maggio 2008                                            ',2,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(969,'36','2008-05-31','Contanti','10','0','2','          Tesseramento socio sostenitore 2008 - Baglioni                                            ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(970,'37','2008-05-31','Contanti','7','0','2','              Tesseramento socio sostenitore 2008 - Baglioni                                                                                  ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(971,'41','2008-05-31','Contanti','10','0','2','          Tesseramento socio sostenitore 2008 - Baglioni                                                                                      ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(972,'43','2008-05-31','Contanti','10','0','2','                  Tesseramento socio sostenitore 2008 - Baglioni                                                                              ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(973,'44','2008-05-31','Contanti','10','0','2','                 Tesseramento socio sostenitore 2008 - Baglioni                                                                               ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(974,'45','2008-05-31','Contanti','20','0','2','                   Tesseramento socio sostenitore 2008 - Baglioni                                                                             ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(975,'46','2008-05-31','Contanti','10','0','2','                                    Tesseramento socio sostenitore 2008 - Baglioni                                                            ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(976,'47','2008-05-31','Contanti','7','0','2','            Tesseramento socio sostenitore 2008 - Baglioni                                                                                    ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(977,'48','2008-05-31','Contanti','10','0','2','                               Tesseramento socio sostenitore 2008 - Baglioni                                                                 ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(978,'49','2008-05-31','Contanti','10','0','2','                               Tesseramento socio sostenitore 2008 - Baglioni                                                                 ',18,'2008-05-30','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(979,'50','2008-05-31','Contanti','10','0','2','                                         Tesseramento socio sostenitore 2008 - Baglioni                                                       ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(980,'52','2008-05-31','Contanti','20','0','2','                          Tesseramento socio sostenitore 2008 - Baglioni                                                                      ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(981,'53','2008-05-31','Contanti','10','0','2','                                    Tesseramento socio sostenitore 2008 - Baglioni                                                            ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(982,'286','2008-05-31','Contanti','10','0','2','                                                   Tesseramento socio sostenitore 2008 - Baglioni                                             ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(983,'54','2008-05-31','Contanti','10','0','2','                               Tesseramento socio sostenitore 2008 - Baglioni                                                                 ',18,'2008-05-31','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(984,'323','2008-05-31','Contanti','10','0','2','                                         Tesseramento socio sostenitore 2008 - Baglioni                                                                                                           ',18,'2008-05-30','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(985,'212','2008-06-01','Contanti','0','45','2','                               n° 3 teglie di pizza per rinfresco concerto                                                                         ',13,'2008-06-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(986,'211','2008-06-01','Contanti','0','26.68','2','     Vino, coca cola e ptatine per rinfresco concerto                                               ',13,'2008-06-01','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(987,'78','2008-06-02','Contanti','25','0','2','       Rimborso spese concerto lasciata come oblazione per scuola allievi                                             ',41,'2008-06-02','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(988,'89','2008-06-02','Contanti','25','0','2','    Rimborso spese concerto lasciata come oblazione per scuola allievi                                                  ',41,'2008-06-02','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(989,'59','2008-06-02','Contanti','200','0','2','     Rimborso spese Servizio per la Commemorazione della "Battaglia del Cimitero"                                               ',22,'2008-06-02','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(990,'264','2008-06-06','Contanti','0','145','2','     Rimborso spese musici esterni Servizio di Vercelli del 06/06/2008
Poli Stefano e Paolo 40 €
Farassino Gippo 30 €
Cannella Egidio 35 €
Corno Andrea 40 €
                                               ',27,'2008-06-06','N','corrado.baglioni','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(991,'274','2008-07-02','Contanti','10','0','2','                                                  Tesseramento socio sostenitore 2008 - Sede',18,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(992,'21','2008-07-02','Contanti','10','0','2','                                Tesseramento socio sostenitore 2008 - Dal Fovo',18,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(993,'19','2008-07-02','Contanti','7','0','2','Tesseramento socio ordinario 2008 - Dal Fovo                                       ',18,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(994,'253','2008-07-02','Contanti','10','0','2','Tesseramento socio sostenitore 2008 - Dal Fovo                                                      ',18,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(995,'262','2008-07-02','Contanti','10','0','2','      Tesseramento socio sostenitore 2008 - Dal Fovo                                                  ',18,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(996,'38','2008-07-02','Contanti','10','0','2','Tesseramento socio sostenitore 2008 - Dal Fovo                                      ',18,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(997,'324','2008-07-02','Contanti','50','0','2','                            Tesseramento socio sostenitore 2008 - Dal Fovo                                                                          ',18,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(998,'204','2008-07-02','Contanti','240','0','2','Gruppo Alpini Grignasco - servizio del 15/O6/2008                                                    ',22,'2008-06-15','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(999,'72','2008-07-02','Contanti','0','3.8','2','  Raccomandata a Ministero dello Spettacolo x consuntivo 2007                                                  ',3,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1000,'325','2008-07-02','Contanti','0','38','2','                              Acquisto tende per sede Scampoli Saglietti                                                                          ',38,'2008-05-31','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1001,'267','2008-07-02','Contanti','0','35.45','2',' Acquisto bacchette per tende CIPIR                                                 ',38,'2008-05-31','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1002,'115','2008-07-02','Contanti','0','14.5','2',' Acquisto carta A3-A4 da Claudia                                                   ',12,'2008-06-18','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1003,'221','2008-07-02','Contanti','30','0','2','Lezione marzo/aprile/maggio 2008 Rosaclerio Camilla                                                                         ',20,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1004,'229','2008-07-02','Contanti','10','0','2','Lezione maggio 2008 Agazzini Lin da                                                   ',20,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1005,'282','2008-07-02','Contanti','10','0','2','Lezione maggio 2008  Mingolla Paola                                              ',20,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1006,'55','2008-07-02','Contanti','20','0','2',' Lezione aprile/maggio 2008  Moretti Eleonora                                                 ',20,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1007,'203','2008-07-02','Contanti','80','0','2','Lezione ottobre/nov./dic./gen./feb./marzo/aprile/maggio 2008  Massarotti Francesca                                                  ',20,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1008,'296','2008-07-02','Contanti','21','0','2','Lezione + strumento maggio 2008 Cerutti Alessandro                                               ',20,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1009,'29','2008-07-02','Contanti','63','0','2',' Lezione + strumento  aprile/maggio/giugno 2008                                                  ',20,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1010,'284','2008-07-02','Contanti','30','0','2','  Lezione aprile/maggio/giugno 2008 Granieri Antonio                                                ',20,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1011,'282','2008-07-02','Contanti','10','0','2','Lezione giugno 2008 Mingolla Paola                                                    ',20,'2008-07-02','N','marica.regis','2008');
REPLACE INTO "sd_movimenti" ("ID_Movimento", "ID_Soggetto", "Data_Valuta", "Tipo_Pagamento", "Entrate", "Uscite", "ID_Banca", "Descrizione", "Id_Voce_Bilancio", "Data_Competenza", "Deleted", "ID_Admin", "Anno_Bilancio") VALUES
	(1012,'229','2008-07-02','Contanti','10','0','2',' Lezione giugno 2008 Agazzini Linda                                                   ',20,'2008-07-02','N','marica.regis','2008');
/*!40000 ALTER TABLE "sd_movimenti" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_note_credito'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_note_credito" (
  "ID_Nota" int(10) NOT NULL auto_increment,
  "Prog_Nota_Annuo" int(10) NOT NULL default '0',
  "ID_Fattura" int(10) default NULL,
  "ID_Cliente" int(10) NOT NULL default '0',
  "Ragione_Sociale" varchar(200) NOT NULL default '',
  "PI" varchar(16) NOT NULL default '',
  "Indirizzo" varchar(100) NOT NULL default '',
  "Citta" varchar(50) NOT NULL default '',
  "CAP" varchar(5) NOT NULL default '',
  "Provincia" char(2) NOT NULL default '',
  "ID_Banca" varchar(10) NOT NULL default '',
  "ID_Pagamento" varchar(30) NOT NULL default '',
  "Data_Nota" date NOT NULL default '0000-00-00',
  "Descrizione" text NOT NULL,
  "Iva" int(2) NOT NULL default '0',
  "Totale" decimal(10,2) NOT NULL default '0.00',
  "Tipo_Pagamento" varchar(20) NOT NULL default '',
  "Note" text NOT NULL,
  PRIMARY KEY  ("ID_Nota")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_note_credito'
#

# (No data found.)



#
# Table structure for table 'sd_note_credito_fornitori'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_note_credito_fornitori" (
  "ID_Nota" int(10) NOT NULL auto_increment,
  "N_Nota" varchar(10) NOT NULL default '0',
  "ID_Fattura_Acquisto" int(10) default NULL,
  "ID_Fornitore" int(10) NOT NULL default '0',
  "Ragione_Sociale" varchar(200) NOT NULL default '',
  "PI" varchar(16) NOT NULL default '',
  "Indirizzo" varchar(100) NOT NULL default '',
  "Citta" varchar(50) NOT NULL default '',
  "CAP" varchar(5) NOT NULL default '',
  "Provincia" char(2) NOT NULL default '',
  "ID_Pagamento" varchar(30) NOT NULL default '',
  "Data_Nota" date NOT NULL default '0000-00-00',
  "Descrizione" text NOT NULL,
  "Imposta" decimal(10,2) NOT NULL default '0.00',
  "Totale" decimal(10,2) NOT NULL default '0.00',
  "Tipo_Pagamento" varchar(20) NOT NULL default '',
  "Note" text NOT NULL,
  PRIMARY KEY  ("ID_Nota")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_note_credito_fornitori'
#

# (No data found.)



#
# Table structure for table 'sd_ordini'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_ordini" (
  "ID_Cliente" int(8) NOT NULL default '0',
  "ID_Ordine" int(12) NOT NULL auto_increment,
  "Protocollo" varchar(30) NOT NULL default '',
  "Oggetto" varchar(100) NOT NULL default '',
  "ID_Fattura" int(10) NOT NULL default '0',
  "ID_Articolo" int(10) NOT NULL default '0',
  "Prezzo" decimal(10,2) NOT NULL default '0.00',
  "Quantita" int(4) NOT NULL default '0',
  "Iva" int(2) NOT NULL default '0',
  "ID_Pagamento" varchar(30) NOT NULL default '',
  "Tipo_Pagamento" varchar(30) NOT NULL default '',
  "Data_Ordine" date NOT NULL default '0000-00-00',
  "Data_Evasione" date NOT NULL default '0000-00-00',
  "Data_Scadenza" date NOT NULL default '0000-00-00',
  "Ragione_Sociale" varchar(100) NOT NULL default '',
  "PI" varchar(16) NOT NULL default '',
  "CF" varchar(16) NOT NULL default '',
  "Cognome" varchar(100) NOT NULL default '',
  "Nome" varchar(100) NOT NULL default '',
  "Indirizzo" varchar(100) NOT NULL default '',
  "Civico" varchar(12) NOT NULL default '',
  "Citta" varchar(100) NOT NULL default '',
  "CAP" varchar(6) NOT NULL default '',
  "Provincia" char(2) NOT NULL default '',
  "Stato" varchar(150) NOT NULL default '',
  "Telefono" varchar(20) NOT NULL default '',
  "Fax" varchar(20) NOT NULL default '',
  "E_mail" varchar(100) NOT NULL default '',
  "Status" varchar(30) NOT NULL default '',
  PRIMARY KEY  ("ID_Ordine")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_ordini'
#

# (No data found.)



#
# Table structure for table 'sd_scadenzario'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_scadenzario" (
  "ID_Scadenza" int(12) NOT NULL auto_increment,
  "ID_Fattura_Acquisto" varchar(12) NOT NULL default '0',
  "ID_Fattura_Vendita" varchar(12) NOT NULL default '',
  "Ragione_Sociale" varchar(100) NOT NULL default '',
  "Scadenza" date NOT NULL default '0000-00-00',
  "ID_Banca" varchar(12) NOT NULL default '',
  "Entrate" decimal(8,2) NOT NULL default '0.00',
  "Uscite" decimal(8,2) NOT NULL default '0.00',
  "Tipo_Pagamento" varchar(50) NOT NULL default '',
  "ID_Cliente" varchar(12) NOT NULL default '',
  "ID_Fornitore" varchar(12) NOT NULL default '',
  "ID_Nota_Fornitore" varchar(12) NOT NULL default '',
  "ID_Nota_Cliente" varchar(12) NOT NULL default '',
  "ID_Movimento" varchar(12) NOT NULL default '',
  PRIMARY KEY  ("ID_Scadenza"),
  FULLTEXT KEY "ID_Banca" ("ID_Banca")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_scadenzario'
#

LOCK TABLES "sd_scadenzario" WRITE;
/*!40000 ALTER TABLE "sd_scadenzario" DISABLE KEYS;*/
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(5,'0','','','2006-05-22','','430','0','Contanti','','2','','','3');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(6,'0','','','2006-05-22','','240','0','Contanti','','4','','','4');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(7,'0','','','2006-05-22','','253.5','0','Contanti','','3','','','5');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(8,'0','','','2006-05-22','','202.47','0','Contanti','','5','','','6');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(9,'0','','','2006-03-16','','13.5','0','Contanti','','10','','','7');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(10,'0','','','2006-05-11','','0','12','Contanti','2','','','','8');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(11,'0','','','2006-05-11','','0','12','Contanti','3','','','','9');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(12,'0','','','2006-05-11','','0','6','Contanti','4','','','','10');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(13,'0','','','2006-05-17','','0','500','Contanti','5','','','','11');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(14,'0','','','2006-05-14','','0','270','Contanti','6','','','','12');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(15,'0','','','2006-02-28','','0','500','Assegno Bancario','7','','','','13');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(16,'0','','','2006-05-22','','0','70','Contanti','8','','','','14');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(17,'0','','','2006-05-22','','0','20','Contanti','9','','','','15');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(18,'0','','','2006-05-22','','0','12','Contanti','10','','','','16');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(19,'0','','','2006-05-22','','0','12','Contanti','11','','','','17');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(20,'0','','','2006-04-24','','0','20','Contanti','12','','','','18');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(21,'0','','','2006-04-24','','0','10','Contanti','13','','','','19');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(22,'0','','','2006-04-24','','0','6','Contanti','14','','','','20');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(23,'0','','','2006-04-24','','0','10','Contanti','15','','','','21');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(24,'0','','','2006-05-01','','0','10','Contanti','16','','','','22');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(25,'0','','','2006-05-22','','0','6','Contanti','17','','','','23');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(26,'0','','','2006-05-22','','0','6','Contanti','18','','','','24');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(27,'0','','','2006-05-22','','0','6','Contanti','19','','','','25');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(28,'0','','','2006-05-26','','0','10','Contanti','20','','','','26');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(29,'0','','','2006-05-26','','0','20','Contanti','21','','','','27');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(30,'0','','','2006-03-31','','0','10','Contanti','22','','','','28');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(31,'0','','','2006-03-31','','0','20','Contanti','23','','','','29');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(32,'0','','','2006-04-30','','0','20','Contanti','24','','','','30');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(33,'0','','','2006-03-31','','0','20','Contanti','25','','','','31');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(34,'0','','','2006-03-31','','0','22','Contanti','25','','','','32');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(35,'0','','','2006-02-28','','0','10','Contanti','26','','','','33');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(36,'0','','','2006-02-28','','0','80','Contanti','27','','','','34');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(37,'0','','','2006-03-31','','0','10','Contanti','28','','','','35');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(38,'0','','','2006-03-31','','0','11','Contanti','28','','','','36');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(39,'0','','','2006-03-31','','0','20','Contanti','29','','','','37');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(40,'0','','','2006-03-31','','0','22','Contanti','29','','','','38');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(41,'0','','','2006-05-22','','0','39','Contanti','30','','','','39');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(42,'0','','','2006-05-22','','0','13','Contanti','31','','','','40');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(43,'0','','','2006-05-22','','0','16','Contanti','32','','','','41');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(44,'0','','','2006-05-22','','0','32','Contanti','33','','','','42');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(45,'0','','','2006-05-26','','0','12.92','Contanti','34','','','','43');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(46,'0','','','2006-05-26','','0','26','Contanti','34','','','','44');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(47,'0','','','2006-05-26','','0','6','Contanti','35','','','','45');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(48,'0','','','2006-05-26','','0','10','Contanti','36','','','','46');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(49,'0','','','2006-05-26','','0','6','Contanti','37','','','','47');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(50,'0','','','2006-05-26','','0','6','Contanti','38','','','','48');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(51,'0','','','2006-05-26','','0','10','Contanti','39','','','','49');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(52,'0','','','2006-05-26','','0','10','Contanti','40','','','','50');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(53,'0','','','2006-05-26','','0','10','Contanti','41','','','','51');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(54,'0','','','2006-05-26','','0','10','Contanti','42','','','','52');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(55,'0','','','2006-05-26','','0','10','Contanti','43','','','','53');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(56,'0','','','2006-05-26','','0','15','Contanti','44','','','','54');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(57,'0','','','2006-05-26','','0','10','Contanti','45','','','','55');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(58,'0','','','2006-05-26','','0','6','Contanti','46','','','','56');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(59,'0','','','2006-05-26','','0','6','Contanti','47','','','','57');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(60,'0','','','2006-05-26','','0','10','Contanti','48','','','','58');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(61,'0','','','2006-05-26','','0','10','Contanti','49','','','','59');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(62,'0','','','2006-05-26','','0','10','Contanti','50','','','','60');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(63,'0','','','2006-05-26','','0','10','Contanti','51','','','','61');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(64,'0','','','2006-05-26','','0','10','Contanti','52','','','','62');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(65,'0','','','2006-05-26','','0','10','Contanti','53','','','','63');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(66,'0','','','2006-05-26','','0','10','Contanti','54','','','','64');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(67,'0','','','2006-05-30','','0','10','Contanti','22','','','','65');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(68,'0','','','2006-05-30','','0','20','Contanti','23','','','','66');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(69,'0','','','2006-05-30','','0','20','Contanti','55','','','','67');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(70,'0','','','2006-05-30','','0','20','Contanti','56','','','','68');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(71,'0','','','2006-05-30','','0','10','Contanti','57','','','','69');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(72,'0','','','2006-05-30','','0','21','Contanti','28','','','','70');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(73,'0','','','2006-05-30','','0','40','Contanti','58','','','','71');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(74,'0','','','2006-05-29','','0','240','Contanti','59','','','','72');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(75,'0','','','2006-05-30','','0','5','Contanti','60','','','','73');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(76,'0','','','2006-05-27','','0','1050','Contanti','61','','','','74');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(77,'0','','','2006-05-30','','0','350','Assegno Bancario','62','','','','75');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(78,'0','','','2006-01-01','','0','753.73','Contanti','63','','','','76');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(79,'0','','','2006-06-03','','20','0','Contanti','','7','','','77');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(80,'0','','','2006-06-01','','8.6','0','Contanti','','10','','','78');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(81,'0','','','2006-06-03','','48','0','Contanti','','11','','','79');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(82,'0','','','2006-06-03','','22.61','0','Contanti','','10','','','80');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(83,'0','','','2006-06-03','','50','0','Contanti','','10','','','81');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(84,'0','','','2006-10-03','','1','0','Contanti','','5','','','88');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(85,'0','','','2006-10-03','','0','2','Contanti','35','','','','89');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(86,'0','','','2006-10-03','','0','111','Contanti','36','','','','90');
REPLACE INTO "sd_scadenzario" ("ID_Scadenza", "ID_Fattura_Acquisto", "ID_Fattura_Vendita", "Ragione_Sociale", "Scadenza", "ID_Banca", "Entrate", "Uscite", "Tipo_Pagamento", "ID_Cliente", "ID_Fornitore", "ID_Nota_Fornitore", "ID_Nota_Cliente", "ID_Movimento") VALUES
	(87,'0','','','2006-10-01','','200','0','Bonifico Bancario','','2','','','91');
/*!40000 ALTER TABLE "sd_scadenzario" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_soggetti'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_soggetti" (
  "ID_Soggetto" int(12) NOT NULL auto_increment,
  "Ragione_Sociale" varchar(100) default NULL,
  "Cognome" varchar(100) NOT NULL default '',
  "Nome" varchar(30) NOT NULL default '',
  "PI" varchar(12) default NULL,
  "CF" varchar(16) default NULL,
  "Descrizione" varchar(100) default NULL,
  "Tipo" varchar(20) default NULL,
  "Indirizzo" varchar(60) default NULL,
  "Citta" varchar(60) default NULL,
  "CAP" varchar(5) default NULL,
  "Provincia" varchar(4) default NULL,
  "Telefono" varchar(20) default NULL,
  "Telefono2" varchar(20) default NULL,
  "Telefono3" varchar(20) default NULL,
  "Fax" varchar(20) default NULL,
  "Cell" varchar(20) default NULL,
  "E_mail" varchar(100) default NULL,
  "Password" varchar(8) default NULL,
  "Web" varchar(50) default NULL,
  "Deleted" char(1) NOT NULL default 'N',
  "Privacy" char(1) NOT NULL default 'Y',
  PRIMARY KEY  ("ID_Soggetto")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_soggetti'
#

LOCK TABLES "sd_soggetti" WRITE;
/*!40000 ALTER TABLE "sd_soggetti" DISABLE KEYS;*/
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(2,'','Contardi','Giuseppe',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(3,'','Contardi','Marisa',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(4,'','Cacciami','Maria Teresa',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(5,'Comune Gattinara','.','.','','','','','','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(6,'Piane di Serravalle Sesia','.','.',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(7,'Comitato Carnevale Grignasco','.','.',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(8,'Club Patacioi Ara','.','.',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(9,'Famiglia','Perazzi','.','','','','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(10,'','Pozzi','Vanni','','','','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(11,'Famiglia','Da Paré','Augusto','','','','','','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(12,'','Vinzio','Claudia',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(13,'','Vinzio','Vittorino',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(14,' Rag.','Vinzio','Laura',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(15,'','Festa Bianchet','Gianfranca',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(16,'','Borelli','Michele',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(17,'','Franchi','Carlo',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(18,'','Ventura','Alfredo','','','','','','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(19,'','Fontaneto','Marcello',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(20,'','Frascotti','Giuliano',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(21,'','Vinzio','Ermanno',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(22,'','Di Lernia','Giuseppe',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(23,'Famiglia','Agazzini','Linda e Lorenzo','','','','','','','','','0322/870163','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(24,'','Pozzi','Carlo',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(25,'','Pagnoni','Federico',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(26,'','Pontini','Andrea',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(27,'','Cascio','Antonino+Annalisa',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(28,'','Squaratti','Paolo',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(29,'','Aprile','Mauro',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(30,'','Belli','Sergio','','BLLSRG81L18L669O','','','Via Risorgimento 1','Grignasco','28075','NO','0163417009','','','','3397787291','sergio.belli@email.it','','http://www.sergiobelli.eu','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(31,'','Mischiatti','Dino',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(32,'','Pezzolato','Luca',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(33,'','Ritorno','Cassa',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(34,'','Giuliani','Roberto',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(35,'','Aleppo','Athos',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(36,'','Baglioni','Angelo',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(37,'','Balzarini','Ernesto',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(38,'','Borgato','Giuliano',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(39,'','Canobio','Giuseppe',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(40,'','Del Villani','Luigi',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(41,'','Franzosi','Luciano',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(42,'','Giordani','Elio',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(43,'','Gobbi','Angelo',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(44,'','Molli','Luigi',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(45,'','Negri','Renato',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(46,'','Nobile','Piera',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(47,'','Rabaglio','Giovanni',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(48,'','Stefani','Davide',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(49,'','Teraroli','Gianni',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(50,'','Valsesia','Valentino',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(51,'','Vinzio','Fernando',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(52,'','Mora','Gaudenzio',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(53,'','Mora','Flora',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(54,'','Martinetti','Ugo',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(55,'','Moretti','Eleonora',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(56,'','Mancin','Gabriele',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(57,'','Magistrini','Giacomo',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(58,'','Schizzerotto','Leonardo','','','','','','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(59,'Anpi Sezione Grignasco','.','.',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(60,NULL,'Velatta','Laura',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(61,'Priori Festa Patronale Rovasenda','.','.',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(62,'ProLoco Rovasenda','.','.',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(63,'Saldo Cassa Iniziale','.','.',NULL,NULL,'','','','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(65,NULL,'Platini','Fabrizio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(66,NULL,'Borelli','Ezio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(67,NULL,'De Angelis','Roberto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(68,NULL,'Giuliani','Roberto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(69,'Anbima','.','.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(71,NULL,'Barlassina','Patrizia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(72,'','Regis','Marica','','',NULL,NULL,'','','','','0163418877','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(73,'test','test','test','test','test',NULL,NULL,'test','test','test','te','test','test','test','test','test','test','test1111','test','Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(74,'a','a','a','','',NULL,NULL,'','','','','','','','','','','','','Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(75,'c','c','c','','',NULL,NULL,'','','','','','','','','','','','','Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(76,'','Geroso','Simone','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(77,'','Quarna','Claudio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(78,'','Calligaris','Franco','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(79,'Flauto Romagnano','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(80,'','Poli','Stefano','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(81,'','Giustina','Vanda','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(82,'Parrocchia Zuccaro','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(83,'Comune Grignasco','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(84,'','Negri','Gilberto','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(85,'Essegi Ufficio SRL','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(86,'Comunicare 2000','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(87,'','Mosca','Francesca','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(88,'','Grigolon','Alessandro','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(89,'','Granieri','Domenico','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(90,'','.','Sandra','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(91,'Gippo','Farassino','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(92,'nipote','Farassino','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(93,'Trombone','.','Roberto','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(94,'','Capone','Marcello','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(95,'Clarinetto basso','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(96,'','Sogno','Paola','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(97,'','.','Cosimo','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(98,'','Bussolino','Wilmo','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(99,'','Bertolino','Michele','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(100,'','Pavan','Chiara','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(101,'','Canella','Egidio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(102,'Carinetto invorio','Besuzzi','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(103,'undefined','undefined','undefined','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(104,'Comune Pray','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(105,'addas','.','.','ddfdfdf','',NULL,NULL,'','','','','','','','','','','','','Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(106,'','Negri','Rosanna','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(107,'','Lana','Bruno','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(108,'','Navazza','Giovanni','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(109,'','Nobile','Milena','','',NULL,NULL,'Via Bernardo Vittone 21','Grignasco','28075','NO','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(110,'Priori Sant''Agata','.','.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(111,'Comitato Carnevale Zuccaro','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(112,'Comitato Carnevale Valduggia','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(113,'Comitato Carnevale Lebbia','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(114,'x rag soc','xx cognome','xxx nome','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(115,'Isola che non c''è','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(116,'Posta Grignasco','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(117,'','De Paolis','Alessandra','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(118,'','Rondi','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(119,'Clarinetto Graglia','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(120,'','Vaudano','Andrea','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(121,'','Erbetta','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(122,'','Poli','Paolo','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(123,'','Canclini','Mauro','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(124,'','Giletti','Pier Angelo','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(125,'Ghemme','.','Alessio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(126,'Flauto Romagnano','.','.','','',NULL,NULL,'','','','','','','','','','','','','Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(127,'','.','Mattia','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(128,'','Velatta','Laura','','',NULL,NULL,'','','','','','','','','','','','','Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(129,'Enel','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(130,'Banca Intesa','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(131,'Comune Prato Sesia','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(132,'Comune Novara','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(133,'Pippo','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(134,'Dedalo Soc. Coop','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(135,'Parrocchia di valpiana','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(136,'Parrocchia di Grignasco','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(137,'Priori SanRocco','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(138,'Priori di Bovagliano','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(139,'','Lanfranchini','Benito','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(140,'La bottega della musica','.','.','00553350034','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(141,'Tabaccheria del Peso','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(142,'Reale Mutua Assicuarazioni','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(143,'Edizioni Musicali Wicky','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(144,'Scomegna Edizioni Musicali','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(145,'.','.','Alessio','','',NULL,NULL,'','','','','','','','','','','','','Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(146,'.','Pavan','Chiara','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(147,'','De Paoli','Alessandra','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(148,'.','Rondi','.','','',NULL,NULL,'','','','','','','','','','','','','Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(149,'','Martinetti','Claudio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(150,'Romagnano','.','Gessica','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(151,'','Vergerio','Donatella','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(152,'Flautina Romagnano','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(153,'','Cabassa','Diego','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(154,'','Abbate','Claudio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(155,'','De Angelis','Martino','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(156,'','Ferrara','Elena','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(157,'','Ferrara','Floran','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(158,'','Ferro','Andrea','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(159,'Coggiola','.','Piero','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(160,'','Porzio','Vittorio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(161,'','Pozzi','Mauro','','PZZMRA87M05B019W',NULL,NULL,'Via G. Pastore, 4','Grignasco','28075','NO','0163418877','','','','3291119286','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(162,'','Stefani','Monica','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(163,'','Trapella','Bruno','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(164,'','Turuani','Egidio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(165,'','Bonfiglio','Giacomo','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(166,'','Giglio','Pasquale','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(167,'','Vogesi','Antonio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(168,'','Ferrara','Gianni','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(169,'','Gallino','Antonio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(170,'','Ren','Sergio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(171,'','Ronco','Renzo','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(172,'','Tosetti','Enrico','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(173,'','Cascio','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(174,NULL,'Baron','Andrea',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(175,NULL,'Bino','Italo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(176,NULL,'Bressan','Luca',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(177,NULL,'Giglio','Nicola',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(178,NULL,'Rognoni','Umberto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(179,NULL,'Vistali','Mario',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(180,'Coggiola','Cecchini','.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(181,NULL,'Allorio','Bruno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(182,NULL,'Bagarotti','Francesco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(183,NULL,'Baglioni','Corrado',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(184,NULL,'Da Paré','Paolo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(185,NULL,'Fornaro','Michele',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(186,'Masserano Trombone','.','Agostino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(187,NULL,'Baglioni','Davide',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(188,NULL,'Perotto','Eraldo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(189,NULL,'Giraldi','Gianni',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(190,NULL,'Testori','Giuseppe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(191,NULL,'Zanellato','Francesco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(192,NULL,'Azzalin','Antonio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(193,NULL,'Bertaggia','Ruggero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(194,NULL,'Bertolini','Enrico',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(195,NULL,'Bertolini','Franco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(196,NULL,'Contardi','Marco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(197,NULL,'Farinone','.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(198,NULL,'Silvestri','Riccardo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(199,NULL,'Zanolo','Gianni',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(200,'Romagnano Cassa','.','.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(201,'Romagnano Tromba','.','.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(202,'','Balzano','Massimiliano','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(203,'','Massarotti','Francesca','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(204,'Gruppo Alpini Grignasco','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(205,'Casa del Bimbo','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(206,'Panetteria Dal Busco','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(207,'Bennet Romagnano','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(208,'Sottoscrizioni a premi e dolci note','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(209,'Casa Galloni','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(210,'Offerte ricevute durante servizi e concerti','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(211,'Ipercoop Borgosesia','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(212,'Peccati di Gola','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(213,'Peccati di Gola','.','.','','',NULL,NULL,'','','','','','','','','','','','','Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(214,'Supermercato A&O Grignasco','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(215,'','Facciotti','Piero','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(216,'Punto SMA','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(217,'Associazione volontari italiani sangue Comune di Grignasco','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(218,'','Tassan','Ernesto','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(219,'Nuova Gastronomia','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(220,'','Vaccaro','Vito','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(221,'','Rosaclerio','Camilla','','',NULL,NULL,'','','','','','','','','','nata Borgomanero il 24/08/2000','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(222,'','Mingolla','Paola','','',NULL,NULL,'','','','','','','','','','','','','Y','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(223,'Musici di Confienza','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(224,'a','a','a','','',NULL,NULL,'','','','','','','','','','','','','Y','N');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(225,'b','b','b','b','b',NULL,NULL,'b','b','b','b','b','b','b','b','b','b','bbbbbbbb','b','Y','N');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(226,NULL,'Vinzio','Claudia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(227,'','Bagarotti','Francesco','','',NULL,NULL,'','','','','','','','','','','','','Y','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(228,'','Balma Perazzi','Federica','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(229,'','Agazzini','Linda','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(230,'','Agazzini','Lorenzo','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(231,'SIAE','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(232,'','Dal Fovo','Antonio','','',NULL,NULL,'','','','','','','','','','','','','N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(233,'','bla','bla','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(234,'','Vinzio','Maurilia','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(235,'Centro Studi Grignasco','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(236,'Basso Gattinara','.','Riccardo','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(237,'Comitato Carnevale Piane di Serravalle Sesia','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(238,'Srl','Daminelli','Pietro','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(239,'Soci partecipanti all''evento','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(240,'Orchestra Sinfonica "Giuseppe Verdi" Milano','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(241,'Baranzelli Natur','.','.','00434360038','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(242,'','Giletti','Michelangelo','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(243,'Trony Quarona Sesia','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(244,'','Carbone','Nicolò','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(245,'La Bottega del Mondo','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(246,'','Covini','Daria','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(247,'','Bertolini','Renzo','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(248,'','Molli','Marinella','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(249,'','Negri','Luciana','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(250,'','Monti','Rosina','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(251,'','Arvotti','Luciana','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(252,'','Bondesan','Giuseppe','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(253,'','Roggero','Gianfranco','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(254,'','Sagliaschi','Wilma','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(255,'','Arienta','Maria Rosa','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(256,'','Canobio','Angioletta','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(257,'','Donetti Ferraris','Maris','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(258,'','Donetti','Roberto','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(259,'Disco d''Oro','.','.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(260,'Tecno Ufficio','.','.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(261,'ProLoco Grignasco','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(262,'','Cacciami','Antonio','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(263,'','Guglielmina','Umberto','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(264,'Rimborso Concerto Esterni','.','.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','Y');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(265,'Comune Campertogno','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(266,'Ferramenta Zanolo e Gozzi','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(267,'Cipir Utility Srl','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(268,'Mercatone Uno','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(269,'Sax Gattinara','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(270,'Provincia Novara','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(271,'Oratorio San Bernardo','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(272,'Gruppo Alpini Valbusaga','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(273,'','Palma','Urano','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(274,'','Allifranchini','Ruggero','','',NULL,NULL,'Via Dante 5','Grignasco','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(275,'Sig','Velatta','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(276,'','Zanaroli','Mario','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(277,'di Gattinara','.','Evelina','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(278,'di Gattinara','Mantovani','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(279,'','Tomalino','Christian','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(280,'','Saragno','Annalisa','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(281,'','Lasoued','Aya + Yed','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(282,'','Mingolla','Paola','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(283,'','Andoh','Charles','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(284,'','Granieri','Antonio','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(285,'Effedì Pianeta Foto','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(286,'','Gardinale','Emilio','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(287,'','Andorno','Daniele','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(288,'','Tosetti','Eleonora','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(289,'','Sillani','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(290,'','Ferro','Gianfranco','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(291,'q','q','q','','',NULL,NULL,'','','','','','','','','','','','','Y','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(292,'','Marco Polo Expert','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(293,'','Borsoi','Alberto','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(294,'','Ferraris','Marco','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(295,'','Milone','Marianna','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(296,'','Cerutti','Alessandro','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(297,'','Penny','Market','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(298,'Da Giovanni Ristorante','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(299,'','Pietro','Angelino','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(300,'','Donato','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(301,'Corno','.','Valerio','','',NULL,NULL,'','Cornaredo','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(302,'Corno Verbania','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(303,'CAST di Arienta Stefano','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(304,'Pro Loco Rastiglione','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(305,'Mondoffice srl','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(306,'Ghemme','.','Raffaella','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(307,'Cardinali','.','.','01834560029','',NULL,NULL,'Via Cavour 67','Livorno Ferraris','','VC','0161477556','','','0161/478147','','luca@cardinali.it','','www.cardinali.it','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(308,'','Pasqualin','Ornella','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(309,'','Coro','Bless The Lord','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(310,'Selmat','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(311,'','Guglielmina','Anita','','',NULL,NULL,'Via della Madonna','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(312,'','Franchi','Franco','','',NULL,NULL,'Via Dante Alighieri','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(313,'','Vinzio','Christian','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(314,'','Bressan','Daniele','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(315,'','Giorgetti','Ivana','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(316,'','Perazzi','Massimo','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(317,'','Rabaglio','Pierina','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(318,'','Famiglia Borelli','Luciano','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(319,'','Lovatto','Bruno','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(320,'Comitato Carnevale del SIMP','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(321,'GS S.P.A. IPERSTORE RONDO','.','.','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(322,'','Bellan','Massimo','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(323,'','Mancin','Chiara','','',NULL,NULL,'','','','','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(324,'','Giolito','Aldo','','',NULL,NULL,'Via Pastore, 19','Grignasco','28075','NO','','','','','','','','','N','');
REPLACE INTO "sd_soggetti" ("ID_Soggetto", "Ragione_Sociale", "Cognome", "Nome", "PI", "CF", "Descrizione", "Tipo", "Indirizzo", "Citta", "CAP", "Provincia", "Telefono", "Telefono2", "Telefono3", "Fax", "Cell", "E_mail", "Password", "Web", "Deleted", "Privacy") VALUES
	(325,'Scampoli Saglietti','.','.','','',NULL,NULL,'Via Gramsci, 14','Prato Sesia','28077','NO','0163/852010','','','','','','','','N','');
/*!40000 ALTER TABLE "sd_soggetti" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_tesseramenti'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_tesseramenti" (
  "ID_Tesseramento" int(12) unsigned NOT NULL auto_increment,
  "ID_Soggetto" int(12) unsigned NOT NULL default '0',
  "Data_Tessera" date NOT NULL default '0000-00-00',
  "Importo_Versato" int(12) unsigned NOT NULL default '0',
  "Validita" varchar(4) NOT NULL default '0000',
  "Tipo_Socio" varchar(50) NOT NULL default '',
  "ID_Promotore" int(12) unsigned default NULL,
  "Deleted" char(1) NOT NULL default 'N',
  "ID_Movimento" int(12) unsigned NOT NULL default '0',
  PRIMARY KEY  ("ID_Tesseramento")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_tesseramenti'
#

LOCK TABLES "sd_tesseramenti" WRITE;
/*!40000 ALTER TABLE "sd_tesseramenti" DISABLE KEYS;*/
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('1','30','2007-01-01','0','2007','2',NULL,'N','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('2','114','0000-00-00','100000','2012','2','114','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('3','103','0000-00-00','200000','2015','1','114','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('4','103','0000-00-00','200000','2015','1','114','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('5','103','0000-00-00','200000','2015','1','114','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('6','103','0000-00-00','300000','2015','3','103','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('7','103','0000-00-00','300000','2015','3','103','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('8','114','0000-00-00','40000','2005','2','103','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('9','114','0000-00-00','1','2005','2','114','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('10','114','0000-00-00','1','2005','2','114','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('11','114','0000-00-00','1','2005','2','114','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('12','134','0000-00-00','12','2007','2','134','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('13','134','0000-00-00','12','2007','2','134','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('14','134','0000-00-00','12','2007','2','134','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('15','83','0000-00-00','1000000','2005','2','83','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('16','83','0000-00-00','1000000','2005','2','83','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('17','83','0000-00-00','1000000','2005','2','83','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('18','83','0000-00-00','1000000','2013','2','83','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('19','83','2007-01-31','1000000','2013','2','83','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('20','83','0000-00-00','1000000','2005','2','83','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('21','83','2007-01-31','1000000','2005','2','83','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('22','83','2007-01-31','1000000','2005','2','83','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('23','134','2007-01-16','12','2005','2','131','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('24','83','2007-01-16','34','2005','3','86','Y','0');
REPLACE INTO "sd_tesseramenti" ("ID_Tesseramento", "ID_Soggetto", "Data_Tessera", "Importo_Versato", "Validita", "Tipo_Socio", "ID_Promotore", "Deleted", "ID_Movimento") VALUES
	('25','133','2007-01-15','100','2007','3','114','Y','0');
/*!40000 ALTER TABLE "sd_tesseramenti" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_tipi_pagamento'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_tipi_pagamento" (
  "ID_Tipo_Pagamento" int(3) NOT NULL auto_increment,
  "Tipo_Pagamento" varchar(30) NOT NULL default '',
  PRIMARY KEY  ("ID_Tipo_Pagamento","Tipo_Pagamento")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_tipi_pagamento'
#

LOCK TABLES "sd_tipi_pagamento" WRITE;
/*!40000 ALTER TABLE "sd_tipi_pagamento" DISABLE KEYS;*/
REPLACE INTO "sd_tipi_pagamento" ("ID_Tipo_Pagamento", "Tipo_Pagamento") VALUES
	(1,'Bonifico Bancario');
REPLACE INTO "sd_tipi_pagamento" ("ID_Tipo_Pagamento", "Tipo_Pagamento") VALUES
	(2,'Carta di Credito');
REPLACE INTO "sd_tipi_pagamento" ("ID_Tipo_Pagamento", "Tipo_Pagamento") VALUES
	(3,'Contanti');
REPLACE INTO "sd_tipi_pagamento" ("ID_Tipo_Pagamento", "Tipo_Pagamento") VALUES
	(4,'Assegno Bancario');
REPLACE INTO "sd_tipi_pagamento" ("ID_Tipo_Pagamento", "Tipo_Pagamento") VALUES
	(5,'Assegno Circolare');
REPLACE INTO "sd_tipi_pagamento" ("ID_Tipo_Pagamento", "Tipo_Pagamento") VALUES
	(6,'Ricevuta Bancaria');
REPLACE INTO "sd_tipi_pagamento" ("ID_Tipo_Pagamento", "Tipo_Pagamento") VALUES
	(7,'Versamento Contanti');
REPLACE INTO "sd_tipi_pagamento" ("ID_Tipo_Pagamento", "Tipo_Pagamento") VALUES
	(8,'Giacenza');
/*!40000 ALTER TABLE "sd_tipi_pagamento" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_tipi_soci'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_tipi_soci" (
  "ID" tinyint(3) unsigned NOT NULL auto_increment,
  "Tipo" varchar(50) NOT NULL default '0',
  PRIMARY KEY  ("ID"),
  UNIQUE KEY "ID" ("ID","Tipo"),
  KEY "ID_2" ("ID","Tipo")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_tipi_soci'
#

LOCK TABLES "sd_tipi_soci" WRITE;
/*!40000 ALTER TABLE "sd_tipi_soci" DISABLE KEYS;*/
REPLACE INTO "sd_tipi_soci" ("ID", "Tipo") VALUES
	(1,'Ordinario');
REPLACE INTO "sd_tipi_soci" ("ID", "Tipo") VALUES
	(2,'Effettivo');
REPLACE INTO "sd_tipi_soci" ("ID", "Tipo") VALUES
	(3,'Sostenitore');
/*!40000 ALTER TABLE "sd_tipi_soci" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sd_voci_bilancio'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sd_voci_bilancio" (
  "id" tinyint(3) unsigned NOT NULL auto_increment,
  "voce" varchar(250) NOT NULL default '0',
  PRIMARY KEY  ("id","voce"),
  KEY "id" ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sd_voci_bilancio'
#

LOCK TABLES "sd_voci_bilancio" WRITE;
/*!40000 ALTER TABLE "sd_voci_bilancio" DISABLE KEYS;*/
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(1,'Varie');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(2,'Rimborso spese ai Maestri');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(3,'Spese Postali e Varie');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(4,'Acquisto Vestiario');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(5,'Acquisto, Manutenzione Strumenti musicali');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(6,'Acquisto Partiture');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(7,'Rimborso spese ai Musici');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(8,'Oneri SIAE');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(9,'Energia Elettrica');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(10,'Riscaldamento');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(11,'Assicurazione');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(12,'Cancelleria e Stampati');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(13,'Rinfreschi e Pranzi');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(14,'Promozione e Pubblicità');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(15,'Oneri Intesa San Paolo');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(17,'Tesseramento Anbima');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(18,'Tessere');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(19,'Contributo Comune di Grignasco');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(20,'Contributo Frequenza Allievi (Lezioni e Strumenti)');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(21,'Contributo per Manutenzione Strumenti');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(22,'Offerte Ricevute Durante Servizi e Concerti');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(23,'Sottoscrizioni a Premi e Dolci Note');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(24,'Contributo Provinciale');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(25,'Contributo Ministero dello Spettacolo');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(26,'Contributo Provinciale Scuola Allievi');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(27,'Rimborso Esterni');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(28,'Partita di Giro');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(29,'Acquisto Premi per Sottoscrizioni');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(30,'Donazione per Acquisti e Manutenzione Strumenti');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(31,'Telefonia');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(32,'Saldo Iniziale');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(33,'Pomeriggio Musicale');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(34,'Trasporti');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(35,'Macchine per Ufficio');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(36,'Manutenzione Strumenti Musicali di Proprietà dei Musici');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(37,'Contributo Regionale L. 38/2000');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(38,'Attrezzature e Materiale per Sede');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(39,'Noleggio strumenti');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(40,'Contributo manutenzione strumenti');
REPLACE INTO "sd_voci_bilancio" ("id", "voce") VALUES
	(41,'Oblazioni');
/*!40000 ALTER TABLE "sd_voci_bilancio" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/

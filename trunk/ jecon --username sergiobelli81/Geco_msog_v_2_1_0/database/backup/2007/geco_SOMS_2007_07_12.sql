

DROP TABLE IF EXISTS `sd_accessi`;
CREATE TABLE IF NOT EXISTS `sd_accessi` (
  `ID` int(11) NOT NULL auto_increment,
  `SESSIONE` varchar(32) NOT NULL default '',
  `USERNAME` varchar(50) NOT NULL default '',
  `DATA` date NOT NULL default '0000-00-00',
  `ORA` time NOT NULL default '00:00:00',
  PRIMARY KEY  (`ID`,`SESSIONE`,`USERNAME`,`DATA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dump dei dati per la tabella `sd_accessi`
-- 

INSERT INTO `sd_accessi` VALUES (1, '', '3daec07235', '2007-01-17', '13:45:13');
INSERT INTO `sd_accessi` VALUES (2, '3daec07235f57f53769e1c7d1cd31c69', 'sergio.belli', '2007-01-17', '13:45:33');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_acquisti`
-- 

DROP TABLE IF EXISTS `sd_acquisti`;
CREATE TABLE IF NOT EXISTS `sd_acquisti` (
  `ID_Cliente` int(8) NOT NULL default '0',
  `ID_Ordine` int(12) NOT NULL auto_increment,
  `Progressivo_Fattura` int(6) NOT NULL default '0',
  `ID_Articolo` int(10) NOT NULL default '0',
  `Prezzo` decimal(5,2) NOT NULL default '0.00',
  `Quantita` int(4) NOT NULL default '0',
  `IVA` int(2) NOT NULL default '0',
  `ID_Pagamento` varchar(30) NOT NULL default '',
  `Data_Ordine` date NOT NULL default '0000-00-00',
  `Data_Evasione` date NOT NULL default '0000-00-00',
  `Data_Scadenza` date NOT NULL default '0000-00-00',
  `Ragione_Sociale` varchar(100) NOT NULL default '',
  `Cognome` varchar(100) NOT NULL default '',
  `Nome` varchar(100) NOT NULL default '',
  `Indirizzo` varchar(100) NOT NULL default '',
  `Civico` varchar(12) NOT NULL default '',
  `Citta` varchar(100) NOT NULL default '',
  `CAP` varchar(6) NOT NULL default '',
  `Provincia` char(2) NOT NULL default '',
  `Stato` varchar(150) NOT NULL default '',
  `Telefono` varchar(20) NOT NULL default '',
  `Fax` varchar(20) NOT NULL default '',
  `E_mail` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`ID_Ordine`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dump dei dati per la tabella `sd_acquisti`
-- 


-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_admin`
-- 

DROP TABLE IF EXISTS `sd_admin`;
CREATE TABLE IF NOT EXISTS `sd_admin` (
  `ID_Admin` int(12) NOT NULL auto_increment,
  `Cognome` varchar(30) NOT NULL default '',
  `Nome` varchar(30) NOT NULL default '',
  `Livello` int(2) NOT NULL default '0',
  `Login` varchar(50) NOT NULL default '',
  `Password` varchar(8) NOT NULL default '',
  `Email` varchar(100) default NULL,
  PRIMARY KEY  (`ID_Admin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dump dei dati per la tabella `sd_admin`
-- 

INSERT INTO `sd_admin` VALUES (1, 'Belli', 'Sergio', 0, 'sergio.belli', 'sergio', 'sergio.belli@email.it');
INSERT INTO `sd_admin` VALUES (2, 'Baron', 'Andrea', 0, 'andrea.baron', 'andrea', 'andrea.baron@deagostini.it,baron@alice.it');
INSERT INTO `sd_admin` VALUES (3, 'Baglioni', 'Corrado', 0, 'corrado.baglioni', 'corrado', 'baglioni.net@libero.it');
INSERT INTO `sd_admin` VALUES (4, 'De Angelis', 'Martino', 0, 'martino.deangelis', 'martino', NULL);
INSERT INTO `sd_admin` VALUES (5, 'Regis', 'Marica', 0, 'marica.regis', 'marica', 'marica.vanni@alice.it');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_anagrafica`
-- 

DROP TABLE IF EXISTS `sd_anagrafica`;
CREATE TABLE IF NOT EXISTS `sd_anagrafica` (
  `ID_Azienda` int(10) NOT NULL auto_increment,
  `Abilitato` smallint(6) NOT NULL default '0',
  `Ragione_Sociale` varchar(100) NOT NULL default '',
  `Cognome` varchar(30) NOT NULL default '',
  `Nome` varchar(30) NOT NULL default '',
  `PI` varchar(16) NOT NULL default '',
  `CF` varchar(16) NOT NULL default '',
  `Indirizzo` varchar(60) NOT NULL default '',
  `Citta` varchar(60) NOT NULL default '',
  `CAP` varchar(5) NOT NULL default '',
  `Provincia` char(2) NOT NULL default '',
  `Telefono` varchar(20) NOT NULL default '',
  `Telefono2` varchar(20) default NULL,
  `Telefono3` varchar(20) default NULL,
  `Fax` varchar(20) default NULL,
  `Cell` varchar(20) default NULL,
  `E_mail` varchar(100) default NULL,
  `Web` varchar(50) default NULL,
  PRIMARY KEY  (`ID_Azienda`),
  UNIQUE KEY `PI` (`PI`),
  UNIQUE KEY `E_mail` (`E_mail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dump dei dati per la tabella `sd_anagrafica`
-- 

INSERT INTO `sd_anagrafica` VALUES (1, 0, 'Musica Societa Operaia di Grignasco', 'Banda', 'Musicale', '91001100030', '91001100030', 'Via Rosa Massara 18', 'Grignasco', '28075', 'NO', '0163417130', '0163834668', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_anni_bilancio`
-- 

DROP TABLE IF EXISTS `sd_anni_bilancio`;
CREATE TABLE IF NOT EXISTS `sd_anni_bilancio` (
  `Anno` varchar(4) NOT NULL default '0',
  PRIMARY KEY  (`Anno`),
  UNIQUE KEY `Anno` (`Anno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dump dei dati per la tabella `sd_anni_bilancio`
-- 

INSERT INTO `sd_anni_bilancio` VALUES ('2005');
INSERT INTO `sd_anni_bilancio` VALUES ('2006');
INSERT INTO `sd_anni_bilancio` VALUES ('2007');
INSERT INTO `sd_anni_bilancio` VALUES ('2008');
INSERT INTO `sd_anni_bilancio` VALUES ('2009');
INSERT INTO `sd_anni_bilancio` VALUES ('2010');
INSERT INTO `sd_anni_bilancio` VALUES ('2011');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_banche`
-- 

DROP TABLE IF EXISTS `sd_banche`;
CREATE TABLE IF NOT EXISTS `sd_banche` (
  `ID_Banca` int(4) NOT NULL auto_increment,
  `Banca` varchar(50) NOT NULL default '',
  `Indirizzo` varchar(100) NOT NULL default '',
  `Agenzia` varchar(4) NOT NULL default '',
  `Abi` varchar(6) NOT NULL default '',
  `Cab` varchar(6) NOT NULL default '',
  `Conto` varchar(12) NOT NULL default '',
  `Titolare` varchar(100) NOT NULL default '',
  `Deleted` char(1) NOT NULL default 'N',
  PRIMARY KEY  (`ID_Banca`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dump dei dati per la tabella `sd_banche`
-- 

INSERT INTO `sd_banche` VALUES (1, 'Banca del Credito Cooperativo', 'Via Boh, 32', 'Cent', '08234', '11345', '565658', 'Gnauz Spa', 'Y');
INSERT INTO `sd_banche` VALUES (2, 'Cassa', '', '', '', '', '', '', 'N');
INSERT INTO `sd_banche` VALUES (3, 'Banca Intesa', '', '', '03268', '22300', 'aaaa', 'saaaa', 'N');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_clienti`
-- 

DROP TABLE IF EXISTS `sd_clienti`;
CREATE TABLE IF NOT EXISTS `sd_clienti` (
  `ID_Cliente` int(10) NOT NULL auto_increment,
  `Ragione_Sociale` varchar(100) default NULL,
  `Cognome` varchar(100) NOT NULL default '',
  `Nome` varchar(30) NOT NULL default '',
  `PI` varchar(16) default NULL,
  `CF` varchar(16) default NULL,
  `Indirizzo` varchar(60) default NULL,
  `Citta` varchar(60) default NULL,
  `CAP` varchar(5) default NULL,
  `Provincia` char(2) default NULL,
  `Telefono` varchar(20) default NULL,
  `Telefono2` varchar(20) default NULL,
  `Telefono3` varchar(20) default NULL,
  `Fax` varchar(20) default NULL,
  `Cell` varchar(20) default NULL,
  `E_mail` varchar(100) default NULL,
  `Password` varchar(8) default NULL,
  `Web` varchar(50) default NULL,
  PRIMARY KEY  (`ID_Cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

-- 
-- Dump dei dati per la tabella `sd_clienti`
-- 

INSERT INTO `sd_clienti` VALUES (2, '', 'Contardi', 'Giuseppe', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (3, '', 'Contardi', 'Marisa', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (4, '', 'Cacciami', 'Maria Teresa', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (5, '', 'Gattinara', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (6, '', 'Piane di', 'Serravalle Sesia', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (7, '', 'Comitato Carnevale', 'Grignasco', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (8, '', 'Club Patacioi', 'Ara', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (9, '', 'Famiglia', 'Perazzi', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (10, '', 'Famiglia Pozzi', '(Marica+Vanni)', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (11, '', 'Famiglia', 'DaParé', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (12, '', 'Vinzio', 'Claudia', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (13, '', 'Vinzio', 'Vittorino', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (14, '', 'Vinzio Rag.', 'Laura', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (15, '', 'Festa Bianchet', 'Gianfranca', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (16, '', 'Borelli', 'Michele', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (17, '', 'Franchi', 'Carlo', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (18, '', 'Ventura', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (19, '', 'Fontaneto', 'Marcello', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (20, '', 'Frascotti', 'Giuliano', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (21, '', 'Vinzio', 'Ermanno', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (22, '', 'Di Lernia', 'Giuseppe', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (23, '', 'Famiglia Agazzini', '(Linda+Lore)', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (24, '', 'Pozzi', 'Carlo', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (25, '', 'Pagnoni', 'Federico', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (26, '', 'Pontini', 'Andrea', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (27, '', 'Cascio', 'Antonino+Annalisa', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (28, '', 'Squaratti', 'Paolo', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (29, '', 'Aprile', 'Mauro', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (30, '', 'Belli', 'Sergio', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (31, '', 'Mischiatti', 'Dino', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (32, '', 'Pezzolato', 'Luca', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (33, '', 'Ritorno', 'Cassa', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (34, '', 'Giuliani', 'Roberto', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (35, '', 'Aleppo', 'Athos', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (36, '', 'Baglioni', 'Angelo', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (37, '', 'Balzarini', 'Ernesto', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (38, '', 'Borgato', 'Giuliano', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (39, '', 'Canobio', 'Giuseppe', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (40, '', 'Del Villani', 'Luigi', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (41, '', 'Franzosi', 'Luciano', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (42, '', 'Giordani', 'Elio', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (43, '', 'Gobbi', 'Angelo', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (44, '', 'Molli', 'Luigi', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (45, '', 'Negri', 'Renato', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (46, '', 'Nobile', 'Piera', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (47, '', 'Rabaglio', 'Giovanni', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (48, '', 'Stefani', 'Davide', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (49, '', 'Teraroli', 'Gianni', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (50, '', 'Valsesia', 'Valentino', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (51, '', 'Vinzio', 'Fernando', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (52, '', 'Mora', 'Gaudenzio', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (53, '', 'Mora', 'Flora', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (54, '', 'Martinetti', 'Ugo', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (55, '', 'Moretti', 'Eleonora', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (56, '', 'Mancin', 'Gabriele', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (57, '', 'Magistrini', 'Giacomo', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (58, '', 'Schizzerato', 'Leonardo', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (59, '', 'Anpi Sezione', 'Grignasco', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (60, '', 'Velatta', 'Laura', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (61, '', 'Priori', 'Festa Patronale Rovasenda', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (62, '', 'ProLoco', 'Rovasenda', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_clienti` VALUES (63, '', 'Saldo Cassa', 'Iniziale', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_codici_iva`
-- 

DROP TABLE IF EXISTS `sd_codici_iva`;
CREATE TABLE IF NOT EXISTS `sd_codici_iva` (
  `Codice` varchar(12) NOT NULL default '',
  `Descrizione` varchar(50) NOT NULL default '',
  `Percentuale` varchar(6) NOT NULL default '',
  `Indetraibile` varchar(6) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dump dei dati per la tabella `sd_codici_iva`
-- 

INSERT INTO `sd_codici_iva` VALUES ('20', '20%', '20', '0');
INSERT INTO `sd_codici_iva` VALUES ('10', '10%', '10', '0');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_fatture_acquisto`
-- 

DROP TABLE IF EXISTS `sd_fatture_acquisto`;
CREATE TABLE IF NOT EXISTS `sd_fatture_acquisto` (
  `ID_Fattura_Acquisto` int(10) NOT NULL auto_increment,
  `ID_Fornitore` int(10) NOT NULL default '0',
  `ID_Pagamento` varchar(30) NOT NULL default '',
  `N_Fattura` varchar(12) NOT NULL default '',
  `Data_Fattura` date NOT NULL default '0000-00-00',
  `Ragione_Sociale` varchar(200) NOT NULL default '',
  `PI` varchar(16) NOT NULL default '',
  `Indirizzo` varchar(100) NOT NULL default '',
  `Citta` varchar(60) NOT NULL default '',
  `CAP` varchar(5) NOT NULL default '',
  `Provincia` char(2) NOT NULL default '',
  `Descrizione` text NOT NULL,
  `Totale` decimal(10,2) NOT NULL default '0.00',
  `Imposta` decimal(10,2) NOT NULL default '0.00',
  `Tipo_Pagamento` varchar(20) NOT NULL default '',
  `Scadenza` date NOT NULL default '0000-00-00',
  `Note` text NOT NULL,
  PRIMARY KEY  (`ID_Fattura_Acquisto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dump dei dati per la tabella `sd_fatture_acquisto`
-- 


-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_fatture_vendita`
-- 

DROP TABLE IF EXISTS `sd_fatture_vendita`;
CREATE TABLE IF NOT EXISTS `sd_fatture_vendita` (
  `ID_Fattura` int(10) NOT NULL auto_increment,
  `Prog_Fattura_Annuo` int(10) default NULL,
  `ID_Cliente` int(10) NOT NULL default '0',
  `ID_Banca` varchar(10) NOT NULL default '',
  `ID_Pagamento` varchar(30) NOT NULL default '',
  `Data_Fattura` date NOT NULL default '0000-00-00',
  `Ragione_Sociale` varchar(200) NOT NULL default '',
  `PI` varchar(16) NOT NULL default '',
  `Indirizzo` varchar(100) NOT NULL default '',
  `Citta` varchar(60) NOT NULL default '',
  `CAP` varchar(5) NOT NULL default '',
  `Provincia` char(2) NOT NULL default '',
  `Descrizione` text NOT NULL,
  `Totale` decimal(10,2) NOT NULL default '0.00',
  `Tipo_Pagamento` varchar(20) NOT NULL default '',
  `Scadenza` date NOT NULL default '0000-00-00',
  `Note` text NOT NULL,
  PRIMARY KEY  (`ID_Fattura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dump dei dati per la tabella `sd_fatture_vendita`
-- 


-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_fornitori`
-- 

DROP TABLE IF EXISTS `sd_fornitori`;
CREATE TABLE IF NOT EXISTS `sd_fornitori` (
  `ID_Fornitore` int(10) NOT NULL auto_increment,
  `Ragione_Sociale` varchar(100) default NULL,
  `Cognome` varchar(30) NOT NULL default '',
  `Nome` varchar(30) NOT NULL default '',
  `PI` varchar(16) default NULL,
  `CF` varchar(16) default NULL,
  `Indirizzo` varchar(60) default NULL,
  `Citta` varchar(60) default NULL,
  `CAP` varchar(5) default NULL,
  `Civico` varchar(10) default NULL,
  `Provincia` char(2) default NULL,
  `Telefono` varchar(20) default NULL,
  `Telefono2` varchar(20) default NULL,
  `Telefono3` varchar(20) default NULL,
  `Fax` varchar(20) default NULL,
  `Cell` varchar(20) default NULL,
  `E_mail` varchar(100) default NULL,
  `Password` varchar(8) default NULL,
  `Web` varchar(50) default NULL,
  PRIMARY KEY  (`ID_Fornitore`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

-- 
-- Dump dei dati per la tabella `sd_fornitori`
-- 

INSERT INTO `sd_fornitori` VALUES (2, '', 'Platini', 'Fabrizio', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (11, '', 'Borelli', 'Ezio', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (4, '', 'De Angelis', 'Roberto', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (3, '', 'Giuliani', 'Roberto', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (5, '', 'Anbima', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (64, '', 'Platini', 'Fabrizio', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (7, '', 'Barlassina', 'Patrizia', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (10, '', 'Vanni', 'Marica', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (65, '', 'Borelli', 'Ezio', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (66, '', 'De Angelis', 'Roberto', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (67, '', 'Giuliani', 'Roberto', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (68, '', 'Anbima', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (69, '', 'Barlassina', 'Patrizia', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '');
INSERT INTO `sd_fornitori` VALUES (70, '', 'Vanni', 'Marica', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_movimenti`
-- 

DROP TABLE IF EXISTS `sd_movimenti`;
CREATE TABLE IF NOT EXISTS `sd_movimenti` (
  `ID_Movimento` int(12) NOT NULL auto_increment,
  `ID_Soggetto` varchar(12) NOT NULL default '',
  `Data_Valuta` date NOT NULL default '0000-00-00',
  `Tipo_Pagamento` varchar(100) NOT NULL default '',
  `Entrate` decimal(8,2) NOT NULL default '0.00',
  `Uscite` decimal(8,2) NOT NULL default '0.00',
  `ID_Banca` varchar(12) NOT NULL default '',
  `Descrizione` text NOT NULL,
  `Id_Voce_Bilancio` tinyint(3) unsigned NOT NULL default '0',
  `Data_Competenza` date NOT NULL default '0000-00-00',
  `Deleted` char(1) NOT NULL default 'N',
  `ID_Admin` varchar(50) NOT NULL default '0',
  `Anno_Bilancio` varchar(4) NOT NULL default '',
  PRIMARY KEY  (`ID_Movimento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=1 AUTO_INCREMENT=519 ;

-- 
-- Dump dei dati per la tabella `sd_movimenti`
-- 

INSERT INTO `sd_movimenti` VALUES (3, '65', '2006-05-22', 'Contanti', 0.00, 430.00, '2', 'Pagamento Maestri Platini Fabrizio Marzo/Aprile 2006', 2, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (4, '67', '2006-05-22', 'Contanti', 0.00, 240.00, '2', 'Pagamento Maestri DeAngelis Roberto 21/10/2005 - 24/03/2006', 2, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (5, '34', '2006-05-22', 'Contanti', 0.00, 253.50, '2', 'Pagamento Maestri Giuliani Roberto Marzo/Aprile 2006', 2, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (6, '69', '2006-05-22', 'Contanti', 0.00, 202.47, '2', 'Tesseramento Anbima 2006', 17, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (7, '72', '2006-03-16', 'Contanti', 0.00, 13.50, '2', 'Spese Postali Acquisto Francobolli a Vanni Marica', 3, '2006-03-16', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (8, '2', '2006-05-11', 'Contanti', 12.00, 0.00, '2', 'Tesseramento 2006 Contardi Giuseppe', 18, '2006-05-11', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (9, '3', '2006-05-11', 'Contanti', 12.00, 0.00, '2', 'Tesseramento 2006 Contardi Marisa', 18, '2006-05-11', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (10, '4', '2006-05-11', 'Contanti', 6.00, 0.00, '2', 'Tesseramento 2006 Cacciami Maria Teresa', 18, '2006-05-11', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (11, '5', '2006-05-17', 'Contanti', 500.00, 0.00, '2', 'Compenso Servizio di Gattinara', 22, '2006-05-17', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (12, '6', '2006-05-14', 'Contanti', 270.00, 0.00, '2', 'Compenso Servizio Piane di Serravalle Sesia', 22, '2006-05-14', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (13, '7', '2006-02-28', 'Assegno Bancario', 500.00, 0.00, '2', 'Servizio Carnevale Grignasco "Giubiacia" Assegno', 22, '2006-02-28', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (14, '8', '2006-05-22', 'Contanti', 70.00, 0.00, '2', 'Compenso Carnevale Ara Club Patacioi Ara', 22, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (15, '9', '2006-05-22', 'Contanti', 20.00, 0.00, '2', 'Tesseramento 2006 Famiglia Perazzi Federica, Massimo, Gianpiero', 18, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (16, '10', '2006-05-22', 'Contanti', 12.00, 0.00, '2', 'Tesseramento 2006 Famiglia Pozzi Vanni, Marica', 18, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (17, '11', '2006-05-22', 'Contanti', 12.00, 0.00, '2', 'Tesseramento 2006 Famiglia Da Paré Augusto, Ornella', 18, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (18, '12', '2006-04-24', 'Contanti', 20.00, 0.00, '2', 'Tesseramento 2006 Vinzio Claudia', 18, '2006-04-24', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (19, '13', '2006-04-24', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Vinzio Vittorino', 18, '2006-04-24', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (20, '14', '2006-04-24', 'Contanti', 6.00, 0.00, '2', 'Tesseramento 2006 Vinzio Rag. Laura', 18, '2006-04-24', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (21, '15', '2006-04-24', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Festa Bianchet Gianfranca', 18, '2006-04-24', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (22, '16', '2006-05-01', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Borelli Michele', 18, '2006-05-01', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (23, '17', '2006-05-22', 'Contanti', 6.00, 0.00, '2', 'Tesseramento 2006 Franchi Carlo', 18, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (24, '18', '2006-05-22', 'Contanti', 6.00, 0.00, '2', 'Tesseramento 2006 Ventura', 18, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (25, '19', '2006-05-22', 'Contanti', 6.00, 0.00, '2', 'Tesseramento 2006 Fontaneto Marcello', 18, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (26, '20', '2006-05-26', 'Contanti', 10.00, 0.00, '2', ' Tesseramento 2006 Frascotti Giuliano ', 18, '2006-05-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (27, '21', '2006-05-26', 'Contanti', 20.00, 0.00, '2', ' Tesseramento 2006 Vinzio Ermanno ', 18, '2006-05-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (28, '22', '2006-03-31', 'Contanti', 10.00, 0.00, '2', '                             Scuola Allievi Lezione Marzo 2006 Di Lernia Giuseppe                         ', 20, '2006-03-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (29, '23', '2006-03-31', 'Contanti', 20.00, 0.00, '2', ' Scuola Allievi Lezione Marzo Agazzini Linda+Lorenzo ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (30, '24', '2006-04-30', 'Contanti', 20.00, 0.00, '2', ' Scuola Allievi Lezione Marzo/Aprile 2006 Pozzi Carlo ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (31, '25', '2006-03-31', 'Contanti', 20.00, 0.00, '2', ' Scuola Allievi Lezione Febbraio/Marzo 2006 Pagnoni Federico ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (32, '25', '2006-03-31', 'Contanti', 22.00, 0.00, '2', ' Scuola Allievi Strumento Febbraio/Marzo 2006 Pagnoni Federico ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (33, '26', '2006-02-28', 'Contanti', 10.00, 0.00, '2', ' Scuola Allievi Lezione Febbraio Pontini Andrea ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (34, '27', '2006-02-28', 'Contanti', 80.00, 0.00, '2', ' Scuola Allievi Lezione Novembre/Dicembre 2005 Gennaio/Febbraio 2006 Cascio Antonino+Annalisa ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (35, '28', '2006-03-31', 'Contanti', 10.00, 0.00, '2', ' Scuola Allievi Lezione Marzo 2006 Squaratti Paolo ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (36, '28', '2006-03-31', 'Contanti', 11.00, 0.00, '2', ' Scuola Allievi Strumento Marzo 2006 Squaratti Paolo ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (37, '29', '2006-03-31', 'Contanti', 20.00, 0.00, '2', ' Scuola Allievi Lezione Febbraio/Marzo 2006 Aprile Mauro ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (38, '29', '2006-03-31', 'Contanti', 22.00, 0.00, '2', ' Scuola Allievi Strumento Febbraio/Marzo 2006 Aprile Mauro ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (39, '30', '2006-05-22', 'Contanti', 39.00, 0.00, '2', 'Oblazione Sergio Belli', 18, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (40, '31', '2006-05-22', 'Contanti', 13.00, 0.00, '2', 'Oblazione Mischiatti Dino', 18, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (41, '32', '2006-05-22', 'Contanti', 16.00, 0.00, '2', 'Oblazione Pezzolato Luca', 18, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (42, '33', '2006-05-22', 'Contanti', 32.00, 0.00, '2', 'Ritorno Cassa', 1, '2006-05-22', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (43, '34', '2006-05-26', 'Contanti', 12.92, 0.00, '2', 'Oblazione Giuliani Roberto', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (44, '34', '2006-05-26', 'Contanti', 26.00, 0.00, '2', ' Rettifica Retribuzione Aprile/Maggio 2006 Giuliani Roberto ', 1, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (45, '35', '2006-05-26', 'Contanti', 6.00, 0.00, '2', 'Tesseramento 2006 Aleppo Athos', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (46, '36', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Baglioni Angelo', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (47, '37', '2006-05-26', 'Contanti', 6.00, 0.00, '2', 'Tesseramento 2006 Balzarini Ernesto', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (48, '38', '2006-05-26', 'Contanti', 6.00, 0.00, '2', 'Tesseramento 2006 Borgato Giuliano', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (49, '39', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Canobio Giuseppe', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (50, '40', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Del Villani Luigi', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (51, '41', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Franzosi Luciano', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (52, '42', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Giordani Elio', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (53, '43', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Gobbi Angelo', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (54, '44', '2006-05-26', 'Contanti', 15.00, 0.00, '2', 'Tesseramento 2006 Molli Luigi', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (55, '45', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Negri Renato', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (56, '46', '2006-05-26', 'Contanti', 6.00, 0.00, '2', 'Tesseramento 2006 Nobile Piera', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (57, '47', '2006-05-26', 'Contanti', 6.00, 0.00, '2', 'Tesseramento 2006 Rabaglio Giovanni', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (58, '48', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Stefani Davide', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (59, '49', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Teraroli Gianni', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (60, '50', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Valsesia Valentino', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (61, '51', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Vinzio Fernando', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (62, '52', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Mora Gaudenzio', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (63, '53', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Mora Flora', 18, '2006-05-02', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (64, '54', '2006-05-26', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2006 Martinetti Ugo', 18, '2006-05-26', 'N', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (65, '22', '2006-05-30', 'Contanti', 10.00, 0.00, '2', '   Scuola Allievi Lezione Febbraio 2006 Di Lernia Giuseppe    ', 20, '2000-11-30', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (66, '23', '2006-05-30', 'Contanti', 20.00, 0.00, '2', ' Scuola Allievi Lezione Febbraio 2006 ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (67, '55', '2006-05-30', 'Contanti', 20.00, 0.00, '2', ' Scuola Allievi Lezione Febbraio/Marzo 2006 Moretti Eleonora ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (68, '56', '2006-05-30', 'Contanti', 20.00, 0.00, '2', '   Scuola Allievi Lezione Febbraio/Marzo 2006 Mancin Gabriele    ', 20, '2006-05-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (69, '57', '2006-05-30', 'Contanti', 10.00, 0.00, '2', ' Scuola Allievi Lezione Febbraio 2006 Magistrini Giacomo ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (70, '28', '2006-05-30', 'Contanti', 21.00, 0.00, '2', ' Scuola Allievi Lezione + Strumento Febbraio 2006 Squaratti Paolo ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (71, '58', '2006-05-30', 'Contanti', 40.00, 0.00, '2', ' Scuola Allievi Lezione Febbraio/Marzo/Aprile/Maggio 2006 Schizzerato Leonardo ', 20, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (72, '59', '2006-05-29', 'Contanti', 240.00, 0.00, '2', ' Rimborso Spese Anpi Sezione Grignasco ', 22, '2006-05-29', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (73, '60', '2006-05-30', 'Contanti', 4.92, 0.00, '2', '  Oblazione Velatta Laura   ', 18, '2000-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (74, '61', '2006-05-27', 'Contanti', 1050.00, 0.00, '2', ' Rimborso doppio Servizio presso Rovasenda per Festa patronale. Concerto 700 euro Processione 350 euro ', 22, '2006-05-27', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (75, '62', '2006-06-08', 'Assegno Bancario', 350.00, 0.00, '3', ' Rimborso Processione Rovasenda 21/05/2006 Assegno versato il 30/05/2006 ', 22, '2006-05-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (76, '63', '2006-01-01', 'Contanti', 753.73, 0.00, '2', 'Saldo Cassa a passaggio consegne', 0, '2006-01-01', 'Y', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (77, '71', '2006-06-03', 'Contanti', 0.00, 20.00, '2', ' Rimborso spese per acquisto fiori a Barlassina Patrizia ', 1, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (78, '72', '2006-06-01', 'Contanti', 0.00, 8.60, '2', ' Rimborso spese per acquisto francobolli e spedizione raccomandata a Vanni Marica ', 3, '2006-06-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (79, '66', '2006-06-03', 'Contanti', 0.00, 48.00, '2', ' Rimborso spese per acquisto paste a Borelli Ezio ', 1, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (80, '72', '2006-06-03', 'Contanti', 0.00, 22.61, '2', ' Rimborso spese per acquisto generi alimentari per rinfresco a Vanni Marica ', 1, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (81, '212', '2006-06-03', 'Contanti', 0.00, 50.00, '2', '                              Rimborso spese per acquisto tranci di pizza (a Vanni Marica)                           ', 13, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (92, '67', '2006-10-04', 'Assegno Bancario', 0.00, 100.00, '1', 'qeqweqwewqeqwe', 7, '2006-10-04', 'Y', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (93, '69', '2006-10-04', 'Bonifico Bancario', 0.00, 201.00, '3', 'asasasaaassaassaas', 13, '2000-01-01', 'Y', '0', '2006');
INSERT INTO `sd_movimenti` VALUES (94, '59', '2006-10-04', 'Carta di Credito', 301.00, 0.00, '1', 'wewewqerwqerwre', 14, '2006-10-04', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (95, '35', '2006-10-04', 'Ricevuta Bancaria', 404.00, 0.00, '1', 'adsdsddssd', 14, '2000-01-01', 'Y', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (96, '', '2006-10-05', 'Bonifico Bancario', 10.00, 0.00, '1', 'dfsdfsdfd', 23, '2006-10-05', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (97, '35', '2006-10-05', 'Bonifico Bancario', 0.00, 11.00, '1', '', 23, '2006-10-05', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (98, '35', '2006-10-05', 'Bonifico Bancario', 0.00, 12.00, '1', '', 7, '2006-10-05', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (99, '64', '2006-10-05', 'Bonifico Bancario', 1.00, 0.00, '1', 'xxx', 1, '2006-10-05', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (100, '64', '2006-10-05', 'Assegno Circolare', 2.00, 0.00, '2', 'xxx', 0, '2000-01-01', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (101, '49', '2006-10-05', 'Bonifico Bancario', 0.00, 2002.00, '2', 'fdfffg    sdsdsdddfs', 1, '2006-10-05', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (102, '35', '2006-10-05', 'Bonifico Bancario', 3000.00, 0.00, '1', '', 18, '2006-10-05', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (103, '35', '2006-10-05', 'Bonifico Bancario', 3000.00, 0.00, '1', '', 18, '2006-10-05', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (104, '35', '2006-10-05', 'Bonifico Bancario', 123.00, 0.00, '1', 'aasaasaasaas ', 1, '2006-10-05', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (105, '64', '2006-10-05', 'Bonifico Bancario', 10.00, 0.00, '1', 'gfgffffg ', 8, '2006-10-05', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (106, '76', '2006-07-22', 'Carta di Credito', 10.00, 0.00, '2', 'Oblazione Geroso Simone', 18, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (107, '77', '2006-07-22', 'Contanti', 67.00, 0.00, '2', 'Oblazione Quarna Claudio', 18, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (108, '78', '2006-07-22', 'Contanti', 25.00, 0.00, '2', 'Oblazione Calligaris Franco', 18, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (109, '79', '2006-07-22', 'Contanti', 25.00, 0.00, '2', 'Oblazione Flauto Romagnano', 18, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (110, '81', '2006-07-22', 'Contanti', 100.00, 0.00, '2', '  Oblazione Giustina Vanda in memoria di Giustina Florindo ', 18, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (111, '80', '2006-07-22', 'Contanti', 25.00, 0.00, '2', 'Oblazione Poli figlio', 18, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (112, '82', '2006-07-22', 'Contanti', 300.00, 0.00, '2', 'Servizio a Zuccaro', 22, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (113, '83', '2006-07-22', 'Assegno Bancario', 1000.00, 0.00, '3', 'Contributo Comune Grignasco anno 2006', 19, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (114, '210', '2006-07-22', 'Contanti', 433.83, 0.00, '2', ' Concerto Estivo. Offerta ricevuta ', 22, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (115, '84', '2006-07-22', 'Assegno Bancario', 0.00, 1222.00, '3', '   Compenso Gennaio/Giugno 2006 Negri Gilberto   . ASSEGNO NR 3126252629 ', 2, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (116, '65', '2006-07-22', 'Contanti', 0.00, 534.00, '2', '  Compenso Maggio/Giugno 2006 Platini Fabrizio. Concerti Rovasenda.   ', 2, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (117, '85', '2006-07-22', 'Contanti', 0.00, 80.00, '2', 'Acquisto toner', 12, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (118, '86', '2006-07-22', 'Contanti', 0.00, 49.00, '2', ' Acquisto cellulare ', 31, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (119, '86', '2006-07-22', 'Contanti', 0.00, 50.00, '2', ' Ricarica cellulare ', 31, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (120, '87', '2006-07-22', 'Contanti', 0.00, 75.00, '2', 'Rimborso Mosca Francesca', 27, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (121, '88', '2006-07-22', 'Contanti', 0.00, 80.00, '2', 'Rimborso Grigolon', 27, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (122, '89', '2006-07-22', 'Contanti', 0.00, 25.00, '2', 'Rimborso Domenico', 27, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (123, '90', '2006-07-22', 'Contanti', 0.00, 45.00, '2', 'Rimborso Sandra', 27, '2006-07-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (124, '65', '2006-09-06', 'Contanti', 0.00, 482.00, '2', '  Compenso Luglio/Agosto 2006 Platini Fabrizio    430 + concerto luglio euro 52   ', 2, '2006-09-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (125, '91', '2006-10-06', 'Contanti', 0.00, 45.00, '2', 'Rimborso Farassino', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (126, '92', '2006-10-06', 'Contanti', 0.00, 45.00, '2', 'Rimborso nipote Farassino', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (127, '93', '2006-10-06', 'Contanti', 0.00, 45.00, '2', 'Rimborso Roberto', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (128, '94', '2006-10-06', 'Contanti', 0.00, 25.00, '2', 'Rimborso Cappone Marcello', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (129, '95', '2006-10-06', 'Contanti', 0.00, 25.00, '2', 'Rimborso clarinetto basso', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (130, '96', '2006-10-06', 'Contanti', 0.00, 25.00, '2', 'Rimborso Sogno Paola', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (131, '97', '2006-10-06', 'Contanti', 0.00, 30.00, '2', 'Rimborso Cosimo', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (132, '98', '2006-10-06', 'Contanti', 0.00, 25.00, '2', 'Rimborso Wilmo', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (133, '99', '2006-10-06', 'Contanti', 0.00, 25.00, '2', 'Rimborso Bertolino', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (134, '100', '2006-10-06', 'Contanti', 0.00, 25.00, '2', 'Rimborso Pavan Chiara', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (135, '101', '2006-10-06', 'Contanti', 0.00, 30.00, '2', 'Rimborso Canella', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (136, '102', '2006-10-06', 'Contanti', 0.00, 75.00, '2', 'Rimborso clarinetto invorio', 27, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (137, '232', '2006-07-22', 'Contanti', 0.00, 4.80, '2', '    Spese per acqua prove. ', 13, '2006-07-17', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (138, '72', '2006-10-06', 'Contanti', 0.00, 41.62, '2', '  Rimborso a Marica.    per rinfresco . ', 13, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (139, '104', '2006-07-22', 'Contanti', 450.00, 0.00, '2', ' Servizio festa alpini a Pray ', 22, '2006-06-11', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (140, '103', '2006-01-14', 'Contanti', 0.00, 44.12, '2', '   Acquisto n° 3 marche da bollo. Autentica ', 3, '2006-01-14', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (141, '103', '2006-01-14', 'Contanti', 0.00, 43.86, '2', 'Acquisto n° 3 marche da bollo', 1, '2006-01-14', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (142, '103', '2006-01-14', 'Contanti', 0.00, 43.86, '2', 'Acquisto n° 3 marche da bollo', 1, '2006-01-14', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (143, '30', '2006-01-18', 'Contanti', 0.00, 4.50, '2', ' Raccomandata  Ministero ', 3, '2006-01-18', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (144, '30', '2006-02-04', 'Contanti', 0.00, 230.00, '2', '   Premio Lotteria Santa Cecilia 2005.    Buono pasto Osteria Sottovoce   ', 29, '2006-02-04', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (145, '34', '2006-02-04', 'Contanti', 0.00, 110.50, '2', ' Rimborso Giuliani Roberto. Dicembre 2005/Gennaio 2006  ', 2, '2006-02-04', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (146, '116', '2006-02-06', 'Contanti', 0.00, 35.00, '2', '  Casella Postale   ', 3, '2006-02-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (147, '115', '2006-02-13', 'Contanti', 0.00, 55.00, '2', '  Acquisto cancelleria presso Isola che non c''è.   ', 12, '2006-02-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (148, '34', '2006-03-31', 'Contanti', 0.00, 156.00, '2', 'Rimborso Giuliani Roberto', 2, '2006-03-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (149, '103', '2006-01-01', 'Contanti', 579.41, 0.00, '2', '   Saldo iniziale    ', 32, '2005-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (150, '106', '2006-01-07', 'Contanti', 100.00, 0.00, '2', '  Oblazione Luciana e Rosanna Negri   ', 18, '2006-01-07', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (151, '107', '2006-01-07', 'Contanti', 100.00, 0.00, '2', 'Oblazione Fam. Lana', 18, '2006-01-07', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (152, '28', '2006-01-31', 'Contanti', 42.00, 0.00, '2', 'Squaratti Paolo. Mesi Dicembre 2005 / Gennaio 2006', 20, '2006-01-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (153, '56', '2006-01-31', 'Contanti', 20.00, 0.00, '2', '  Scuola Allievi Lezione Dicembre 2005/Gennaio 2006 Mancin Gabriele   ', 20, '2006-01-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (154, '108', '2006-01-22', 'Contanti', 100.00, 0.00, '2', '  Oblazione Navazza Giovanni    ', 18, '2006-01-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (155, '109', '2006-02-08', 'Contanti', 50.00, 0.00, '2', 'Oblazione Nobile Milena', 18, '2006-02-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (156, '110', '2006-02-05', 'Contanti', 240.00, 0.00, '2', '   Ara Sant''Agata    ', 22, '2006-02-05', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (157, '111', '2006-02-19', 'Contanti', 150.00, 0.00, '2', '  Carnevale Zuccaro   ', 22, '2006-02-19', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (158, '112', '2006-02-28', 'Contanti', 500.00, 0.00, '2', '  Carnevale Valduggia   ', 22, '2006-02-28', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (159, '113', '2006-03-05', 'Contanti', 270.00, 0.00, '2', '  Carnevale Lebbia   ', 22, '2006-03-05', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (160, '103', '2006-03-03', 'Contanti', 194.00, 0.00, '2', 'Allievi (ric. Ornella)', 20, '2006-03-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (161, '103', '2006-10-07', 'Bonifico Bancario', 0.00, 221133.00, '1', ' vcvcvccvcvcvcv   ccgcvvc  ', 1, '2006-10-07', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (162, '117', '2006-06-03', 'Contanti', 0.00, 45.00, '2', '  Rimborso De Paolis   ', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (163, '118', '2006-06-03', 'Contanti', 0.00, 25.00, '2', 'Rimborso Rondi', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (164, '120', '2006-06-03', 'Contanti', 0.00, 50.00, '2', ' Rimborso Vaudano Andrea', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (165, '97', '2006-06-03', 'Contanti', 0.00, 60.00, '2', ' Rimborso Cosimo', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (166, '121', '2006-06-03', 'Contanti', 0.00, 30.00, '2', ' Rimborso Erbetta', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (167, '122', '2006-06-03', 'Contanti', 0.00, 45.00, '2', ' Rimborso Poli', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (168, '123', '2006-06-03', 'Contanti', 0.00, 30.00, '2', ' Rimborso Canclini', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (169, '124', '2006-06-03', 'Contanti', 0.00, 100.00, '2', ' Rimborso Giletti', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (170, '96', '2006-06-03', 'Contanti', 0.00, 30.00, '2', ' Rimborso Sogno Paola', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (171, '125', '2006-06-03', 'Contanti', 0.00, 50.00, '2', '  Rimborso Alessio ghemme bombardino    ', 7, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (172, '79', '2006-06-03', 'Contanti', 0.00, 25.00, '2', ' Rimborso Flauto Romagnano ????', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (173, '87', '2006-06-03', 'Contanti', 0.00, 50.00, '2', ' Rimborso Mosca Francesca', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (174, '127', '2006-06-03', 'Contanti', 0.00, 30.00, '2', ' Rimborso Mattia ????', 27, '2006-06-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (175, '60', '2006-06-01', 'Contanti', 4.00, 0.00, '2', ' Oblazione Velatta Laura  ', 18, '2006-06-01', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (176, '83', '2006-07-12', 'Contanti', 0.00, 95.20, '2', 'Imposta Comunale sulla Pubblicità', 14, '2006-07-12', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (177, '129', '2006-06-19', 'Bonifico Bancario', 0.00, 31.18, '3', 'Bolletta enel bimestre aprile/maggio 2006', 9, '2006-06-19', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (178, '130', '2006-03-31', 'Bonifico Bancario', 0.00, 26.93, '3', '   Competenze Banca Intesa   ', 15, '2006-04-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (179, '130', '2006-03-31', 'Bonifico Bancario', 0.00, 2.80, '3', ' Commissione invio documenti', 15, '2006-04-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (180, '130', '2006-03-31', 'Bonifico Bancario', 0.00, 18.45, '3', ' Imposta di bollo su conto corrente', 15, '2006-04-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (181, '129', '2006-04-19', 'Bonifico Bancario', 0.00, 33.34, '3', '  Pagamento enel.', 9, '2006-04-19', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (182, '242', '2006-04-10', 'Bonifico Bancario', 0.00, 2400.00, '3', ' Acquisto Basso . Assegno n° = 3126252628  ', 5, '2006-04-12', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (183, '83', '2006-06-14', 'Bonifico Bancario', 1500.00, 0.00, '3', ' Bonifico ricevuto da "Comuine di Grignasco" a favore di Musica Società Operaia "del 12/06/2006" mandato 784 - Compenso banda soms per servizi 2005', 19, '2006-06-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (184, '131', '2006-06-14', 'Bonifico Bancario', 807.00, 0.00, '3', 'Servizio Prato Sesia. Bonifico ricevuto da comune di prato sesia a favore di musica società operaia   ', 22, '2006-06-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (185, '132', '2006-05-20', 'Bonifico Bancario', 796.05, 0.00, '3', '  Servizio Novara 2 giugno 2005. Bonifico ricevuto da comune di novara  ', 22, '2006-05-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (186, '114', '2006-10-07', 'Bonifico Bancario', 40000.00, 0.00, '1', '   zzzzzzzzzzzz   aaaaaaaaaaaa   ', 1, '2006-10-07', 'Y', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (187, '30', '2006-03-30', 'Versamento Contanti', 2000.00, 0.00, '3', '  Movimento da Cassa a Banca   ', 28, '2006-03-30', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (188, '30', '2006-03-30', 'Contanti', 0.00, 2000.00, '2', '   Movimento da Cassa a Banca  ', 28, '2006-03-30', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (189, '134', '2006-09-12', 'Contanti', 200.00, 0.00, '2', '    Vendita n° 2 metallofoni ', 30, '2006-09-12', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (190, '135', '2006-08-06', 'Contanti', 300.00, 0.00, '2', '  compenso per servizio valpiana 2006     ', 22, '2006-08-06', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (191, '136', '2006-08-15', 'Contanti', 200.00, 0.00, '2', '    rimborso spese servizio festa patronale 2006   ', 22, '2006-08-15', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (192, '137', '2006-08-16', 'Contanti', 240.00, 0.00, '2', '  rimborso servizio san rocco 2006 ', 22, '2006-08-16', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (193, '138', '2006-09-08', 'Contanti', 240.00, 0.00, '2', ' rimborso servizio Bovagliano 2006    ', 22, '2006-09-08', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (194, '139', '2006-10-06', 'Assegno Bancario', 300.00, 0.00, '3', '   rimborso servizio Rastiglione 2006    ', 22, '2006-10-06', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (195, '86', '2006-08-29', 'Contanti', 0.00, 100.00, '2', '    ricarica cellulare vodafone     ', 31, '2006-08-29', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (196, '137', '2006-08-16', 'Contanti', 0.00, 50.00, '2', ' acquisto pancetta festa di S rocco  ', 13, '2006-08-16', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (197, '115', '2006-09-12', 'Contanti', 0.00, 49.50, '2', ' acquisto carta A3 ', 12, '2006-09-12', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (198, '140', '2006-08-30', 'Contanti', 0.00, 24.00, '2', 'Acquisto n. 4 leggii   ', 5, '2006-08-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (199, '115', '2006-09-13', 'Contanti', 0.00, 2.50, '2', 'Acquisto buste per libretti    ', 12, '2006-09-13', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (200, '141', '2006-09-18', 'Contanti', 0.00, 17.70, '2', 'Spesa per fotocopie sinfonia dei giocattoli  ', 12, '2006-09-18', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (201, '116', '2006-06-02', 'Contanti', 0.00, 3.40, '2', ' raccomandata per servizio 2 giugno 2006 a novara  ', 3, '2006-06-02', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (202, '142', '2006-10-03', 'Contanti', 0.00, 188.00, '2', '  Assicurazione responsabilità civile 2006    scad 22-09-2007    ', 11, '2006-10-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (203, '143', '2006-10-07', 'Contanti', 0.00, 127.26, '2', '  acquisto partiture   ', 6, '2006-10-07', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (204, '144', '2006-10-07', 'Contanti', 0.00, 109.58, '2', '   partiture the persuaders amicalement votre  ', 6, '2006-10-07', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (205, '30', '2006-10-07', 'Contanti', 0.00, 467.93, '2', '    versamento da cassa a banca ', 28, '2006-10-07', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (206, '30', '2006-10-07', 'Versamento Contanti', 467.93, 0.00, '3', '     versamento contanti da cassa a banca  ', 28, '2006-10-07', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (207, '89', '2006-10-07', 'Contanti', 25.00, 0.00, '2', '  Oblazione Granieri Domenico ', 18, '2006-10-07', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (208, '102', '2006-10-07', 'Contanti', 75.00, 0.00, '2', ' oblazione besuzzi clarinetto invorio ', 18, '2006-10-07', 'N', 'andrea.baron', '2006');
INSERT INTO `sd_movimenti` VALUES (209, '114', '2006-10-11', 'Bonifico Bancario', 60000.00, 0.00, '1', '     adaddaasd    ', 30, '2006-10-11', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (210, '114', '2006-10-11', 'Bonifico Bancario', 30001.00, 0.00, '1', '   adaddaasd    ', 30, '2006-10-11', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (211, '114', '2006-10-11', 'Bonifico Bancario', 30001.00, 0.00, '1', '  adaddaasd   ', 30, '2006-10-11', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (212, '114', '2006-10-11', 'Bonifico Bancario', 0.00, 170001.00, '1', ' dfdfgdgdgdfgd aaaaaaaaaaaaaaaaaaaaaaaa     dsssd   ddddd   ', 30, '2006-10-11', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (213, '114', '2006-10-11', 'Bonifico Bancario', 0.00, 70000.00, '1', '    fdfdf  ggggg   ssdsdsd   ', 30, '2006-10-11', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (214, '125', '2006-12-08', 'Contanti', 0.00, 60.00, '2', ' Rimborso semestrale Alessio di ghemme (bombardino)  ', 7, '2006-12-08', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (215, '125', '2006-12-08', 'Contanti', 0.00, 60.00, '2', ' Rimborso semestrale Alessio di ghemme (bombardino)  ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (216, '100', '2006-12-08', 'Contanti', 0.00, 25.00, '2', '    Rimborso Chiara Pavan per concerto Immacolata 2006   ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (217, '117', '2006-12-08', 'Contanti', 0.00, 45.00, '2', '   Rimborso Alessandra DePaoli per concerto Immacolata 2006    ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (218, '118', '2006-12-08', 'Contanti', 0.00, 25.00, '2', 'Rimborso Rondi per concerto Immacolata 2006    ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (219, '94', '2006-12-08', 'Contanti', 0.00, 25.00, '2', ' Rimborso Capone Marcello per concerto Immacolata 2006', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (220, '98', '2006-12-08', 'Contanti', 0.00, 25.00, '2', '    Rimborso Bussolino Wilmo per concerto Immacolata 2006 ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (221, '87', '2006-12-08', 'Contanti', 0.00, 50.00, '2', ' Rimborso Mosca Francesca per concerto Immacolata 2006 ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (222, '101', '2006-12-08', 'Contanti', 0.00, 45.00, '2', '   Rimborso Canella per concerto Immacolata 2006   (2 prove + 1 concerto) ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (223, '88', '2006-12-08', 'Contanti', 0.00, 80.00, '2', '  Rimborso Grigolon per concerto Immacolata 2006 (1 prova + 1 concerto tariffa fissa)    ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (224, '80', '2006-12-08', 'Contanti', 0.00, 90.00, '2', ' Rimborso Poli Stefano per concerto Immacolata 2006    (5 prove + 1 concerto) ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (225, '122', '2006-12-08', 'Contanti', 0.00, 90.00, '2', '  Rimborso Poli Paolo per concerto Immacolata 2006 (5 prove + 1 concerto) ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (226, '99', '2006-12-08', 'Contanti', 0.00, 25.00, '2', '  Rimborso Bertolino Michele per concerto Immacolata 2006 (Forfait)   ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (227, '97', '2006-12-08', 'Contanti', 0.00, 45.00, '2', ' Rimborso Cosimo per concerto Immacolata 2006 (2 prove + 1 concerto) ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (228, '91', '2006-12-08', 'Contanti', 0.00, 60.00, '2', ' Rimborso Farassino (Gippo) per concerto Immacolata 2006  (3 prove + 1 concerto) ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (229, '149', '2006-12-08', 'Contanti', 0.00, 25.00, '2', '   Rimborso Martinetti Claudio per concerto Immacolata 2006  (forfait) ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (230, '78', '2006-12-08', 'Contanti', 0.00, 25.00, '2', '   Rimborso Calligaris Franco per concerto Immacolata 2006    (forfait)  ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (231, '120', '2006-12-08', 'Contanti', 0.00, 25.00, '2', '   Rimborso Vaudano Andrea per concerto Immacolata 2006    (forfait)  ', 27, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (232, '150', '2006-12-08', 'Contanti', 0.00, 62.00, '2', '   Rimborso Gessica (romagnano) 2006  ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (233, '60', '2006-12-08', 'Contanti', 0.00, 8.00, '2', ' Rimborso Velatta Laura 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (234, '151', '2006-12-08', 'Contanti', 0.00, 15.50, '2', '  Rimborso Vergerio Donatella 2006 ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (235, '152', '2006-12-08', 'Contanti', 0.00, 30.50, '2', ' Rimborso Flautina Romagnano 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (236, '30', '2006-12-08', 'Contanti', 0.00, 47.00, '2', '   Rimborso Belli Sergio 2006  ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (237, '66', '2006-12-08', 'Contanti', 0.00, 117.00, '2', '  Rimborso Borelli Ezio 2006     ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (238, '153', '2006-12-08', 'Contanti', 0.00, 9.00, '2', ' Rimborso Cabassa Diego 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (239, '154', '2006-12-08', 'Contanti', 0.00, 16.50, '2', ' Rimborso Claudio (Quarona) 2006  ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (240, '155', '2006-12-08', 'Contanti', 0.00, 88.00, '2', ' Rimborso De Angelis Martino 2006    ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (241, '156', '2006-12-08', 'Contanti', 0.00, 23.50, '2', ' Rimborso Ferrara Elena 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (242, '157', '2006-12-08', 'Contanti', 0.00, 76.00, '2', ' Rimborso Ferrara Floran 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (243, '158', '2006-12-08', 'Contanti', 0.00, 39.00, '2', ' Rimborso Ferro Andrea 2006  ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (244, '34', '2006-12-08', 'Contanti', 0.00, 12.00, '2', '  Rimborso Giuliani Roberto 2006 ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (245, '159', '2006-12-08', 'Contanti', 0.00, 10.50, '2', ' Rimborso Pietro (Coggiola) 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (246, '160', '2006-12-08', 'Contanti', 0.00, 127.00, '2', '  Rimborso Porzio Vittorio 2006 ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (247, '161', '2006-12-08', 'Contanti', 0.00, 112.50, '2', ' Rimborso Pozzi Mauro 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (248, '162', '2006-12-08', 'Contanti', 0.00, 164.50, '2', '    Rimborso Stefani Monica 2006   ', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (249, '163', '2006-12-08', 'Contanti', 0.00, 66.00, '2', ' Rimborso Trapella Bruno 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (250, '164', '2006-12-08', 'Contanti', 0.00, 48.50, '2', ' Rimborso Turuani Egidio 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (251, '165', '2006-12-08', 'Contanti', 0.00, 136.00, '2', ' Rimborso Bonfiglio Giacomo 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (252, '166', '2006-12-08', 'Contanti', 0.00, 52.00, '2', ' Rimborso Giglio Pasquale 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (253, '167', '2006-12-08', 'Contanti', 0.00, 11.50, '2', ' Rimborso Vogesi Antonio 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (254, '168', '2006-12-08', 'Contanti', 0.00, 51.50, '2', ' Rimborso Ferrara Gianni 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (255, '169', '2006-12-08', 'Contanti', 0.00, 89.00, '2', ' Rimborso Gallino Antonio 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (256, '170', '2006-12-08', 'Contanti', 0.00, 78.00, '2', ' Rimborso Ren Sergio 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (257, '171', '2006-12-08', 'Contanti', 0.00, 30.00, '2', ' Rimborso Ronco Renzo 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (258, '172', '2006-12-08', 'Contanti', 0.00, 59.00, '2', ' Rimborso Tosetti Enrico 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (259, '173', '2006-12-08', 'Contanti', 0.00, 21.50, '2', ' Rimborso Cascio 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (260, '71', '2006-12-08', 'Contanti', 0.00, 16.50, '2', 'Rimborso Barlassina Patrizia 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (261, '174', '2006-12-08', 'Contanti', 0.00, 62.00, '2', ' Rimborso Baron Andrea 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (262, '175', '2006-12-08', 'Contanti', 0.00, 116.50, '2', ' Rimborso Bino Italo 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (263, '176', '2006-12-08', 'Contanti', 0.00, 81.50, '2', ' Rimborso Bressan Luca 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (264, '177', '2006-12-08', 'Contanti', 0.00, 31.00, '2', ' Rimborso Giglio Nicola 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (265, '31', '2006-12-08', 'Contanti', 0.00, 18.00, '2', ' Rimborso Mischiatti Dino 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (266, '24', '2006-12-08', 'Contanti', 0.00, 75.50, '2', ' Rimborso Pozzi Carlo 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (267, '178', '2006-12-08', 'Contanti', 0.00, 81.50, '2', ' Rimborso Rognoni Umberto 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (268, '179', '2006-12-08', 'Contanti', 0.00, 28.50, '2', ' Rimborso Vistali Mario 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (269, '180', '2006-12-08', 'Contanti', 0.00, 64.50, '2', ' Rimborso Cecchini (Coggiola) 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (270, '28', '2006-12-08', 'Contanti', 0.00, 10.00, '2', ' Rimborso Squaratti Paolo 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (271, '181', '2006-12-08', 'Contanti', 0.00, 16.00, '2', ' Rimborso Allorio Bruno 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (272, '182', '2006-12-08', 'Contanti', 0.00, 79.50, '2', ' Rimborso Bagarotti Francesco 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (273, '183', '2006-12-08', 'Contanti', 0.00, 123.50, '2', ' Rimborso Baglioni Corrado 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (274, '184', '2006-12-08', 'Contanti', 0.00, 66.00, '2', ' Rimborso Da Paré Paolo 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (275, '22', '2006-12-08', 'Contanti', 0.00, 49.50, '2', ' Rimborso Dilernia Giuseppe 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (276, '185', '2006-12-08', 'Contanti', 0.00, 40.50, '2', ' Rimborso Fornaro Michele 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (277, '84', '2006-12-08', 'Contanti', 0.00, 156.50, '2', ' Rimborso Negri Gilberto 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (278, '186', '2006-12-08', 'Contanti', 0.00, 36.00, '2', ' Rimborso Trombone Masserano Agostino 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (279, '187', '2006-12-08', 'Contanti', 0.00, 70.00, '2', ' Rimborso Baglioni Davide 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (280, '188', '2006-12-08', 'Contanti', 0.00, 85.00, '2', ' Rimborso Perotto Eraldo 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (281, '189', '2006-12-08', 'Contanti', 0.00, 12.00, '2', ' Rimborso Giraldi Gianni 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (282, '26', '2006-12-08', 'Contanti', 0.00, 33.00, '2', ' Rimborso Pontini Andrea 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (283, '190', '2006-12-08', 'Contanti', 0.00, 23.50, '2', ' Rimborso Testori Giuseppe 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (284, '191', '2006-12-08', 'Contanti', 0.00, 29.00, '2', ' Rimborso Zanellato Francesco 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (285, '192', '2006-12-08', 'Contanti', 0.00, 84.00, '2', ' Rimborso Azzalin Antonio 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (286, '193', '2006-12-08', 'Contanti', 0.00, 156.00, '2', ' Rimborso Bertaggia Ruggero 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (287, '194', '2006-12-08', 'Contanti', 0.00, 24.00, '2', ' Rimborso Bertolini Enrico 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (288, '195', '2006-12-08', 'Contanti', 0.00, 62.00, '2', ' Rimborso Bertolini Franco 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (289, '196', '2006-12-08', 'Contanti', 0.00, 100.00, '2', ' Rimborso Contardi Marco 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (290, '197', '2006-12-08', 'Contanti', 0.00, 23.50, '2', ' Rimborso Farinone 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (291, '198', '2006-12-08', 'Contanti', 0.00, 64.50, '2', ' Rimborso Silvestri Riccardo 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (292, '199', '2006-12-08', 'Contanti', 0.00, 19.00, '2', ' Rimborso Zanolo Gianni 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (293, '200', '2006-12-08', 'Contanti', 0.00, 8.00, '2', ' Rimborso Cassa Romagnano 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (294, '201', '2006-12-08', 'Contanti', 0.00, 5.00, '2', ' Rimborso Romagnano Tromba 2006', 7, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (295, '34', '2006-12-09', 'Contanti', 0.00, 71.50, '2', ' Rimborso spese Giuliani Roberto novembre 2006', 2, '2006-12-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (296, '133', '2006-12-12', 'Bonifico Bancario', 0.00, 10000.00, '1', ' wwddddddddddddddddddd    ', 21, '2006-12-12', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (297, '84', '2006-12-09', 'Contanti', 0.00, 1027.00, '2', ' Rimborso Negri Gilberto  periodo luglio/dicembre 2006   ', 2, '2006-12-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (298, '89', '2006-12-09', 'Contanti', 25.00, 0.00, '2', ' Oblazione Domenico Granieri', 18, '2006-12-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (299, '102', '2006-12-09', 'Contanti', 75.00, 0.00, '2', ' Oblazione Clarinetto INvorio Besuzzi', 18, '2006-12-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (300, '26', '2007-01-13', 'Contanti', 20.00, 0.00, '2', '  Contributo lezioni Pontini Andrea periodo Marzo / Aprile 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (301, '57', '2007-01-13', 'Contanti', 20.00, 0.00, '2', ' Contributo Lezioni Magistrini Andrea periodo Marzo / Aprile 2006   ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (302, '28', '2007-01-13', 'Contanti', 10.00, 0.00, '2', '  Contributo Lezioni Squaratti Paolo periodo Maggio 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (303, '56', '2007-01-13', 'Contanti', 10.00, 0.00, '2', '  Contributo Lezioni Mancin Gabriele periodo Giugno 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (304, '28', '2007-01-13', 'Contanti', 43.00, 0.00, '2', ' Contributo Lezione/Strumento Squaratti Paolo periodo Giugno 2006  Rimborso Strumento Squaratti Paolo periodo Luglio / Agosto 2006    ', 20, '2006-07-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (305, '28', '2007-01-13', 'Contanti', 21.00, 0.00, '2', '  Contributo Lezioni + Strumento Squaratti Paolo periodo Aprile 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (306, '202', '2007-01-13', 'Contanti', 21.00, 0.00, '2', '  Contributo Lezioni + Strumento Balzano Massimiliano periodo Aprile 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (307, '203', '2007-01-13', 'Contanti', 148.00, 0.00, '2', '  Contributo Lezioni Massarotti periodo Gennaio / Agosto 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (308, '25', '2007-01-13', 'Contanti', 11.00, 0.00, '2', '  Contributo Strumento Pagnoni Federico periodo Aprile 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (309, '56', '2007-01-13', 'Contanti', 20.00, 0.00, '2', '  Contributo Lezioni Mncin Gabriele periodo Aprile / Maggio 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (310, '55', '2007-01-13', 'Contanti', 20.00, 0.00, '2', '  Contributo Lezioni Moretti Eleonora periodo Aprile / Maggio 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (311, '23', '2007-01-13', 'Contanti', 20.00, 0.00, '2', '  Contributo Lezioni Agazzini Linda e Lorenzo periodo Aprile 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (312, '22', '2007-01-13', 'Contanti', 10.00, 0.00, '2', '  Contributo Lezioni Di Lernia Giuseppe periodo Aprile 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (313, '24', '2007-01-13', 'Contanti', 10.00, 0.00, '2', '  Contributo Lezioni Pozzi Carlo periodo Maggio 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (314, '78', '2007-01-13', 'Contanti', 25.00, 0.00, '2', ' Oblazione Calligaris Franco su Rimborso per concerto Immacolata 2006 (forfait)', 18, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (315, '205', '2006-12-08', 'Contanti', 0.00, 15.00, '2', '  Fotocopie per Programma Concerto Immacolata 2006 ', 12, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (316, '206', '2006-12-09', 'Contanti', 0.00, 29.00, '2', '  Biscotti per rinfresco Concerto Immacolata 2006 ', 13, '2006-12-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (317, '207', '2006-12-08', 'Contanti', 0.00, 249.00, '2', '   Primo premio sottoscrizione a premi 2006 (TV LCD)   ', 29, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (318, '83', '2006-12-09', 'Contanti', 0.00, 27.20, '2', '  Imposta manifesti Santa Cecilia 2006 ', 14, '2006-12-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (319, '25', '2007-01-13', 'Contanti', 21.00, 0.00, '2', '     Contributo Lezioni/Strumento Pagnoni Federico   periodo Maggio 2006 ', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (320, '22', '2007-01-13', 'Contanti', 10.00, 0.00, '2', ' Contributo Lezioni Di Lernia Giuseppe periodo Maggio 2006', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (321, '23', '2007-01-13', 'Contanti', 20.00, 0.00, '2', ' Contributo Lezioni Agazzini Lidia e Lorenzo periodo Maggio 2006', 20, '2007-01-13', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (322, '204', '2007-01-13', 'Contanti', 250.00, 0.00, '2', '   Rimborso servizio alpini Grignasco   ', 22, '2006-07-21', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (323, '98', '2007-01-13', 'Contanti', 25.00, 0.00, '2', ' Oblazione Wilmo su Rimborso per concerto Immacolata 2006', 18, '2006-12-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (324, '65', '2006-11-29', 'Assegno Bancario', 0.00, 500.00, '3', '                             Rimborso Platini Fabrizio periodo settembre/ottobre 2006. ASSEGNO NR 3173573041                         ', 2, '2006-12-12', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (325, '208', '2007-01-13', 'Contanti', 1075.00, 0.00, '2', 'Incassi da vendita biglietti sottoscrizione a premi (pranzo santa cecilia 2006). Blocchetti da 127 a 169 (n° 43 blocchetti). Biglietti da numero 3176 a 4750. Conto unitario 1 euro.', 23, '2006-12-10', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (326, '209', '2007-01-13', 'Contanti', 0.00, 1050.00, '2', ' Pranzo santa cecilia 2006 Casa Galloni. (Ricevuta fiscale n 1030 da 2100 euro, la differenza pagata da simpatizzanti presenti al pranzo) ', 13, '2006-12-10', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (327, '123', '2007-01-13', 'Contanti', 0.00, 15.00, '2', ' Rimborso servizio alpini grignasco a Canclini Mauro', 27, '2006-12-10', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (328, '155', '2006-12-05', 'Assegno Bancario', 0.00, 4348.00, '3', '                              Prelievo da banca a cassa per rimborsi annuali musici ed esterni 8 dicembre 2006. (Bonifico effettuato su conto di De Angelis Martino, che poi ha prelevato dal suo conto). ASSEGNO NR 3173573042                           ', 28, '2006-12-05', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (329, '155', '2007-01-13', 'Contanti', 4348.00, 0.00, '2', ' Entrata da Banca a cassa per pagamento musici e rimborso esterni 8 dicembre 2006.', 28, '2006-12-05', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (330, '208', '2007-01-13', 'Contanti', 466.50, 0.00, '2', '  Entrate a seguito vendita torte per santa cecilia 2006. ', 23, '2006-12-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (331, '210', '2007-01-13', 'Contanti', 516.50, 0.00, '2', ' Offerte ricevute per il concerto di santa cecilia 2006', 22, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (332, '211', '2007-01-13', 'Contanti', 0.00, 53.32, '2', ' Spese per rinfresco Santa cecilia 2006 (e cesti per sottoscrizioni a premi)', 13, '2006-12-05', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (333, '212', '2007-01-13', 'Contanti', 0.00, 45.00, '2', ' Acquisto tranci pizza presso Peccati di Gola', 13, '2006-12-08', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (334, '212', '2007-01-13', 'Contanti', 0.00, 45.00, '2', ' Acquisto tranci pizza presso Peccati di Gola', 13, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (335, '214', '2007-01-13', 'Contanti', 0.00, 2.79, '2', ' Acquisto generi alimentari per rinfresco santa cecilia 2006', 13, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (336, '83', '2007-01-13', 'Contanti', 0.00, 13.60, '2', ' Imposta comunale pubblicità per affissione cartelloni. concerto del 26/12/2006', 14, '2006-12-18', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (337, '122', '2007-01-13', 'Contanti', 0.00, 30.00, '2', ' Rimborso Poli Paolo per concerto 26/12/2006', 27, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (338, '99', '2007-01-13', 'Contanti', 0.00, 25.00, '2', '   Rimborso Bertolino Michele per concerto 26/12/2006', 27, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (339, '125', '2007-01-13', 'Contanti', 0.00, 20.00, '2', '   Rimborso Alessio per concerto 26/12/2006', 27, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (340, '124', '2007-01-13', 'Contanti', 0.00, 75.00, '2', '   Rimborso Giletti PierAngelo per concerto 26/12/2006', 27, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (341, '127', '2007-01-13', 'Contanti', 0.00, 50.00, '2', '   Rimborso Mattia per concerto 26/12/2006', 27, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (342, '215', '2007-01-13', 'Contanti', 0.00, 25.00, '2', '   Rimborso Facciotti Piero per concerto 26/12/2006', 27, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (343, '78', '2007-01-13', 'Contanti', 0.00, 25.00, '2', '   Rimborso Calligaris Franco per concerto 26/12/2006', 27, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (344, '89', '2007-01-13', 'Contanti', 0.00, 25.00, '2', '   Rimborso Granieri Domenico per concerto 26/12/2006', 27, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (345, '215', '2007-01-13', 'Contanti', 25.00, 0.00, '2', ' Oblazione su   Rimborso Facciotti Piero per concerto 26/12/2006', 18, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (346, '78', '2007-01-13', 'Contanti', 25.00, 0.00, '2', ' Oblazione   Rimborso Calligaris Franco per concerto 26/12/2006', 18, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (347, '89', '2007-01-13', 'Contanti', 25.00, 0.00, '2', '  Oblazione  Rimborso Granieri Domenico per concerto 26/12/2006', 18, '2006-12-26', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (348, '216', '2007-01-13', 'Contanti', 0.00, 28.50, '2', ' Acquisto premi presso Punto SMA (usato buono spesa)', 29, '2006-12-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (349, '130', '2007-01-14', 'Versamento Contanti', 15841.62, 0.00, '3', ' Saldo iniziale conto corrente in data 31/12/2005.', 32, '2005-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (350, '217', '2007-01-14', 'Assegno Bancario', 240.00, 0.00, '3', '  Rimborso spese servizio  AVIS a Prato Sesia. ', 22, '2006-11-27', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (351, '218', '2007-01-14', 'Contanti', 200.00, 0.00, '2', ' Oblazione di Tassan Ernesto in memoria di Negri Gina', 18, '2007-01-14', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (352, '219', '2007-01-14', 'Contanti', 0.00, 93.00, '2', ' Acquisto Cesto Valsesiano per premio lotteria santa cecilia 2006', 29, '2006-12-02', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (353, '72', '2007-01-14', 'Contanti', 0.00, 18.00, '2', ' Spese postali acquisto francobolli n30 x 0,60 euro.', 3, '2006-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (354, '72', '2007-01-14', 'Contanti', 0.00, 33.89, '2', ' Spese postali acquisto marche da bollo n2 x 14.62 euro. Spese per raccomandata 4,65 euro.', 3, '2006-10-28', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (355, '25', '2007-01-14', 'Contanti', 11.00, 0.00, '2', '  Contributo Strumento Pagnoni Federico periodo Settembre 2006   ', 20, '2006-09-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (356, '23', '2007-01-14', 'Contanti', 20.00, 0.00, '2', ' Contributo Lezioni Famiglia Agazzini (linda e lorenzo) periodo Ottobre 2006. ', 20, '2006-10-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (357, '220', '2007-01-14', 'Contanti', 10.00, 0.00, '2', ' Contributo Lezioni Vaccaro Vito periodo Ottobre 2006.   ', 20, '2006-10-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (358, '221', '2007-01-14', 'Contanti', 10.00, 0.00, '2', ' Contributo Lezioni Rosaclerio Camilla periodo Ottobre 2006. ', 20, '2006-10-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (359, '24', '2007-01-14', 'Contanti', 20.00, 0.00, '2', ' Contributo Lezioni Pozzi Carlo periodo Ottobre / Novembre 2006. ', 20, '2006-10-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (360, '202', '2007-01-14', 'Contanti', 50.00, 0.00, '2', ' Contributo Lezioni Balzano Massimiliano periodo Maggio / Ottobre 2006. ', 20, '2006-10-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (361, '22', '2007-01-14', 'Contanti', 10.00, 0.00, '2', '  Contributo Lezioni Di Lernia Giuseppe periodo Ottobre 2006.    ', 20, '2006-10-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (362, '222', '2007-01-14', 'Contanti', 10.00, 0.00, '2', '     Contributo Lezioni Mingolla Paola periodo Ottobre 2006.   ', 20, '2006-10-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (363, '203', '2007-01-14', 'Contanti', 21.00, 0.00, '2', 'Contributo Lezioni/Strumento Massarotti Francesca periodo Ottobre 2006.', 20, '2006-10-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (364, '28', '2007-01-14', 'Contanti', 11.00, 0.00, '2', '  Contributo Strumento Squaratti Paolo periodo Settembre 2006.', 20, '2006-10-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (365, '223', '2007-01-14', 'Contanti', 0.00, 160.00, '2', ' Rimborso musici di confienza per servizio Pray.', 27, '2007-01-14', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (366, '114', '2007-01-15', 'Ricevuta Bancaria', 20001.00, 0.00, '1', '  BALALALLALALALALALLA   ', 2, '2007-01-15', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (367, '103', '2007-01-17', '', 0.00, 300000.00, '', '  eretetertetetertrtetetetertet ', 0, '2007-01-17', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (368, '103', '2007-01-17', '', 0.00, 300000.00, '', '  eretetertetetertrtetetetertet ', 0, '2007-01-17', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (369, '114', '2007-01-16', 'Contanti', 0.00, 40000.00, '2', '  tytututyutyutyutyuituity   ', 18, '2007-01-16', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (370, '114', '2007-01-16', 'Contanti', 0.00, 1.00, '2', ' Tesseramento xxxx yyyy ', 18, '2007-01-16', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (371, '114', '2007-01-16', 'Contanti', 0.00, 1.00, '2', ' Tesseramento xxxx yyyy ', 18, '2007-01-16', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (372, '114', '2007-01-16', 'Contanti', 0.00, 1.00, '2', ' Tesseramento xxxx yyyy ', 18, '2007-01-16', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (373, '134', '2007-01-16', 'Contanti', 0.00, 12.00, '2', 'Tesseramento 2007', 18, '2007-01-16', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (374, '134', '2007-01-16', 'Contanti', 0.00, 12.00, '2', 'Tesseramento 2007', 18, '2007-01-16', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (375, '134', '2007-01-16', 'Contanti', 0.00, 12.00, '2', 'Tesseramento 2007', 18, '2007-01-16', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (376, '83', '2007-01-31', 'Contanti', 0.00, 1000000.00, '2', 'Tesseramento 2005', 18, '2007-01-31', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (377, '83', '2007-01-31', 'Contanti', 0.00, 1000000.00, '2', 'Tesseramento 2005', 18, '2007-01-31', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (378, '83', '2007-01-31', 'Contanti', 0.00, 1000000.00, '2', 'Tesseramento 2005', 18, '2007-01-31', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (379, '83', '2007-01-31', 'Contanti', 0.00, 1000000.00, '2', 'Tesseramento 2005', 18, '2007-01-31', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (380, '83', '2007-01-31', 'Contanti', 0.00, 1000000.00, '2', 'Tesseramento 2005', 18, '2007-01-31', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (381, '83', '2007-01-31', 'Contanti', 0.00, 1000000.00, '2', 'Tesseramento 2005', 18, '2007-01-31', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (382, '134', '2007-01-16', 'Contanti', 0.00, 12.00, '2', 'Tesseramento 2005', 18, '2007-01-16', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (383, '83', '2007-01-16', 'Contanti', 0.00, 34.00, '2', 'Tesseramento 2005', 18, '2007-01-16', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (384, '133', '2007-01-15', 'Contanti', 0.00, 100.00, '2', 'Tesseramento 2007', 18, '2007-01-15', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (385, '114', '2007-01-17', 'Bonifico Bancario', 0.00, 100000.00, '1', ' dfsddffsddfsdfs  ', 4, '2007-01-17', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (386, '114', '2007-01-17', 'Bonifico Bancario', 100000.00, 0.00, '1', 'sffddfdfdfdf', 4, '2007-01-17', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (387, '8', '2007-01-18', '2007', 100000.00, 0.00, '1', '     asaasasas  ', 25, '2007-01-18', 'Y', 'sergio.belli', 'Boni');
INSERT INTO `sd_movimenti` VALUES (388, '8', '2007-01-18', '2007', 100000.00, 0.00, '1', '     asaasasas  ', 25, '2007-01-18', 'Y', 'sergio.belli', 'Boni');
INSERT INTO `sd_movimenti` VALUES (389, '113', '2007-01-18', 'Bonifico Bancario', 100000.00, 0.00, '1', '   sdsdsdds    ', 25, '2007-01-18', 'Y', 'sergio.belli', '2010');
INSERT INTO `sd_movimenti` VALUES (390, '69', '2007-01-18', 'Bonifico Bancario', 100000.00, 0.00, '1', ' sfdfdfdfdfdf    ', 4, '2007-01-18', 'Y', 'sergio.belli', '2005');
INSERT INTO `sd_movimenti` VALUES (391, '59', '2007-01-18', 'Bonifico Bancario', 0.00, 1000001.00, '1', '   adadsdsdsd    ', 5, '2007-01-18', 'Y', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (392, '231', '2007-01-22', 'Contanti', 0.00, 164.70, '2', ' Onere SIAE per permesso 2007 euro 164.63.', 8, '2007-01-22', 'Y', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (393, '34', '2007-01-22', 'Contanti', 0.00, 97.50, '2', ' Rimborso Giuliani Roberto periodo mese ottobre 2006.', 2, '2006-11-14', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (394, '259', '2007-01-22', 'Contanti', 0.00, 32.00, '2', ' Rimborso a DeAngelis Martino per acquisto pelle per riparazione cassa in seguito a rottura da parte di Silvestri Riccardo. ', 5, '2007-01-16', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (395, '65', '2006-04-13', 'Assegno Bancario', 0.00, 430.00, '3', '  Rimborso Platini Fabrizio mesi Gennaio/Febbraio 2006. Assegno n° 3126252627', 2, '2006-04-11', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (396, '86', '2007-01-22', 'Contanti', 0.00, 100.00, '2', ' Spese per ricarica telefonica 100 euro. ', 31, '2007-01-22', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (397, '72', '2007-01-22', 'Contanti', 0.00, 2.00, '2', ' Rimborso a Regis Marica per marche da bollo e francobolli (1,89 euro).', 3, '2007-01-22', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (398, '130', '2006-12-31', 'Bonifico Bancario', 0.00, 18.45, '3', '  Imposta di bollo su conto corrente.   ', 15, '2007-01-04', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (399, '130', '2006-12-31', 'Bonifico Bancario', 0.00, 1.80, '3', ' Commissione invio e/conto e lettere trasparenza ', 15, '2007-01-04', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (400, '130', '2006-12-31', 'Bonifico Bancario', 0.00, 28.36, '3', ' Competenze banca intesa ', 15, '2007-01-04', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (401, '129', '2006-12-19', 'Bonifico Bancario', 0.00, 37.09, '3', ' Bolletta enel periodo ottobre/novembre 2006', 9, '2006-12-19', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (402, '130', '2006-01-01', 'Bonifico Bancario', 0.00, 12.00, '3', '                            Canone annuale intesa on line. CANONE ANNUALE INTESA ONLINE PERIODO 12/2006-12/2007                        ', 15, '2006-01-01', 'N', 'sergio.belli', '2005');
INSERT INTO `sd_movimenti` VALUES (403, '129', '2006-10-17', 'Bonifico Bancario', 0.00, 38.18, '3', 'Pagamento bolletta enel.', 9, '2006-10-17', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (404, '228', '2006-10-09', 'Versamento Contanti', 1975.00, 0.00, '3', 'Contributo scuola allievi anno 2006', 26, '2006-10-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (405, '130', '2006-09-30', 'Bonifico Bancario', 0.00, 18.45, '3', 'Imposta bollo su conto corrente', 15, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (406, '130', '2006-09-30', 'Bonifico Bancario', 0.00, 1.80, '3', 'Commissione invio E/conto e lettere trasparenza', 15, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (407, '130', '2006-09-30', 'Bonifico Bancario', 0.00, 23.68, '3', 'Competenze banca intesa', 15, '2006-10-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (408, '129', '2006-08-17', 'Bonifico Bancario', 0.00, 33.42, '3', 'Pagamento bolletta enel.', 9, '2006-08-17', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (409, '130', '2006-06-30', 'Bonifico Bancario', 0.00, 18.45, '3', 'Imposta di bollo su conto corrente', 15, '2006-07-05', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (410, '130', '2006-06-30', 'Bonifico Bancario', 0.00, 1.80, '3', 'Commissione invio e/conto e lettere trasparenza', 15, '2006-07-05', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (411, '130', '2006-06-30', 'Bonifico Bancario', 0.00, 28.22, '3', 'Competenze banca intesa.', 15, '2006-07-05', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (412, '129', '2006-02-20', 'Bonifico Bancario', 0.00, 36.98, '3', 'Pagamento bolletta enel', 9, '2006-02-20', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (413, '116', '2007-01-23', 'Contanti', 0.00, 35.00, '2', 'Affitto annuale 2007 della casella postale . ', 3, '2007-01-20', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (414, '86', '2007-01-31', 'Bonifico Bancario', 0.00, 100000.00, '2', ' dfdfdfddf', 28, '2007-01-31', 'Y', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (415, '211', '2007-02-10', 'Contanti', 0.00, 23.10, '2', ' Rimborso a Sergio Belli per acquisto cancelleria. ', 12, '2007-01-22', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (416, '69', '2007-02-17', 'Bonifico Bancario', 100000.00, 0.00, '3', '  sddsdssdsd  ', 4, '2007-02-17', 'Y', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (417, '65', '2007-02-18', 'Assegno Bancario', 0.00, 600.00, '3', '                             Rimborso spese Platini Fabrizio periodo novembre dicembre 2006     .ASSEGNO NR 3173573045                   ', 2, '2007-02-18', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (418, '234', '2007-02-18', 'Contanti', 0.00, 500.00, '2', '    Spese per acquisto fotocopiatrice da Vinzio Maurilia.  ', 35, '2007-02-18', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (419, '34', '2007-02-18', 'Contanti', 0.00, 39.00, '2', 'Rimborso spese Giuliani Roberto dicembre 2006', 2, '2007-02-18', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (420, '34', '2007-02-18', 'Contanti', 0.00, 78.00, '2', 'Rimborso spese Giuliani Roberto gennaio 2007', 2, '2007-02-18', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (421, '25', '2007-03-04', 'Contanti', 21.00, 0.00, '2', ' Contributo lezioni + strumento Pagnoni Federico Ottobre 2006    ', 20, '2006-10-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (422, '56', '2007-03-04', 'Contanti', 30.00, 0.00, '2', ' Contributo Lezioni Mancin Gabriele Ottobre/Novembre/Dicembre 2006    ', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (423, '235', '2007-02-08', 'Assegno Bancario', 500.00, 0.00, '3', '  Offerta per concerto santo stefano 2006 ', 22, '2006-12-26', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (424, '112', '2007-02-20', 'Contanti', 270.00, 0.00, '2', 'Offerta per servizio di Valduggia 2006 ', 22, '2007-02-20', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (425, '236', '2007-02-18', 'Contanti', 0.00, 15.00, '2', 'Rimborso Basso Gattinara (Riccardo) per servizio Piane 2007   ', 27, '2007-02-18', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (426, '237', '2007-03-01', 'Assegno Bancario', 300.00, 0.00, '3', '                            Offerta per servizio Piane di Serravalle Sesia 2007                          ', 22, '2007-03-01', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (427, '129', '2007-02-19', 'Bonifico Bancario', 0.00, 30.34, '3', 'Spese Enel periodo Dicembre 2006 /    Gennaio 2007   ', 9, '2007-02-19', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (428, '140', '2006-12-19', 'Contanti', 0.00, 849.00, '2', 'Acquisto trombone Yamaha mod 350. Acquisto chitarra classica. (Donazione in memoria di Astolfi Gian Vito) ', 5, '2006-12-19', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (429, '140', '2006-12-16', 'Contanti', 0.00, 758.00, '2', 'Acquisto saxofono tenore Maxtone. (Strumento Marika) ', 5, '2006-12-16', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (430, '238', '2006-11-11', 'Contanti', 0.00, 98.00, '2', 'Acquisto bocchino tuba Yamaha  e marsupio tuba Dampi. ', 5, '2006-11-11', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (431, '239', '2006-10-21', 'Contanti', 805.00, 0.00, '2', ' Entrate a seguito di acquisto biglietti per Pomeriggio Musicale a Milano 2006.  35 persone x 23 euro = 805. ', 33, '2006-10-21', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (432, '240', '2006-10-27', 'Contanti', 0.00, 495.00, '2', ' Ingresso Concerto di sabato 4 Novembre ore 16:00 nell''ambito del Pomeriggio Musicale a Milano 2006. Posti 38 x 13 euro = 494.00  Compreso di 1 euro per vaglia postale.    ', 33, '2006-10-27', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (433, '241', '2006-10-04', 'Contanti', 0.00, 300.00, '2', 'Noleggio Pullman Baranzelli nell''ambito del Pomeriggio Musica a Milano 2006  ', 33, '2006-10-04', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (434, '241', '2006-11-08', 'Assegno Bancario', 0.00, 160.00, '3', ' Rimborso a Baranzelli per noleggio pullman Servizio a novara 2 giugno 2006 . Numero assegno 3126252630.   ', 34, '2006-06-02', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (435, '241', '2006-11-08', 'Assegno Bancario', 0.00, 300.00, '3', 'Rimborso Baranzelli per noleggio pullman in occasione del Pomeriggio Musicale a Milano 2006. Numero assegno 3126252630. ', 33, '2006-11-04', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (436, '243', '2006-11-09', 'Contanti', 0.00, 39.00, '2', 'Acquisto combustibile stufa presso Trony quarona  ', 10, '2006-11-09', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (437, '115', '2006-12-04', 'Contanti', 0.00, 2.00, '2', 'Acquisto buste per paghe musici 2006    ', 12, '2006-12-04', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (438, '155', '2006-11-03', 'Contanti', 0.00, 6.40, '2', 'Acquisto raccoglitore per articoli giornali ', 12, '2006-11-03', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (439, '141', '2006-11-06', 'Contanti', 0.00, 43.40, '2', 'Fotocopie varie ', 12, '2006-11-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (440, '211', '2006-11-06', 'Contanti', 0.00, 1.41, '2', 'Acquisto etichette   ', 12, '2006-11-06', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (441, '113', '2007-01-30', 'Contanti', 270.00, 0.00, '2', 'Offerta per carnevale Lebbia 2007   ', 22, '2007-01-30', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (442, '69', '2007-02-25', 'Contanti', 0.00, 204.04, '2', 'Spese tesseramento Anbima 2007.  ', 17, '2007-02-25', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (443, '238', '2006-12-20', 'Contanti', 0.00, 412.50, '2', 'Spese riparazione 2 trombe ed 1 trombone.', 5, '2006-12-20', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (444, '236', '2006-06-02', 'Contanti', 0.00, 15.00, '2', 'Rimborso basso gattinara (riccardo) per servizio 2 giugno 2006   ', 27, '2006-06-02', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (445, '26', '2007-03-04', 'Contanti', 20.00, 0.00, '2', 'Contributo Lezioni Pontini Andrea Novembre / Dicembre 2006 ', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (446, '244', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Contributo lezioni Carbone Nicolò Novembre 2006 ', 20, '2006-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (447, '202', '2007-03-04', 'Contanti', 20.00, 0.00, '2', 'Contributo lezioni Balzano Massimiliano novembre dicembre 2006 ', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (448, '24', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Contributo lezioni Pozzi Carlo dicembre 2006   ', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (449, '24', '2007-03-04', 'Contanti', 10.00, 0.00, '2', '  Contributo lezioni Pozzi Carlo gennaio 2007    ', 20, '2007-01-31', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (450, '29', '2007-03-04', 'Contanti', 42.00, 0.00, '2', 'Contributo lezioni/strumento Aprile Mauro novembre dicembre 2006 ', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (451, '56', '2007-03-04', 'Contanti', 20.00, 0.00, '2', 'Contributo lezioni Mancin Gabriele gennaio febbraio 2007  ', 20, '2007-02-28', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (452, '55', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Contributo lezioni Moretti Eleonora gennaio 2007 ', 20, '2007-01-31', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (453, '25', '2007-03-04', 'Contanti', 21.00, 0.00, '2', 'Contributo lezioni Pagnoni Federico gennaio 2007   ', 20, '2007-01-31', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (454, '25', '2007-03-04', 'Contanti', 21.00, 0.00, '2', 'Contributo lezioni/strumento Pagnoni Federico dicembre 2006   ', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (455, '173', '2007-03-04', 'Contanti', 140.00, 0.00, '2', 'Contributo lezioni Famiglia Cascio marzo/aprile/maggio/giugno Ottobre/novembre/dicembre 2006', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (456, '25', '2007-03-04', 'Contanti', 21.00, 0.00, '2', 'Contributo lezioni/strumento Pagnoni Federico novembre 2006 ', 20, '2006-11-30', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (457, '55', '2007-03-04', 'Contanti', 20.00, 0.00, '2', 'Contributo lezioni Moretti Eleonora novembre dicembre 2006    ', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (458, '220', '2007-03-04', 'Contanti', 20.00, 0.00, '2', 'Contributo lezioni Vaccaro Vito novembre dicembre 2006  ', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (459, '220', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Contributo lezioni Vaccaro Vito gennaio 2007 ', 20, '2007-01-31', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (460, '245', '2007-03-04', 'Contanti', 0.00, 35.00, '2', 'Acquisto cesto prodotti equo solidali presso La Bottega del Mondo   ', 29, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (461, '23', '2007-03-04', 'Contanti', 40.00, 0.00, '2', 'Contributo lezioni Famiglia Agazzini novembre dicembre 2006', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (462, '222', '2007-03-04', 'Contanti', 20.00, 0.00, '2', 'Contributo lezioni Mingolla Paola novembre dicembre 2006 ', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (463, '58', '2007-03-04', 'Contanti', 30.00, 0.00, '2', 'Contributo lezioni Schizzerotto Leonardo ottobre novembre dicembre 2006   ', 20, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (464, '58', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Contributo lezioni Schizzerotto Leonardo gennaio 2007  ', 20, '2007-01-31', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (465, '258', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Tessera 2006 Donetti Roberto  ', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (466, '257', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Tessera 2006 Donetti Maris   ', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (467, '256', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Tessera 2006 Canobio Angioletta    ', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (468, '255', '2007-03-04', 'Contanti', 6.00, 0.00, '2', 'Tessera 2006 Arienta Maria Rosa', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (469, '254', '2007-03-04', 'Contanti', 6.00, 0.00, '2', 'Tessera 2006 Sagliaschi Wilma', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (470, '253', '2007-03-04', 'Contanti', 6.00, 0.00, '2', 'Tessera 2006 Roggero Gianfranco', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (471, '252', '2007-03-04', 'Contanti', 6.00, 0.00, '2', 'Tessera 2006 Bondesan Giuseppe', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (472, '251', '2007-03-04', 'Contanti', 6.00, 0.00, '2', 'Tessera 2006 Arvotti Luciana', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (473, '250', '2007-03-04', 'Contanti', 20.00, 0.00, '2', 'Tessera 2006 Monti Rosina', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (474, '249', '2007-03-04', 'Contanti', 15.00, 0.00, '2', 'Tessera 2006 Negri Luciana', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (475, '106', '2007-03-04', 'Contanti', 15.00, 0.00, '2', 'Tessera 2006 Negri Rosanna', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (476, '232', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Tessera 2006 Dal Fovo Antonio', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (477, '248', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Tessera 2006 Molli Luciana', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (478, '247', '2007-03-04', 'Contanti', 10.00, 0.00, '2', 'Tessera 2006 Bertolini Renzo', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (479, '246', '2007-03-04', 'Contanti', 6.00, 0.00, '2', 'Tessera 2006 Covini Daria', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (480, '246', '2007-03-04', 'Contanti', 25.00, 0.00, '2', 'Oblazione Covini Daria', 18, '2006-12-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (481, '83', '2007-02-07', 'Bonifico Bancario', 2500.00, 0.00, '3', 'Rimborso spese servizi 2006 Comune Grignasco', 19, '2007-02-06', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (482, '233', '2007-03-04', 'Contanti', 2019.50, 0.00, '2', '                            DONAZIONE PER ACQUISTI E MANUTENZIONE STRUMENTI                        ', 30, '2007-03-04', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (483, '103', '2006-01-01', 'Contanti', 1045.44, 0.00, '2', 'Oblazione soci. ', 18, '2006-01-01', 'Y', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (484, '103', '2007-01-01', 'Contanti', 17598.19, 0.00, '2', '                                                             saldo iniziale 2007                                                  ', 32, '2006-12-31', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (485, '34', '2007-03-15', 'Contanti', 0.00, 58.50, '2', ' Rimborso Maestro Giuliani Roberto febbraio 2007', 2, '2007-03-15', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (486, '65', '2007-03-15', 'Assegno Bancario', 0.00, 600.00, '3', '                             Rimborso Maestri Platini Fabrizio gennaio/febbraio 2007.   \r\nASSEGNO NR 3173573046                 ', 2, '2007-03-15', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (487, '67', '2007-03-15', 'Contanti', 0.00, 260.00, '2', ' Rimborso Maestri De Angelis Roberto 1° semestre 2006/2007', 2, '2007-03-15', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (488, '260', '2007-03-15', 'Contanti', 0.00, 18.00, '2', ' Spese per acquisto buste plastificate.', 12, '2007-03-15', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (489, '132', '2007-02-17', 'Assegno Bancario', 796.05, 0.00, '3', ' Assegno per servizio a Novara 2 giugno 2006', 22, '2007-02-17', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (490, '130', '2006-12-01', 'Bonifico Bancario', 0.00, 12.00, '3', ' Canone annuale Intesa Online   . CANONE ANNUALE INTESA ONLINE PERIODO 12/2006-12/2007 ', 15, '2006-12-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (491, '132', '2006-08-07', 'Bonifico Bancario', 696.05, 0.00, '3', ' Servizio Novara 6/12/2005', 22, '2006-08-08', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (492, '65', '2006-02-06', 'Assegno Bancario', 0.00, 482.00, '3', 'Rimborso spese Platini Fabrizio periodo novembre/dicembre 2005. Assegno numero 3126252626.', 2, '2006-02-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (493, '241', '2006-02-01', 'Bonifico Bancario', 0.00, 515.01, '3', 'DATA ORDINE 01/02/06 A FAVORE BARANZELLI C/O 03226 10100.', 34, '2006-02-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (494, '130', '2006-02-01', 'Bonifico Bancario', 0.00, 3.50, '3', 'Commissioni varie ', 15, '2006-02-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (495, '103', '2006-01-31', 'Ricevuta Bancaria', 0.00, 84.72, '3', 'Ricevuta Bancaria', 1, '2006-01-31', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (496, '7', '2007-04-05', 'Assegno Bancario', 500.00, 0.00, '3', 'Rimborso Servizio Carnevale Grignasco Giubiacia                                    ', 22, '2007-04-05', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (497, '129', '2007-04-10', 'Bonifico Bancario', 0.00, 32.05, '3', 'Enel              febbraio-marzo 2007                                       ', 9, '2007-04-10', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (498, '130', '2007-03-31', 'Bonifico Bancario', 0.00, 18.45, '3', '    IMPOSTA DI BOLLO SU CONTO CORRENTE                                                ', 15, '2007-04-03', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (499, '130', '2007-03-31', 'Bonifico Bancario', 0.00, 3.00, '3', '                     COMMISSIONE INVIO E/CONTO E LETTERE TRASPARENZA                               ', 15, '2007-04-03', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (500, '130', '2007-03-31', 'Bonifico Bancario', 0.00, 26.19, '3', '                                                     COMPETENZE                                                   ', 15, '2007-04-03', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (501, '84', '2007-05-05', 'Contanti', 0.00, 344.50, '2', '                            Rimborso spese Negri Gilberto  per periodo marzo-aprile 2007.\r\nOre di lezione =  26,5                                       ', 2, '2007-05-05', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (502, '34', '2007-05-05', 'Contanti', 0.00, 71.50, '2', '                            Rimborso spese Giuliani Roberto per periodo marzo 2007\r\nOre di lezione =   5,5.                                                                            ', 2, '2007-05-05', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (503, '103', '2006-01-01', 'Contanti', 732.26, 0.00, '2', 'Oblazione soci', 18, '2006-01-01', 'N', 'sergio.belli', '2006');
INSERT INTO `sd_movimenti` VALUES (504, '72', '2007-05-11', 'Contanti', 203.00, 0.00, '2', 'Tesseramento soci 2007 - Sede Marica', 18, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (505, '236', '2007-05-11', 'Contanti', 0.00, 30.00, '2', 'Rimborso spese Riccardo basso di gattinara per servizi 25 aprile e primo maggio', 27, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (506, '195', '2007-05-11', 'Contanti', 209.00, 0.00, '2', 'Tesseramento soci 2007 - Bertolini', 18, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (507, '236', '2007-05-11', 'Contanti', 0.00, 15.00, '2', 'Rimborso spese Riccardo per servizio di novara 24 febbraio 2007', 27, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (508, '223', '2007-05-11', 'Contanti', 0.00, 30.00, '2', 'Rimborso spese per Gregorio e Alberto di Confienza per servizio di Novara 24 febbraio 2007.', 27, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (509, '261', '2007-05-11', 'Contanti', 0.00, 60.00, '2', '                            Spese per Calendario Associazioni 2007                        ', 14, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (510, '72', '2007-05-11', 'Contanti', 0.00, 6.80, '2', 'Rimborso  a Marica per raccomandate Silvestri e Tosetti', 3, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (511, '84', '2007-05-11', 'Contanti', 0.00, 234.00, '2', 'Rimborso spese Negri Gilberto periodo gennaio/febbraio 2007.', 2, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (512, '85', '2007-05-11', 'Contanti', 0.00, 50.00, '2', 'Spese per preventivo riparazione fotocopiatrice.\r\nFattura EssegiUfficio numero 458 del 13/04/07', 35, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (513, '253', '2007-05-11', 'Contanti', 10.00, 0.00, '2', 'Tesseramento 2007 Roggero GianFranco', 18, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (514, '262', '2007-05-11', 'Contanti', 10.00, 0.00, '2', '                            Tesseramento 2007 Cacciami Antonio                        ', 18, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (515, '263', '2007-05-11', 'Contanti', 10.00, 0.00, '2', '                            Tesseramento 2007 Guglielmina Umberto                        ', 18, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (516, '72', '2007-05-11', 'Contanti', 0.00, 10.20, '2', 'Acquisto Francobolli', 3, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (517, '65', '2007-05-11', 'Assegno Bancario', 0.00, 600.00, '3', '                            Rimborso spese maestro Platini Fabrizio          Marzo / Aprile 2007                                                                   ', 2, '2007-05-11', 'N', 'sergio.belli', '2007');
INSERT INTO `sd_movimenti` VALUES (518, '65', '2007-05-10', 'Assegno Bancario', 0.00, 600.00, '3', 'Rimborso spese maestro Platini Fabrizio periodo maggio / giugno 2007                                                    ', 2, '2007-05-11', 'Y', 'sergio.belli', '2007');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_note_credito`
-- 

DROP TABLE IF EXISTS `sd_note_credito`;
CREATE TABLE IF NOT EXISTS `sd_note_credito` (
  `ID_Nota` int(10) NOT NULL auto_increment,
  `Prog_Nota_Annuo` int(10) NOT NULL default '0',
  `ID_Fattura` int(10) default NULL,
  `ID_Cliente` int(10) NOT NULL default '0',
  `Ragione_Sociale` varchar(200) NOT NULL default '',
  `PI` varchar(16) NOT NULL default '',
  `Indirizzo` varchar(100) NOT NULL default '',
  `Citta` varchar(50) NOT NULL default '',
  `CAP` varchar(5) NOT NULL default '',
  `Provincia` char(2) NOT NULL default '',
  `ID_Banca` varchar(10) NOT NULL default '',
  `ID_Pagamento` varchar(30) NOT NULL default '',
  `Data_Nota` date NOT NULL default '0000-00-00',
  `Descrizione` text NOT NULL,
  `Iva` int(2) NOT NULL default '0',
  `Totale` decimal(10,2) NOT NULL default '0.00',
  `Tipo_Pagamento` varchar(20) NOT NULL default '',
  `Note` text NOT NULL,
  PRIMARY KEY  (`ID_Nota`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dump dei dati per la tabella `sd_note_credito`
-- 


-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_note_credito_fornitori`
-- 

DROP TABLE IF EXISTS `sd_note_credito_fornitori`;
CREATE TABLE IF NOT EXISTS `sd_note_credito_fornitori` (
  `ID_Nota` int(10) NOT NULL auto_increment,
  `N_Nota` varchar(10) NOT NULL default '0',
  `ID_Fattura_Acquisto` int(10) default NULL,
  `ID_Fornitore` int(10) NOT NULL default '0',
  `Ragione_Sociale` varchar(200) NOT NULL default '',
  `PI` varchar(16) NOT NULL default '',
  `Indirizzo` varchar(100) NOT NULL default '',
  `Citta` varchar(50) NOT NULL default '',
  `CAP` varchar(5) NOT NULL default '',
  `Provincia` char(2) NOT NULL default '',
  `ID_Pagamento` varchar(30) NOT NULL default '',
  `Data_Nota` date NOT NULL default '0000-00-00',
  `Descrizione` text NOT NULL,
  `Imposta` decimal(10,2) NOT NULL default '0.00',
  `Totale` decimal(10,2) NOT NULL default '0.00',
  `Tipo_Pagamento` varchar(20) NOT NULL default '',
  `Note` text NOT NULL,
  PRIMARY KEY  (`ID_Nota`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dump dei dati per la tabella `sd_note_credito_fornitori`
-- 


-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_ordini`
-- 

DROP TABLE IF EXISTS `sd_ordini`;
CREATE TABLE IF NOT EXISTS `sd_ordini` (
  `ID_Cliente` int(8) NOT NULL default '0',
  `ID_Ordine` int(12) NOT NULL auto_increment,
  `Protocollo` varchar(30) NOT NULL default '',
  `Oggetto` varchar(100) NOT NULL default '',
  `ID_Fattura` int(10) NOT NULL default '0',
  `ID_Articolo` int(10) NOT NULL default '0',
  `Prezzo` decimal(10,2) NOT NULL default '0.00',
  `Quantita` int(4) NOT NULL default '0',
  `Iva` int(2) NOT NULL default '0',
  `ID_Pagamento` varchar(30) NOT NULL default '',
  `Tipo_Pagamento` varchar(30) NOT NULL default '',
  `Data_Ordine` date NOT NULL default '0000-00-00',
  `Data_Evasione` date NOT NULL default '0000-00-00',
  `Data_Scadenza` date NOT NULL default '0000-00-00',
  `Ragione_Sociale` varchar(100) NOT NULL default '',
  `PI` varchar(16) NOT NULL default '',
  `CF` varchar(16) NOT NULL default '',
  `Cognome` varchar(100) NOT NULL default '',
  `Nome` varchar(100) NOT NULL default '',
  `Indirizzo` varchar(100) NOT NULL default '',
  `Civico` varchar(12) NOT NULL default '',
  `Citta` varchar(100) NOT NULL default '',
  `CAP` varchar(6) NOT NULL default '',
  `Provincia` char(2) NOT NULL default '',
  `Stato` varchar(150) NOT NULL default '',
  `Telefono` varchar(20) NOT NULL default '',
  `Fax` varchar(20) NOT NULL default '',
  `E_mail` varchar(100) NOT NULL default '',
  `Status` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`ID_Ordine`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dump dei dati per la tabella `sd_ordini`
-- 


-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_scadenzario`
-- 

DROP TABLE IF EXISTS `sd_scadenzario`;
CREATE TABLE IF NOT EXISTS `sd_scadenzario` (
  `ID_Scadenza` int(12) NOT NULL auto_increment,
  `ID_Fattura_Acquisto` varchar(12) NOT NULL default '0',
  `ID_Fattura_Vendita` varchar(12) NOT NULL default '',
  `Ragione_Sociale` varchar(100) NOT NULL default '',
  `Scadenza` date NOT NULL default '0000-00-00',
  `ID_Banca` varchar(12) NOT NULL default '',
  `Entrate` decimal(8,2) NOT NULL default '0.00',
  `Uscite` decimal(8,2) NOT NULL default '0.00',
  `Tipo_Pagamento` varchar(50) NOT NULL default '',
  `ID_Cliente` varchar(12) NOT NULL default '',
  `ID_Fornitore` varchar(12) NOT NULL default '',
  `ID_Nota_Fornitore` varchar(12) NOT NULL default '',
  `ID_Nota_Cliente` varchar(12) NOT NULL default '',
  `ID_Movimento` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`ID_Scadenza`),
  FULLTEXT KEY `ID_Banca` (`ID_Banca`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

-- 
-- Dump dei dati per la tabella `sd_scadenzario`
-- 

INSERT INTO `sd_scadenzario` VALUES (5, '0', '', '', '2006-05-22', '', 430.00, 0.00, 'Contanti', '', '2', '', '', '3');
INSERT INTO `sd_scadenzario` VALUES (6, '0', '', '', '2006-05-22', '', 240.00, 0.00, 'Contanti', '', '4', '', '', '4');
INSERT INTO `sd_scadenzario` VALUES (7, '0', '', '', '2006-05-22', '', 253.50, 0.00, 'Contanti', '', '3', '', '', '5');
INSERT INTO `sd_scadenzario` VALUES (8, '0', '', '', '2006-05-22', '', 202.47, 0.00, 'Contanti', '', '5', '', '', '6');
INSERT INTO `sd_scadenzario` VALUES (9, '0', '', '', '2006-03-16', '', 13.50, 0.00, 'Contanti', '', '10', '', '', '7');
INSERT INTO `sd_scadenzario` VALUES (10, '0', '', '', '2006-05-11', '', 0.00, 12.00, 'Contanti', '2', '', '', '', '8');
INSERT INTO `sd_scadenzario` VALUES (11, '0', '', '', '2006-05-11', '', 0.00, 12.00, 'Contanti', '3', '', '', '', '9');
INSERT INTO `sd_scadenzario` VALUES (12, '0', '', '', '2006-05-11', '', 0.00, 6.00, 'Contanti', '4', '', '', '', '10');
INSERT INTO `sd_scadenzario` VALUES (13, '0', '', '', '2006-05-17', '', 0.00, 500.00, 'Contanti', '5', '', '', '', '11');
INSERT INTO `sd_scadenzario` VALUES (14, '0', '', '', '2006-05-14', '', 0.00, 270.00, 'Contanti', '6', '', '', '', '12');
INSERT INTO `sd_scadenzario` VALUES (15, '0', '', '', '2006-02-28', '', 0.00, 500.00, 'Assegno Bancario', '7', '', '', '', '13');
INSERT INTO `sd_scadenzario` VALUES (16, '0', '', '', '2006-05-22', '', 0.00, 70.00, 'Contanti', '8', '', '', '', '14');
INSERT INTO `sd_scadenzario` VALUES (17, '0', '', '', '2006-05-22', '', 0.00, 20.00, 'Contanti', '9', '', '', '', '15');
INSERT INTO `sd_scadenzario` VALUES (18, '0', '', '', '2006-05-22', '', 0.00, 12.00, 'Contanti', '10', '', '', '', '16');
INSERT INTO `sd_scadenzario` VALUES (19, '0', '', '', '2006-05-22', '', 0.00, 12.00, 'Contanti', '11', '', '', '', '17');
INSERT INTO `sd_scadenzario` VALUES (20, '0', '', '', '2006-04-24', '', 0.00, 20.00, 'Contanti', '12', '', '', '', '18');
INSERT INTO `sd_scadenzario` VALUES (21, '0', '', '', '2006-04-24', '', 0.00, 10.00, 'Contanti', '13', '', '', '', '19');
INSERT INTO `sd_scadenzario` VALUES (22, '0', '', '', '2006-04-24', '', 0.00, 6.00, 'Contanti', '14', '', '', '', '20');
INSERT INTO `sd_scadenzario` VALUES (23, '0', '', '', '2006-04-24', '', 0.00, 10.00, 'Contanti', '15', '', '', '', '21');
INSERT INTO `sd_scadenzario` VALUES (24, '0', '', '', '2006-05-01', '', 0.00, 10.00, 'Contanti', '16', '', '', '', '22');
INSERT INTO `sd_scadenzario` VALUES (25, '0', '', '', '2006-05-22', '', 0.00, 6.00, 'Contanti', '17', '', '', '', '23');
INSERT INTO `sd_scadenzario` VALUES (26, '0', '', '', '2006-05-22', '', 0.00, 6.00, 'Contanti', '18', '', '', '', '24');
INSERT INTO `sd_scadenzario` VALUES (27, '0', '', '', '2006-05-22', '', 0.00, 6.00, 'Contanti', '19', '', '', '', '25');
INSERT INTO `sd_scadenzario` VALUES (28, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '20', '', '', '', '26');
INSERT INTO `sd_scadenzario` VALUES (29, '0', '', '', '2006-05-26', '', 0.00, 20.00, 'Contanti', '21', '', '', '', '27');
INSERT INTO `sd_scadenzario` VALUES (30, '0', '', '', '2006-03-31', '', 0.00, 10.00, 'Contanti', '22', '', '', '', '28');
INSERT INTO `sd_scadenzario` VALUES (31, '0', '', '', '2006-03-31', '', 0.00, 20.00, 'Contanti', '23', '', '', '', '29');
INSERT INTO `sd_scadenzario` VALUES (32, '0', '', '', '2006-04-30', '', 0.00, 20.00, 'Contanti', '24', '', '', '', '30');
INSERT INTO `sd_scadenzario` VALUES (33, '0', '', '', '2006-03-31', '', 0.00, 20.00, 'Contanti', '25', '', '', '', '31');
INSERT INTO `sd_scadenzario` VALUES (34, '0', '', '', '2006-03-31', '', 0.00, 22.00, 'Contanti', '25', '', '', '', '32');
INSERT INTO `sd_scadenzario` VALUES (35, '0', '', '', '2006-02-28', '', 0.00, 10.00, 'Contanti', '26', '', '', '', '33');
INSERT INTO `sd_scadenzario` VALUES (36, '0', '', '', '2006-02-28', '', 0.00, 80.00, 'Contanti', '27', '', '', '', '34');
INSERT INTO `sd_scadenzario` VALUES (37, '0', '', '', '2006-03-31', '', 0.00, 10.00, 'Contanti', '28', '', '', '', '35');
INSERT INTO `sd_scadenzario` VALUES (38, '0', '', '', '2006-03-31', '', 0.00, 11.00, 'Contanti', '28', '', '', '', '36');
INSERT INTO `sd_scadenzario` VALUES (39, '0', '', '', '2006-03-31', '', 0.00, 20.00, 'Contanti', '29', '', '', '', '37');
INSERT INTO `sd_scadenzario` VALUES (40, '0', '', '', '2006-03-31', '', 0.00, 22.00, 'Contanti', '29', '', '', '', '38');
INSERT INTO `sd_scadenzario` VALUES (41, '0', '', '', '2006-05-22', '', 0.00, 39.00, 'Contanti', '30', '', '', '', '39');
INSERT INTO `sd_scadenzario` VALUES (42, '0', '', '', '2006-05-22', '', 0.00, 13.00, 'Contanti', '31', '', '', '', '40');
INSERT INTO `sd_scadenzario` VALUES (43, '0', '', '', '2006-05-22', '', 0.00, 16.00, 'Contanti', '32', '', '', '', '41');
INSERT INTO `sd_scadenzario` VALUES (44, '0', '', '', '2006-05-22', '', 0.00, 32.00, 'Contanti', '33', '', '', '', '42');
INSERT INTO `sd_scadenzario` VALUES (45, '0', '', '', '2006-05-26', '', 0.00, 12.92, 'Contanti', '34', '', '', '', '43');
INSERT INTO `sd_scadenzario` VALUES (46, '0', '', '', '2006-05-26', '', 0.00, 26.00, 'Contanti', '34', '', '', '', '44');
INSERT INTO `sd_scadenzario` VALUES (47, '0', '', '', '2006-05-26', '', 0.00, 6.00, 'Contanti', '35', '', '', '', '45');
INSERT INTO `sd_scadenzario` VALUES (48, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '36', '', '', '', '46');
INSERT INTO `sd_scadenzario` VALUES (49, '0', '', '', '2006-05-26', '', 0.00, 6.00, 'Contanti', '37', '', '', '', '47');
INSERT INTO `sd_scadenzario` VALUES (50, '0', '', '', '2006-05-26', '', 0.00, 6.00, 'Contanti', '38', '', '', '', '48');
INSERT INTO `sd_scadenzario` VALUES (51, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '39', '', '', '', '49');
INSERT INTO `sd_scadenzario` VALUES (52, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '40', '', '', '', '50');
INSERT INTO `sd_scadenzario` VALUES (53, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '41', '', '', '', '51');
INSERT INTO `sd_scadenzario` VALUES (54, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '42', '', '', '', '52');
INSERT INTO `sd_scadenzario` VALUES (55, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '43', '', '', '', '53');
INSERT INTO `sd_scadenzario` VALUES (56, '0', '', '', '2006-05-26', '', 0.00, 15.00, 'Contanti', '44', '', '', '', '54');
INSERT INTO `sd_scadenzario` VALUES (57, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '45', '', '', '', '55');
INSERT INTO `sd_scadenzario` VALUES (58, '0', '', '', '2006-05-26', '', 0.00, 6.00, 'Contanti', '46', '', '', '', '56');
INSERT INTO `sd_scadenzario` VALUES (59, '0', '', '', '2006-05-26', '', 0.00, 6.00, 'Contanti', '47', '', '', '', '57');
INSERT INTO `sd_scadenzario` VALUES (60, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '48', '', '', '', '58');
INSERT INTO `sd_scadenzario` VALUES (61, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '49', '', '', '', '59');
INSERT INTO `sd_scadenzario` VALUES (62, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '50', '', '', '', '60');
INSERT INTO `sd_scadenzario` VALUES (63, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '51', '', '', '', '61');
INSERT INTO `sd_scadenzario` VALUES (64, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '52', '', '', '', '62');
INSERT INTO `sd_scadenzario` VALUES (65, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '53', '', '', '', '63');
INSERT INTO `sd_scadenzario` VALUES (66, '0', '', '', '2006-05-26', '', 0.00, 10.00, 'Contanti', '54', '', '', '', '64');
INSERT INTO `sd_scadenzario` VALUES (67, '0', '', '', '2006-05-30', '', 0.00, 10.00, 'Contanti', '22', '', '', '', '65');
INSERT INTO `sd_scadenzario` VALUES (68, '0', '', '', '2006-05-30', '', 0.00, 20.00, 'Contanti', '23', '', '', '', '66');
INSERT INTO `sd_scadenzario` VALUES (69, '0', '', '', '2006-05-30', '', 0.00, 20.00, 'Contanti', '55', '', '', '', '67');
INSERT INTO `sd_scadenzario` VALUES (70, '0', '', '', '2006-05-30', '', 0.00, 20.00, 'Contanti', '56', '', '', '', '68');
INSERT INTO `sd_scadenzario` VALUES (71, '0', '', '', '2006-05-30', '', 0.00, 10.00, 'Contanti', '57', '', '', '', '69');
INSERT INTO `sd_scadenzario` VALUES (72, '0', '', '', '2006-05-30', '', 0.00, 21.00, 'Contanti', '28', '', '', '', '70');
INSERT INTO `sd_scadenzario` VALUES (73, '0', '', '', '2006-05-30', '', 0.00, 40.00, 'Contanti', '58', '', '', '', '71');
INSERT INTO `sd_scadenzario` VALUES (74, '0', '', '', '2006-05-29', '', 0.00, 240.00, 'Contanti', '59', '', '', '', '72');
INSERT INTO `sd_scadenzario` VALUES (75, '0', '', '', '2006-05-30', '', 0.00, 5.00, 'Contanti', '60', '', '', '', '73');
INSERT INTO `sd_scadenzario` VALUES (76, '0', '', '', '2006-05-27', '', 0.00, 1050.00, 'Contanti', '61', '', '', '', '74');
INSERT INTO `sd_scadenzario` VALUES (77, '0', '', '', '2006-05-30', '', 0.00, 350.00, 'Assegno Bancario', '62', '', '', '', '75');
INSERT INTO `sd_scadenzario` VALUES (78, '0', '', '', '2006-01-01', '', 0.00, 753.73, 'Contanti', '63', '', '', '', '76');
INSERT INTO `sd_scadenzario` VALUES (79, '0', '', '', '2006-06-03', '', 20.00, 0.00, 'Contanti', '', '7', '', '', '77');
INSERT INTO `sd_scadenzario` VALUES (80, '0', '', '', '2006-06-01', '', 8.60, 0.00, 'Contanti', '', '10', '', '', '78');
INSERT INTO `sd_scadenzario` VALUES (81, '0', '', '', '2006-06-03', '', 48.00, 0.00, 'Contanti', '', '11', '', '', '79');
INSERT INTO `sd_scadenzario` VALUES (82, '0', '', '', '2006-06-03', '', 22.61, 0.00, 'Contanti', '', '10', '', '', '80');
INSERT INTO `sd_scadenzario` VALUES (83, '0', '', '', '2006-06-03', '', 50.00, 0.00, 'Contanti', '', '10', '', '', '81');
INSERT INTO `sd_scadenzario` VALUES (84, '0', '', '', '2006-10-03', '', 1.00, 0.00, 'Contanti', '', '5', '', '', '88');
INSERT INTO `sd_scadenzario` VALUES (85, '0', '', '', '2006-10-03', '', 0.00, 2.00, 'Contanti', '35', '', '', '', '89');
INSERT INTO `sd_scadenzario` VALUES (86, '0', '', '', '2006-10-03', '', 0.00, 111.00, 'Contanti', '36', '', '', '', '90');
INSERT INTO `sd_scadenzario` VALUES (87, '0', '', '', '2006-10-01', '', 200.00, 0.00, 'Bonifico Bancario', '', '2', '', '', '91');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_soggetti`
-- 

DROP TABLE IF EXISTS `sd_soggetti`;
CREATE TABLE IF NOT EXISTS `sd_soggetti` (
  `ID_Soggetto` int(12) NOT NULL auto_increment,
  `Ragione_Sociale` varchar(100) default NULL,
  `Cognome` varchar(100) NOT NULL default '',
  `Nome` varchar(30) NOT NULL default '',
  `PI` varchar(12) default NULL,
  `CF` varchar(16) default NULL,
  `Descrizione` varchar(100) default NULL,
  `Tipo` varchar(20) default NULL,
  `Indirizzo` varchar(60) default NULL,
  `Citta` varchar(60) default NULL,
  `CAP` varchar(5) default NULL,
  `Provincia` varchar(4) default NULL,
  `Telefono` varchar(20) default NULL,
  `Telefono2` varchar(20) default NULL,
  `Telefono3` varchar(20) default NULL,
  `Fax` varchar(20) default NULL,
  `Cell` varchar(20) default NULL,
  `E_mail` varchar(100) default NULL,
  `Password` varchar(8) default NULL,
  `Web` varchar(50) default NULL,
  `Deleted` char(1) NOT NULL default 'N',
  `Privacy` char(1) NOT NULL default 'Y',
  PRIMARY KEY  (`ID_Soggetto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=264 ;

-- 
-- Dump dei dati per la tabella `sd_soggetti`
-- 

INSERT INTO `sd_soggetti` VALUES (2, '', 'Contardi', 'Giuseppe', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (3, '', 'Contardi', 'Marisa', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (4, '', 'Cacciami', 'Maria Teresa', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (5, 'Comune Gattinara', '.', '.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (6, 'Piane di Serravalle Sesia', '.', '.', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (7, 'Comitato Carnevale Grignasco', '.', '.', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (8, 'Club Patacioi Ara', '.', '.', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (9, 'Famiglia', 'Perazzi', '.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (10, '', 'Pozzi', 'Vanni', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (11, 'Famiglia', 'Da Paré', '.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (12, '', 'Vinzio', 'Claudia', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (13, '', 'Vinzio', 'Vittorino', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (14, ' Rag.', 'Vinzio', 'Laura', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (15, '', 'Festa Bianchet', 'Gianfranca', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (16, '', 'Borelli', 'Michele', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (17, '', 'Franchi', 'Carlo', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (18, '', 'Ventura', 'Alfredo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (19, '', 'Fontaneto', 'Marcello', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (20, '', 'Frascotti', 'Giuliano', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (21, '', 'Vinzio', 'Ermanno', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (22, '', 'Di Lernia', 'Giuseppe', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (23, 'Famiglia', 'Agazzini', 'Linda e Lorenzo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (24, '', 'Pozzi', 'Carlo', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (25, '', 'Pagnoni', 'Federico', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (26, '', 'Pontini', 'Andrea', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (27, '', 'Cascio', 'Antonino+Annalisa', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (28, '', 'Squaratti', 'Paolo', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (29, '', 'Aprile', 'Mauro', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (30, '', 'Belli', 'Sergio', '', 'BLLSRG81L18L669O', '', '', 'Via Risorgimento 1', 'Grignasco', '28075', 'NO', '0163417009', '', '', '', '3397787291', 'sergio.belli@email.it', '', 'http://www.bellisergio.tk', 'N', '');
INSERT INTO `sd_soggetti` VALUES (31, '', 'Mischiatti', 'Dino', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (32, '', 'Pezzolato', 'Luca', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (33, '', 'Ritorno', 'Cassa', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (34, '', 'Giuliani', 'Roberto', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (35, '', 'Aleppo', 'Athos', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (36, '', 'Baglioni', 'Angelo', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (37, '', 'Balzarini', 'Ernesto', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (38, '', 'Borgato', 'Giuliano', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (39, '', 'Canobio', 'Giuseppe', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (40, '', 'Del Villani', 'Luigi', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (41, '', 'Franzosi', 'Luciano', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (42, '', 'Giordani', 'Elio', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (43, '', 'Gobbi', 'Angelo', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (44, '', 'Molli', 'Luigi', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (45, '', 'Negri', 'Renato', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (46, '', 'Nobile', 'Piera', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (47, '', 'Rabaglio', 'Giovanni', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (48, '', 'Stefani', 'Davide', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (49, '', 'Teraroli', 'Gianni', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (50, '', 'Valsesia', 'Valentino', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (51, '', 'Vinzio', 'Fernando', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (52, '', 'Mora', 'Gaudenzio', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (53, '', 'Mora', 'Flora', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (54, '', 'Martinetti', 'Ugo', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (55, '', 'Moretti', 'Eleonora', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (56, '', 'Mancin', 'Gabriele', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (57, '', 'Magistrini', 'Giacomo', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (58, '', 'Schizzerotto', 'Leonardo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (59, 'Anpi Sezione Grignasco', '.', '.', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (60, NULL, 'Velatta', 'Laura', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (61, 'Priori Festa Patronale Rovasenda', '.', '.', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (62, 'ProLoco Rovasenda', '.', '.', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (63, 'Saldo Cassa Iniziale', '.', '.', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (65, NULL, 'Platini', 'Fabrizio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (66, NULL, 'Borelli', 'Ezio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (67, NULL, 'De Angelis', 'Roberto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (68, NULL, 'Giuliani', 'Roberto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (69, 'Anbima', '.', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (71, NULL, 'Barlassina', 'Patrizia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (72, '', 'Regis', 'Marica', '', '', NULL, NULL, '', '', '', '', '0163418877', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (73, 'test', 'test', 'test', 'test', 'test', NULL, NULL, 'test', 'test', 'test', 'te', 'test', 'test', 'test', 'test', 'test', 'test', 'test1111', 'test', 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (74, 'a', 'a', 'a', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (75, 'c', 'c', 'c', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (76, '', 'Geroso', 'Simone', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (77, '', 'Quarna', 'Claudio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (78, '', 'Calligaris', 'Franco', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (79, 'Flauto Romagnano', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (80, '', 'Poli', 'Stefano', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (81, '', 'Giustina', 'Vanda', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (82, 'Parrocchia Zuccaro', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (83, 'Comune Grignasco', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (84, '', 'Negri', 'Gilberto', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (85, 'Essegi Ufficio SRL', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (86, 'Comunicare 2000', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (87, '', 'Mosca', 'Francesca', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (88, '', 'Grigolon', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (89, '', 'Granieri', 'Domenico', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (90, '', '.', 'Sandra', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (91, 'Gippo', 'Farassino', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (92, 'nipote', 'Farassino', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (93, '', '.', 'Roberto', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (94, '', 'Capone', 'Marcello', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (95, 'Clarinetto basso', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (96, '', 'Sogno', 'Paola', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (97, '', '.', 'Cosimo', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (98, '', 'Bussolino', 'Wilmo', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (99, '', 'Bertolino', 'Michele', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (100, '', 'Pavan', 'Chiara', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (101, '', 'Canella', 'Egidio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (102, 'Carinetto invorio', 'Besuzzi', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (103, 'undefined', 'undefined', 'undefined', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (104, 'Comune Pray', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (105, 'addas', '.', '.', 'ddfdfdf', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (106, '', 'Negri', 'Rosanna', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (107, 'Famiglia', 'Lana', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (108, '', 'Navazza', 'Giovanni', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (109, '', 'Nobile', 'Milena', '', '', NULL, NULL, 'Via Bernardo Vittone 21', 'Grignasco', '28075', 'NO', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (110, 'Priori Sant''Agata', '.', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (111, 'Comitato Carnevale Zuccaro', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (112, 'Comitato Carnevale Valduggia', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (113, 'Comitato Carnevale Lebbia', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (114, 'x rag soc', 'xx cognome', 'xxx nome', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (115, 'Isola che non c''è', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (116, 'Posta Grignasco', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (117, '', 'De Paolis', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (118, '', 'Rondi', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (119, 'Clarinetto Graglia', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (120, '', 'Vaudano', 'Andrea', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (121, '', 'Erbetta', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (122, '', 'Poli', 'Paolo', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (123, '', 'Canclini', 'Mauro', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (124, '', 'Giletti', 'Pier Angelo', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (125, '', '.', 'Alessio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (126, 'Flauto Romagnano', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (127, '', '.', 'Mattia', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (128, '', 'Velatta', 'Laura', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (129, 'Enel', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (130, 'Banca Intesa', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (131, 'Comune Prato Sesia', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (132, 'Comune Novara', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (133, 'Pippo', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (134, 'Dedalo Soc. Coop', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (135, 'Parrocchia di valpiana', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (136, 'Parrocchia di Grignasco', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (137, 'Priori SanRocco', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (138, 'Priori di Bovagliano', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (139, '', 'Lanfranchini', 'Benito', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (140, 'La bottega della musica', '.', '.', '00553350034', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (141, 'Tabaccheria del Peso', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (142, 'Reale Mutua Assicuarazioni', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (143, 'Edizioni Musicali Wicky', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (144, 'Scomegna Edizioni Musicali', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (145, '.', '.', 'Alessio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (146, '.', 'Pavan', 'Chiara', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (147, '', 'De Paoli', 'Alessandra', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (148, '.', 'Rondi', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (149, '', 'Martinetti', 'Claudio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (150, 'Romagnano', '.', 'Gessica', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (151, '', 'Vergerio', 'Donatella', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (152, 'Flautina Romagnano', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (153, '', 'Cabassa', 'Diego', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (154, 'Quarona', '.', 'Claudio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (155, '', 'De Angelis', 'Martino', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (156, '', 'Ferrara', 'Elena', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (157, '', 'Ferrara', 'Floran', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (158, '', 'Ferro', 'Andrea', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (159, 'Coggiola', '.', 'Piero', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (160, '', 'Porzio', 'Vittorio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (161, '', 'Pozzi', 'Mauro', '', 'PZZMRA87M05B019W', NULL, NULL, 'Via G. Pastore, 4', 'Grignasco', '28075', 'NO', '0163418877', '', '', '', '3291119286', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (162, '', 'Stefani', 'Monica', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (163, '', 'Trapella', 'Bruno', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (164, '', 'Turuani', 'Egidio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (165, '', 'Bonfiglio', 'Giacomo', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (166, '', 'Giglio', 'Pasquale', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (167, '', 'Vogesi', 'Antonio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (168, '', 'Ferrara', 'Gianni', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (169, '', 'Gallino', 'Antonio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (170, '', 'Ren', 'Sergio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (171, '', 'Ronco', 'Renzo', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (172, '', 'Tosetti', 'Enrico', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (173, '', 'Cascio', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (174, NULL, 'Baron', 'Andrea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (175, NULL, 'Bino', 'Italo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (176, NULL, 'Bressan', 'Luca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (177, NULL, 'Giglio', 'Nicola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (178, NULL, 'Rognoni', 'Umberto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (179, NULL, 'Vistali', 'Mario', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (180, 'Coggiola', 'Cecchini', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (181, NULL, 'Allorio', 'Bruno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (182, NULL, 'Bagarotti', 'Francesco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (183, NULL, 'Baglioni', 'Corrado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (184, NULL, 'Da Paré', 'Paolo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (185, NULL, 'Fornaro', 'Michele', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (186, 'Masserano Trombone', '.', 'Agostino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (187, NULL, 'Baglioni', 'Davide', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (188, NULL, 'Perotto', 'Eraldo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (189, NULL, 'Giraldi', 'Gianni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (190, NULL, 'Testori', 'Giuseppe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (191, NULL, 'Zanellato', 'Francesco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (192, NULL, 'Azzalin', 'Antonio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (193, NULL, 'Bertaggia', 'Ruggero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (194, NULL, 'Bertolini', 'Enrico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (195, NULL, 'Bertolini', 'Franco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (196, NULL, 'Contardi', 'Marco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (197, NULL, 'Farinone', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (198, NULL, 'Silvestri', 'Riccardo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (199, NULL, 'Zanolo', 'Gianni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (200, 'Romagnano Cassa', '.', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (201, 'Romagnano Tromba', '.', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (202, '', 'Balzano', 'Massimiliano', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (203, '', 'Massarotti', 'Francesca', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (204, 'Gruppo Alpini Grignasco', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (205, 'Casa del Bimbo', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (206, 'Panetteria Dal Busco', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (207, 'Bennet Romagnano', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (208, 'Sottoscrizioni a premi e dolci note', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (209, 'Casa Galloni', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (210, 'Offerte ricevute durante servizi e concerti', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (211, 'Ipercoop Borgosesia', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (212, 'Peccati di Gola', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (213, 'Peccati di Gola', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (214, 'Supermercato A&O Grignasco', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (215, '', 'Facciotti', 'Piero', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (216, 'Punto SMA', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (217, 'Associazione volontari italiani sangue Comune di Grignasco', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (218, '', 'Tassan', 'Ernesto', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (219, 'Nuova Gastronomia', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (220, '', 'Vaccaro', 'Vito', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (221, '', 'Rosaclerio', 'Camilla', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (222, '', 'Mingolla', 'Paola', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (223, 'Musici di Confienza', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (224, 'a', 'a', 'a', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'Y', 'N');
INSERT INTO `sd_soggetti` VALUES (225, 'b', 'b', 'b', 'b', 'b', NULL, NULL, 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'bbbbbbbb', 'b', 'Y', 'N');
INSERT INTO `sd_soggetti` VALUES (226, NULL, 'Vinzio', 'Claudia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (227, '', 'Bagarotti', 'Francesco', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'Y', 'Y');
INSERT INTO `sd_soggetti` VALUES (228, '', 'Balma Perazzi', 'Federica', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (229, '', 'Agazzini', 'Linda', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (230, '', 'Agazzini', 'Lorenzo', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (231, 'SIAE', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (232, '', 'Dal Fovo', 'Antonio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (233, '', 'bla', 'bla', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (234, '', 'Vinzio', 'Maurilia', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (235, 'Centro Studi Grignasco', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (236, 'Basso Gattinara', '.', 'Riccardo', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (237, 'Comitato Carnevale Piane di Serravalle Sesia', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (238, 'Srl', 'Daminelli', 'Pietro', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (239, 'Soci partecipanti all''evento', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (240, 'Orchestra Sinfonica "Giuseppe Verdi" Milano', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (241, 'Baranzelli Natur', '.', '.', '00434360038', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (242, '', 'Giletti', 'Michelangelo', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (243, 'Trony Quarona Sesia', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (244, '', 'Carbone', 'Nicolò', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (245, 'La Bottega del Mondo', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (246, '', 'Covini', 'Daria', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (247, '', 'Bertolini', 'Renzo', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (248, '', 'Molli', 'Marinella', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (249, '', 'Negri', 'Luciana', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (250, '', 'Monti', 'Rosina', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (251, '', 'Arvotti', 'Luciana', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (252, '', 'Bondesan', 'Giuseppe', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (253, '', 'Roggero', 'Gianfranco', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (254, '', 'Sagliaschi', 'Wilma', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (255, '', 'Arienta', 'Maria Rosa', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (256, '', 'Canobio', 'Angioletta', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (257, '', 'Donetti Ferraris', 'Maris', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (258, '', 'Donetti', 'Roberto', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (259, 'Disco d''Oro', '.', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (260, 'Tecno Ufficio', '.', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'Y');
INSERT INTO `sd_soggetti` VALUES (261, 'ProLoco Grignasco', '.', '.', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (262, '', 'Cacciami', 'Antonio', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');
INSERT INTO `sd_soggetti` VALUES (263, '', 'Guglielmina', 'Umberto', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', 'N', '');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_tesseramenti`
-- 

DROP TABLE IF EXISTS `sd_tesseramenti`;
CREATE TABLE IF NOT EXISTS `sd_tesseramenti` (
  `ID_Tesseramento` int(12) unsigned NOT NULL auto_increment,
  `ID_Soggetto` int(12) unsigned NOT NULL default '0',
  `Data_Tessera` date NOT NULL default '0000-00-00',
  `Importo_Versato` int(12) unsigned NOT NULL default '0',
  `Validita` varchar(4) NOT NULL default '0000',
  `Tipo_Socio` varchar(50) NOT NULL default '',
  `ID_Promotore` int(12) unsigned default NULL,
  `Deleted` char(1) NOT NULL default 'N',
  `ID_Movimento` int(12) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID_Tesseramento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- 
-- Dump dei dati per la tabella `sd_tesseramenti`
-- 

INSERT INTO `sd_tesseramenti` VALUES (1, 30, '2007-01-01', 0, '2007', '2', NULL, 'N', 0);
INSERT INTO `sd_tesseramenti` VALUES (2, 114, '0000-00-00', 100000, '2012', '2', 114, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (3, 103, '0000-00-00', 200000, '2015', '1', 114, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (4, 103, '0000-00-00', 200000, '2015', '1', 114, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (5, 103, '0000-00-00', 200000, '2015', '1', 114, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (6, 103, '0000-00-00', 300000, '2015', '3', 103, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (7, 103, '0000-00-00', 300000, '2015', '3', 103, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (8, 114, '0000-00-00', 40000, '2005', '2', 103, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (9, 114, '0000-00-00', 1, '2005', '2', 114, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (10, 114, '0000-00-00', 1, '2005', '2', 114, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (11, 114, '0000-00-00', 1, '2005', '2', 114, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (12, 134, '0000-00-00', 12, '2007', '2', 134, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (13, 134, '0000-00-00', 12, '2007', '2', 134, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (14, 134, '0000-00-00', 12, '2007', '2', 134, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (15, 83, '0000-00-00', 1000000, '2005', '2', 83, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (16, 83, '0000-00-00', 1000000, '2005', '2', 83, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (17, 83, '0000-00-00', 1000000, '2005', '2', 83, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (18, 83, '0000-00-00', 1000000, '2013', '2', 83, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (19, 83, '2007-01-31', 1000000, '2013', '2', 83, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (20, 83, '0000-00-00', 1000000, '2005', '2', 83, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (21, 83, '2007-01-31', 1000000, '2005', '2', 83, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (22, 83, '2007-01-31', 1000000, '2005', '2', 83, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (23, 134, '2007-01-16', 12, '2005', '2', 131, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (24, 83, '2007-01-16', 34, '2005', '3', 86, 'Y', 0);
INSERT INTO `sd_tesseramenti` VALUES (25, 133, '2007-01-15', 100, '2007', '3', 114, 'Y', 0);

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_tipi_pagamento`
-- 

DROP TABLE IF EXISTS `sd_tipi_pagamento`;
CREATE TABLE IF NOT EXISTS `sd_tipi_pagamento` (
  `ID_Tipo_Pagamento` int(3) NOT NULL auto_increment,
  `Tipo_Pagamento` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`ID_Tipo_Pagamento`,`Tipo_Pagamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dump dei dati per la tabella `sd_tipi_pagamento`
-- 

INSERT INTO `sd_tipi_pagamento` VALUES (1, 'Bonifico Bancario');
INSERT INTO `sd_tipi_pagamento` VALUES (2, 'Carta di Credito');
INSERT INTO `sd_tipi_pagamento` VALUES (3, 'Contanti');
INSERT INTO `sd_tipi_pagamento` VALUES (4, 'Assegno Bancario');
INSERT INTO `sd_tipi_pagamento` VALUES (5, 'Assegno Circolare');
INSERT INTO `sd_tipi_pagamento` VALUES (6, 'Ricevuta Bancaria');
INSERT INTO `sd_tipi_pagamento` VALUES (7, 'Versamento Contanti');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_tipi_soci`
-- 

DROP TABLE IF EXISTS `sd_tipi_soci`;
CREATE TABLE IF NOT EXISTS `sd_tipi_soci` (
  `ID` tinyint(3) unsigned NOT NULL auto_increment,
  `Tipo` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `ID` (`ID`,`Tipo`),
  KEY `ID_2` (`ID`,`Tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dump dei dati per la tabella `sd_tipi_soci`
-- 

INSERT INTO `sd_tipi_soci` VALUES (1, 'Ordinario');
INSERT INTO `sd_tipi_soci` VALUES (2, 'Effettivo');
INSERT INTO `sd_tipi_soci` VALUES (3, 'Sostenitore');

-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_voci_bilancio`
-- 

DROP TABLE IF EXISTS `sd_voci_bilancio`;
CREATE TABLE IF NOT EXISTS `sd_voci_bilancio` (
  `id` tinyint(3) unsigned NOT NULL auto_increment,
  `voce` varchar(250) NOT NULL default '0',
  PRIMARY KEY  (`id`,`voce`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- 
-- Dump dei dati per la tabella `sd_voci_bilancio`
-- 

INSERT INTO `sd_voci_bilancio` VALUES (1, 'Varie');
INSERT INTO `sd_voci_bilancio` VALUES (2, 'Rimborso spese ai Maestri');
INSERT INTO `sd_voci_bilancio` VALUES (3, 'Spese Postali e Varie');
INSERT INTO `sd_voci_bilancio` VALUES (4, 'Acquisto Vestiario');
INSERT INTO `sd_voci_bilancio` VALUES (5, 'Acquisto, Manutenzione Strumenti musicali');
INSERT INTO `sd_voci_bilancio` VALUES (6, 'Acquisto Partiture');
INSERT INTO `sd_voci_bilancio` VALUES (7, 'Rimborso spese ai Musici');
INSERT INTO `sd_voci_bilancio` VALUES (8, 'Oneri SIAE');
INSERT INTO `sd_voci_bilancio` VALUES (9, 'Energia Elettrica');
INSERT INTO `sd_voci_bilancio` VALUES (10, 'Riscaldamento');
INSERT INTO `sd_voci_bilancio` VALUES (11, 'Assicurazione');
INSERT INTO `sd_voci_bilancio` VALUES (12, 'Cancelleria e Stampati');
INSERT INTO `sd_voci_bilancio` VALUES (13, 'Rinfreschi e Pranzi');
INSERT INTO `sd_voci_bilancio` VALUES (14, 'Promozione e Pubblicità');
INSERT INTO `sd_voci_bilancio` VALUES (15, 'Oneri Intesa San Paolo');
INSERT INTO `sd_voci_bilancio` VALUES (17, 'Tesseramento Anbima');
INSERT INTO `sd_voci_bilancio` VALUES (18, 'Tessere e Oblazioni');
INSERT INTO `sd_voci_bilancio` VALUES (19, 'Contributo Comune di Grignasco');
INSERT INTO `sd_voci_bilancio` VALUES (20, 'Contributo Frequenza Allievi (Lezioni e Strumenti)');
INSERT INTO `sd_voci_bilancio` VALUES (21, 'Contributo per Manutenzione Strumenti');
INSERT INTO `sd_voci_bilancio` VALUES (22, 'Offerte Ricevute Durante Servizi e Concerti');
INSERT INTO `sd_voci_bilancio` VALUES (23, 'Sottoscrizioni a Premi e Dolci Note');
INSERT INTO `sd_voci_bilancio` VALUES (24, 'Contributo Provinciale');
INSERT INTO `sd_voci_bilancio` VALUES (25, 'Contributo Ministero dello Spettacolo');
INSERT INTO `sd_voci_bilancio` VALUES (26, 'Contributo Provinciale Scuola Allievi');
INSERT INTO `sd_voci_bilancio` VALUES (27, 'Rimborso Esterni');
INSERT INTO `sd_voci_bilancio` VALUES (28, 'Partita di Giro');
INSERT INTO `sd_voci_bilancio` VALUES (29, 'Acquisto Premi per Sottoscrizioni');
INSERT INTO `sd_voci_bilancio` VALUES (30, 'Donazione per Acquisti e Manutenzione Strumenti');
INSERT INTO `sd_voci_bilancio` VALUES (31, 'Telefonia');
INSERT INTO `sd_voci_bilancio` VALUES (32, 'Saldo Iniziale');
INSERT INTO `sd_voci_bilancio` VALUES (33, 'Pomeriggio Musicale');
INSERT INTO `sd_voci_bilancio` VALUES (34, 'Trasporti');
INSERT INTO `sd_voci_bilancio` VALUES (35, 'Macchine per Ufficio');
INSERT INTO `sd_voci_bilancio` VALUES (36, 'Manutenzione Strumenti Musicali di Proprietà dei Musici');
INSERT INTO `sd_voci_bilancio` VALUES (37, 'Contributo Regionale L. 38/2000');

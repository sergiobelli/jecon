-- phpMyAdmin SQL Dump
-- version 2.9.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generato il: 10 Dic, 2008 at 02:31 PM
-- Versione MySQL: 5.0.67
-- Versione PHP: 4.4.8
-- 
-- Database: `my_mbasergio`
-- 


alter table `sd_movimenti` add column `data_inserimento` date NOT NULL default '0000-00-00';
alter table `sd_movimenti` add column `data_modifica` date NOT NULL default '0000-00-00';

update `sd_movimenti` set `data_inserimento` = `Data_Valuta`, `data_modifica` = `Data_Valuta` where `data_inserimento` is null or `data_modifica` is null;
-- --------------------------------------------------------

-- 
-- Struttura della tabella `sd_voci_bilancio`
-- 

DROP TABLE IF EXISTS `sd_voci_bilancio`;
CREATE TABLE IF NOT EXISTS `sd_voci_bilancio` (
  `id` tinyint(3) unsigned NOT NULL auto_increment,
  `voce` varchar(250) NOT NULL default '0',
  `bilancio` char(1) NOT NULL default '0',
  PRIMARY KEY  (`id`,`voce`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

-- 
-- Dump dei dati per la tabella `sd_voci_bilancio`
-- 

INSERT INTO `sd_voci_bilancio` (`id`, `voce`, `bilancio`) VALUES 
(1, 'Varie', '1'),
(2, 'Rimborso spese ai Maestri', '1'),
(3, 'Spese Postali e Varie', '1'),
(4, 'Acquisto Vestiario', '1'),
(5, 'Acquisto, Manutenzione Strumenti musicali', '1'),
(6, 'Acquisto Partiture', '1'),
(7, 'Rimborso spese ai Musici', '1'),
(8, 'Oneri SIAE', '1'),
(9, 'Energia Elettrica', '1'),
(10, 'Riscaldamento', '1'),
(11, 'Assicurazione', '1'),
(12, 'Cancelleria e Stampati', '1'),
(13, 'Rinfreschi e Pranzi', '1'),
(14, 'Promozione e Pubblicità', '1'),
(15, 'Oneri Intesa San Paolo', '1'),
(17, 'Tesseramento Anbima', '1'),
(18, 'Tessere', '1'),
(19, 'Contributo Comune di Grignasco', '1'),
(20, 'Contributo Frequenza Allievi (Lezioni e Strumenti)', '1'),
(21, 'Contributo per Manutenzione Strumenti', '1'),
(22, 'Offerte Ricevute Durante Servizi e Concerti', '1'),
(23, 'Sottoscrizioni a Premi e Dolci Note', '1'),
(24, 'Contributo Provinciale', '1'),
(25, 'Contributo Ministero dello Spettacolo', '1'),
(26, 'Contributo Provinciale Scuola Allievi', '1'),
(27, 'Rimborso Esterni', '1'),
(28, 'Partita di Giro', '0'),
(29, 'Acquisto Premi per Sottoscrizioni', '1'),
(30, 'Donazione per Acquisti e Manutenzione Strumenti', '1'),
(31, 'Telefonia', '1'),
(32, 'Saldo Iniziale', '0'),
(33, 'Pomeriggio Musicale', '1'),
(34, 'Trasporti', '1'),
(35, 'Macchine per Ufficio', '1'),
(36, 'Manutenzione Strumenti Musicali di Proprietà dei Musici', '1'),
(37, 'Contributo Regionale L. 38/2000', '1'),
(38, 'Attrezzature e Materiale per Sede', '1'),
(39, 'Noleggio strumenti', '1'),
(40, 'Contributo manutenzione strumenti', '1'),
(41, 'Oblazioni', '1'),
(42, 'Interessi creditori', '1');

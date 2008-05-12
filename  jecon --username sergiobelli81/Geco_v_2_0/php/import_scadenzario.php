<?
require_once("dblib.inc");

// svuoto la tabella 
$query_svuota_tabella = "DELETE FROM ".$terms_table." ";
$result = mysql_query($query_svuota_tabella, $link);
$limit = "0";

$passo = recordCount($spl_invoices_table);
// importazione fatture acquisto 
// prima cancello tutti gli inserimenti nella tabella
$query_svuota = "DELETE FROM ".$terms_table." WHERE ID_Fattura_Acquisto <> '' ";
$result = mysql_query($query_svuota, $link);

$resource = dynQuery("ID_Fattura_Acquisto, ID_Fornitore, 	Ragione_Sociale, Totale, Tipo_Pagamento, Scadenza ", $spl_invoices_table, 1, 2, $limit, $passo );
while ($a_row = dbms_fetch_array($resource))
			{
																
				$query = "	INSERT INTO ".$terms_table." 
				(
				ID_Fattura_Acquisto,
				ID_Fornitore, 
				Ragione_Sociale, 
				Uscite, 
				Tipo_Pagamento, 
				Scadenza 
				)
					VALUES 
				(
				'$a_row[ID_Fattura_Acquisto]',
				'$a_row[ID_Fornitore]',
				'$a_row[Ragione_Sociale]',
				'$a_row[Totale]',				
				'$a_row[Tipo_Pagamento]',
				'$a_row[Scadenza]'				
				)";
				$result = mysql_query($query, $link);
				/*
				if (!$result)
					{
					print "Importazione fatture acquisto non riuscita, script terminato<br>";
					print mysql_error();
					exit;
					}
				*/
			}
	
// importazione fatture vendita 
// prima cancello tutte gli inserimenti nella tabella
$query_svuota = "DELETE FROM ".$terms_table." WHERE ID_Fattura_Vendita <> '' ";
$result = mysql_query($query_svuota, $link);
 
$passo = recordCount($invoices_table); 
$resource = dynQuery("ID_Fattura, ID_Cliente,	Ragione_Sociale, Totale, Tipo_Pagamento, Scadenza ", $invoices_table, 1, 2, $limit, $passo );
while ($a_row = dbms_fetch_array($resource))
			{
				// print $a_row['ID_Fattura_Acquisto']. "<br>";
				$query = "	INSERT INTO ".$terms_table." 
				(
				ID_Fattura_Vendita,
				ID_Cliente, 
				Ragione_Sociale, 
				Entrate, 
				Tipo_Pagamento, 
				Scadenza 
				)
					VALUES 
				(
				'$a_row[ID_Fattura]',
				'$a_row[ID_Cliente]',
				'$a_row[Ragione_Sociale]',
				'$a_row[Totale]',				
				'$a_row[Tipo_Pagamento]',
				'$a_row[Scadenza]'				
				)";
				$result = mysql_query($query, $link);
				if (!$result)
					{
					print "Importazione fatture vendita non riuscita, script terminato<br>";
					print mysql_error();
					exit;
					}			
			}			
			
// importazione note credito clienti 
// prima cancello tutte gli inserimenti nella tabella
$query_svuota = "DELETE FROM ".$terms_table." WHERE ID_Nota_Cliente <> '' ";
$result = mysql_query($query_svuota, $link);

$passo = recordCount($credit_notes_table);  
$resource = dynQuery("ID_Nota, ID_Cliente, Ragione_Sociale, Totale, Tipo_Pagamento, Data_Nota ", $credit_notes_table, 1, 2, $limit, $passo );
while ($a_row = dbms_fetch_array($resource))
			{
				$query = "	INSERT INTO ".$terms_table." 
				(
				ID_Nota_Cliente,
				ID_Cliente, 
				Ragione_Sociale, 
				Uscite, 
				Tipo_Pagamento, 
				Scadenza 
				)
					VALUES 
				(
				'$a_row[ID_Nota]',
				'$a_row[ID_Cliente]',
				'$a_row[Ragione_Sociale]',
				'$a_row[Totale]',				
				'$a_row[Tipo_Pagamento]',
				'$a_row[Data_Nota]'				
				)";
				$result = mysql_query($query, $link);
				if (!$result)
					{
					print "Importazione note credito vendita non riuscita, script terminato<br>";
					print mysql_error();
					exit;
					}			
			}			
		
// importazione note credito fornitori 
// prima cancello tutte gli inserimenti nella tabella
$query_svuota = "DELETE FROM ".$terms_table." WHERE ID_Nota_Vendita <> '' ";
$result = mysql_query($query_svuota, $link);
 $passo = recordCount($spl_credit_notes_table);  
$resource = dynQuery("ID_Nota, ID_Fornitore, Ragione_Sociale, Totale, Tipo_Pagamento, Data_Nota ", $spl_credit_notes_table, 1, 2, $limit, $passo );
while ($a_row = dbms_fetch_array($resource))
			{
				$query = "	INSERT INTO ".$terms_table." 
				(
				ID_Nota_Fornitore,
				ID_Fornitore, 
				Ragione_Sociale, 
				Entrate, 
				Tipo_Pagamento, 
				Scadenza 
				)
					VALUES 
				(
				'$a_row[ID_Nota]',
				'$a_row[ID_Fornitore]',
				'$a_row[Ragione_Sociale]',
				'$a_row[Totale]',				
				'$a_row[Tipo_Pagamento]',
				'$a_row[Data_Nota]'				
				)";
				$result = mysql_query($query, $link);
				if (!$result)
					{
					print "Importazione note credito vendita non riuscita, script terminato<br>";
					print mysql_error();
					exit;
					}			
			}			
			
// importazione movimenti 
// prima cancello tutte gli inserimenti nella tabella
$query_svuota = "DELETE FROM ".$terms_table." WHERE ID_Movimento <> '' ";
$result = mysql_query($query_svuota, $link);
 $passo = recordCount($mov_table);  
$resource = dynQuery("ID_Movimento, ID_Cliente, ID_Fornitore, Ragione_Sociale, Data_Valuta, Tipo_Pagamento, Entrate, Uscite ", $mov_table, 1, 2, $limit, $passo );
while ($a_row = dbms_fetch_array($resource))
			{
				if (!empty($a_row['ID_Cliente']))
					{
						$in_out = "Uscite";
						if ($a_row['Entrate'] == 0)
							{
							// si tratta di una nota credito pagata al cliente
							$a_row['Entrate'] = $a_row['Uscite'];
							$in_out = "Entrate";
							}
						$query = "	INSERT INTO ".$terms_table." 
						(
						ID_Movimento,
						ID_Cliente, 
						Ragione_Sociale, 
						$in_out, 
						Tipo_Pagamento, 
						Scadenza 
						)
							VALUES 
						(
						'$a_row[ID_Movimento]',
						'$a_row[ID_Cliente]',
						'$a_row[Ragione_Sociale]',
						'$a_row[Entrate]',				
						'$a_row[Tipo_Pagamento]',
						'$a_row[Data_Valuta]'				
						)";
						
						$result = mysql_query($query, $link);
					}	
				if (!empty($a_row['ID_Fornitore']))
					{
						$in_out = "Entrate"; // indica il campo
						
						if ($a_row['Uscite'] == 0)
							{// si tratta di una nota credito pagata dal fornitore
							$a_row['Uscite'] = $a_row['Entrate'];
							$in_out = "Uscite";
							}
						$query = "	INSERT INTO ".$terms_table." 
						(
						ID_Movimento,
						ID_Fornitore, 
						Ragione_Sociale, 
						$in_out, 
						Tipo_Pagamento, 
						Scadenza 
						)
							VALUES 
						(
						'$a_row[ID_Movimento]',
						'$a_row[ID_Fornitore]',
						'$a_row[Ragione_Sociale]',
						'$a_row[Uscite]',				
						'$a_row[Tipo_Pagamento]',
						'$a_row[Data_Valuta]'				
						)";
						
						$result = mysql_query($query, $link);
					}
				
				if (!$result)
					{
					print "Importazione movimenti non riuscita, script terminato<br>";
					print mysql_error();
					exit;
					}			
			}			

// Print "Importazione terminata con successo!";
			
?>
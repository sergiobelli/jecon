<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();
$message = "";

if (isset($actionflag) && $actionflag=="Delete")
	{
		$result = delRow($orders_table, "ID_Ordine", $ID_Ordine);
		header("Location: Admin_Ordini.php");
		exit;	
	}
		
	
if (! isset($actionflag))

		{

		// recupero i dati dell'ordine dal db
		
		$form = getRow($orders_table, "ID_Ordine", $ID_Ordine);
		
		// faccio qualche operazione sulla data
		// converto la data in Unix timestamp
		$ts_Data_Ordine = strtotime ($form['Data_Ordine']);
		
		// ricavo giorno, mese, anno
		$giorno = strftime("%d", $ts_Data_Ordine);
		$mese = strftime("%m", $ts_Data_Ordine);
		$anno = strftime("%Y", $ts_Data_Ordine);
		// print $giorno ."-".$mese."-".$anno  ;
		// print strftime ($form['Data_Ordine']);
		
		}
if (!($form['Status'] == "FATTURATO"))
	$message = "Sei sicuro di voler rimuovere l'ordine? Anche l'allegato verr&agrave; rimosso dal server.";


		

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Visualizzazione Ordine</title>



	<link rel="stylesheet" type="text/css" href="Themes/Facet/Style.css">

</head>



<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 

include("Header.php"); 



?>

<form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">

<!-- flag di invio del modulo -->

<input type="Hidden" name="actionflag" value="Delete">

<input type="Hidden" name="ID_Ordine" value="<?print $ID_Ordine;?>">
<div align="center"><font class="FacetFormHeaderFont">Ordine</font></div>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

  <!-- BEGIN Error -->

  <tr>

    <td colspan="2" class="FacetDataTD">

	<?php

	if (! $message == "")

	{

	print "$message";

	}

	?>

	</td>

  </tr>

  <!-- END Error -->

  
  
  <tr>

    <td class="FacetFieldCaptionTD">Protocollo Cliente &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Protocollo]" disabled value="<?php print $form["Protocollo"] ?>" maxlength="30" size="20" class="FacetInput">&nbsp;</td>

  </tr>

    <tr>

    <td class="FacetFieldCaptionTD">Oggetto * &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Oggetto]"  disabled value="<?php print $form["Oggetto"] ?>" maxlength="100" size="30" class="FacetInput">&nbsp;</td>

  </tr>
  
  <tr>

    <td class="FacetFieldCaptionTD">Cliente * &nbsp;</td>

    <td class="FacetDataTD"><select name="form[ID_Cliente]" disabled  class="FacetSelect">

	

<?php 
// imposto come selzionato il cliente che e' nel database
print "<option value=\"".$form['ID_Cliente']."\" selected>".$form['Ragione_Sociale']."</option>\n";
 ?>
 
 <option value=""></option>
 
 <?php 
// recupero tutti i clienti per la select del form


$result = dynQuery('*', $customers_table);
 


while ($a_row = dbms_fetch_array ($result))

	{

	print "<option value=\"".$a_row['ID_Cliente']."\">".$a_row['Ragione_Sociale']." - ".$a_row['Cognome']."</option>\n";

	}

	?>

	 </select></td>

  </tr>

 <tr>

 	<td class="FacetFieldCaptionTD">Tipo Pagamento * &nbsp;</td>

    <td colspan="2" class="FacetDataTD">
	<select name="form[Tipo_Pagamento]" disabled  class="FacetSelect">
		<?php 
		// imposto come selezionato il tipo pagamento che e' nel database
		print "<option value=\"".$form['Tipo_Pagamento']."\" selected>".$form['Tipo_Pagamento']."</option>\n";
		 ?>	
   	</select>

	</td>

  </tr>



 
   <tr>

    <td class="FacetFieldCaptionTD">Importo * &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Prezzo]" disabled  value="<?php print $form["Prezzo"] ?>" maxlength="20" size="10" class="FacetInput">&nbsp;</td>

  </tr>
<tr>
    <td class="FacetFieldCaptionTD">Data Ordine</td>&nbsp;</td>
  <td class="FacetDataTD">
  <SELECT NAME="giorno" disabled >
<?php 
// imposto come selezionato il giorno che e' nel database
print "<option value=\"".$giorno."\" selected>".$giorno."</option>\n";
 ?>	  
 </SELECT>

 <SELECT name="mese" disabled >
 <?php 
// imposto come selezionato il mese che e' nel database
// devo prima pero' recuperare il nome del mese
switch ($mese)
	{
	case "01";
		$nome_mese = "Gennaio";
		break;
	case "02";
		$nome_mese = "Febbraio";
		break;	
	case "03";
		$nome_mese = "Marzo";
		break;	
	case "04";
		$nome_mese = "Aprile";
		break;	
	case "05";
		$nome_mese = "Maggio";
		break;	
	case "06";
		$nome_mese = "Giugno";
		break;	
	case "07";
		$nome_mese = "Luglio";
		break;	
	case "08";
		$nome_mese = "Agosto";
		break;	
	case "09";
		$nome_mese = "Settembre";
		break;	
	case "10";
		$nome_mese = "Ottobre";
		break;	
	case "11";
		$nome_mese = "Novembre";
		break;	
	case "12";
		$nome_mese = "Dicembre";
		break;	
	}	
	
print "<option value=\"".$mese."\" selected>".$nome_mese."</option>\n";
 ?>	  
 </SELECT>&nbsp;
   <SELECT name="anno" disabled >
   <?php 
// imposto come selezionato l'anno che e' nel database
print "<option value=\"".$anno."\" selected>".$anno."</option>\n";
 ?>	  
    </SELECT>&nbsp;
 </td>
</tr>

 <td colspan="2" align="right" nowrap class="FacetFooterTD">
<?
if (!($form['Status'] == "FATTURATO"))
	{
     print " <input name=\"Insert\" type=\"submit\" value=\"Delete\" class=\"FacetButton\">";
	}
?>

    </td>

</table>

</form>



</body>

</html>


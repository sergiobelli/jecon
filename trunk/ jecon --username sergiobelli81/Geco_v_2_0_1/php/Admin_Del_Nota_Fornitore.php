<?
include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";


if (isset($actionflag) && $actionflag=="Delete")
	{
		$result = delRow($spl_credit_notes_table, "ID_Nota", $ID_Nota);
		header("Location: Admin_Note_Fornitori.php");
		exit;	
	}

if (! isset($actionflag))

		{
		// recupero i dati della nota
		$form = getRow($spl_credit_notes_table, "ID_Nota", $ID_Nota);
		
		// recupero i dati del fornitore e relative fatture per lo storno
		$fornitore = getRow($suppliers_table, "ID_Fornitore", $form['ID_Fornitore']);
		$rs_fatture = dynQuery ('*', $spl_invoices_table, "ID_Fornitore = $form[ID_Fornitore]" );

		// faccio qualche operazione sulla data
		// converto la data in Unix timestamp
		$ts_Data_Nota = strtotime ($form['Data_Nota']);
		
		// ricavo giorno, mese, anno
		$giorno = strftime("%d", $ts_Data_Nota);
		$mese = strftime("%m", $ts_Data_Nota);
		$anno = strftime("%Y", $ts_Data_Nota);
		// print $giorno ."-".$mese."-".$anno  ;
		// print strftime ($form['Data_Ordine']);

		}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>

	<title>Cancella Nota Credito Fornitore</title>



	<link rel="stylesheet" type="text/css" href="Style.css">

</head>



<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 

include("Header.php"); 

?>

<form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">

<input type="Hidden" name="actionflag" value="Delete">

<input type="Hidden" name="ID_Nota" value="<? print $ID_Nota ?>">

<input type="Hidden" name="form[ID_Fornitore]" value="<? print $form['ID_Fornitore'] ?>">

<div align="center"><font class="FacetFormHeaderFont">Cancella Nota Credito Fornitore</font></div>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">

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


  <tr>

    <td class="FacetFieldCaptionTD">Ragione Sociale &nbsp;</td>

    <td class="FacetDataTD"><input type="text" disabled name="fornitore[Ragione_Sociale]" disabled value="<?php print $fornitore["Ragione_Sociale"] ?>" maxlength="100" size="30" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">N_Nota * &nbsp;</td>

    <td class="FacetDataTD"><input type="text"  disabled  name="form[N_Nota]" value="<?php print $form["N_Nota"] ?>" maxlength="100" size="30" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>
    <td class="FacetFieldCaptionTD">Fattura da Stornare</td>&nbsp;</td>
    <td class="FacetDataTD">
	  <SELECT  disabled  NAME="form[ID_Fattura_Acquisto]">
<?		
		while ($a_row = dbms_fetch_array($rs_fatture))
			{
			$selected = "";
		   	if($a_row["ID_Fattura_Acquisto"] == $form["ID_Fattura_Acquisto"])
				$selected = "selected"; 
				
			print "\t\t <option value=\"".$a_row["ID_Fattura_Acquisto"]."\" $selected >".$a_row["N_Fattura"]."</option>\n";
			}
		print "\t </select>\n";

?>

    </td>
</tr>
 <tr>

    <td class="FacetFieldCaptionTD">Data Nota &nbsp;</td>
	 <td class="FacetDataTD">
		 <? 
		 // inserisco il select box per il campo data
		   $select_data = new selectDate("giorno", "mese", "anno");
		   $select_data -> daySelected($giorno); 
		   $select_data -> monthSelected($mese); 
		   $select_data -> yearSelected($anno); 	  
		   $select_data -> output();
		 ?>
	 </td>
  </tr>

 <tr>

 	<td class="FacetFieldCaptionTD">Tipo Pagamento * &nbsp;</td>

    <td colspan="2" class="FacetDataTD">
		 <? 
		 // inserisco il select box per il campo tipo pagamento
		   $select_pagamento = new selectPagamento();
		   $select_pagamento -> addSelectName("form[Tipo_Pagamento]");
		   $select_pagamento -> addSelected($form["Tipo_Pagamento"]);
		   $select_pagamento -> output();
		 ?>

	</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">Totale (Iva Compresa) * &nbsp;</td>

    <td class="FacetDataTD"><input type="text"  disabled  name="form[Totale]" value="<?php print $form["Totale"] ?>" maxlength="20" size="10" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">Totale Imposta * &nbsp;</td>
    <td class="FacetDataTD"><input type="text"  disabled  name="form[Imposta]" value="<?php print $form["Imposta"] ?>" maxlength="20" size="10" class="FacetInput">&nbsp;</td>
  </tr>
  <tr>
		<td class="FacetFieldCaptionTD">Descrizione &nbsp;</td><td class="FacetDataTD"><textarea name="form[Descrizione]"  disabled cols="40" rows="5" class="FacetInput"><? print $form['Descrizione'] ?></textarea></td>
	</tr>

	<tr>
		<td class="FacetFieldCaptionTD">Note &nbsp;</td><td class="FacetDataTD"><textarea name="form[Note]"  disabled cols="40" rows="5" class="FacetInput"><? print $form['Note'] ?></textarea></td>
	</tr>

 


 <td colspan="2" align="right" nowrap class="FacetFooterTD">

      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Delete" class="FacetButton"><!-- END Button Insert -->



    </td>

</table>

</form>



</body>

</html>


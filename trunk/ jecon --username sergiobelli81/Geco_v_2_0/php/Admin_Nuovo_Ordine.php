<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

if (isset ($actionflag))

	{

	//controllo sull'esistenza dei campi obbligatori

	if (
		empty($form["Tipo_Pagamento"] ) ||

		empty($form["ID_Cliente"]) ||
		
		empty($form["Oggetto"]) ||

		empty($form["Prezzo"])
		)
		$message .= "I campi Oggetto, Cliente, Tipo Pagamento e Importo sono obbligatori ! <br>";
	
	 if (
		empty($giorno) ||
		empty($mese)   ||
		empty($anno)
		)
		$message .= "Devi inserire giorno, mese e anno ! <br>";


	//controllo che l'importo sia stato inserito correttamente
	//   if (!is_numeric ($form["Prezzo"]))
	//	$message .= "L'importo deve essere inserito senza virgole e con il punto tra gli euro e i centesimi, es. 1250.95 <br>";
	
	// controllo che la data sia corretta	
	  if (!checkdate( $mese, $giorno, $anno))
		$message .= "La data $giorno-$mese-$anno non &egrave; corretta! <br>";	



	if ($message == "")

		{
		// se tutto ok inserisco il nuovo ordine ma prima faccio qualche operazione sulle variabili
			
		// formatto le date
		$form["Data_Ordine"] = strftime ("$anno-$mese-$giorno");
		$form["Data_Scadenza"] = "0000-00-00";
		
		// recupero i dati del cliente
		$form = array_merge ($form, getRow($customers_table, "ID_Cliente", $form['ID_Cliente']));
		
					
		$result = orderInsert($form['ID_Cliente'], $form['Protocollo'], $form['Oggetto'], $form['Data_Ordine'], $form['Data_Scadenza'], $form['Tipo_Pagamento'], $form['Prezzo'], $form['Iva'], $form['Ragione_Sociale'], $form['Cognome'], $form['Nome'], $form['PI'], $form['CF'], $form['Indirizzo'], $form['Citta'], $form['CAP'], $form['Provincia'], $form['Telefono'], $form['Fax'], $form['E_mail'], $form['Status']);
		
		if (! $result )

			die (" Errore di inserimento: ".mysql_error());

		else 
			{

			$message .= "Ordine inserito con successo";	

			header("Location: Admin_Ordini.php");
			exit;	
			}
		}

	}

if (! isset($actionflag))

		{
		// inizializzo l'array associativo del modulo

		$form["Tipo_Pagamento"] = "";

		$form["Prezzo"] = "";
		
		$form["Protocollo"] = "";
		
		$form["Oggetto"] = "";
		
		$form['ID_Cliente'] = "";
		
		$giorno = "";
		
		$mese = "";
		
		$anno = "";

		}

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Nuovo Ordine</title>



	<link rel="stylesheet" type="text/css" href="Themes/Facet/Style.css">

</head>



<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 

include("Header.php"); 

?>

<form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">

<!-- flag di invio del modulo -->

<input type="Hidden" name="actionflag" value="insert">

<input type="Hidden" name="form[Status]" value="CONFERMATO">

<div align="center"><font class="FacetFormHeaderFont">Nuovo Ordine</font></div>

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

    <td class="FacetDataTD"><input type="text" name="form[Protocollo]" value="<?php print $form["Protocollo"] ?>" maxlength="30" size="20" class="FacetInput">&nbsp;</td>

  </tr>

    <tr>

    <td class="FacetFieldCaptionTD">Oggetto * &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Oggetto]" value="<?php print $form["Oggetto"] ?>" maxlength="100" size="30" class="FacetInput">&nbsp;</td>

  </tr>
  
  <tr>

    <td class="FacetFieldCaptionTD">Cliente * &nbsp;</td>

    <td class="FacetDataTD">
	
		<? 
		 // inserisco il select box per i clienti
		   $cliente = new selectCliente("form[ID_Cliente]");
		   $cliente -> addSelected($form['ID_Cliente']); 
		   $cliente-> output();
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

    <td class="FacetFieldCaptionTD">Imponibile * &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Prezzo]" value="<?php print $form["Prezzo"] ?>" maxlength="20" size="10" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">IVA * &nbsp;</td>
	 <td class="FacetDataTD">
 <? 
 // inserisco il select box per il campo iva
  $select_iva = new select_codice_iva();
  $select_iva -> addSelectName("form[Iva]");
  $select_iva -> addSelected("20"); // iva al 20 preselezionata
  $select_iva -> output();
 ?>
 </td>
  </tr>
   <tr>

    <td class="FacetFieldCaptionTD">Data Ordine &nbsp;</td>
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
 


 <td colspan="2" align="right" nowrap class="FacetFooterTD">

      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Insert" class="FacetButton"><!-- END Button Insert -->



    </td>

</table>

</form>



</body>

</html>


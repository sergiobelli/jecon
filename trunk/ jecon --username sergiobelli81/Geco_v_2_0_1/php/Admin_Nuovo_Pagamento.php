<?

include("dblib.inc");

include("clublib.inc");

checkAdmin();

$message = "";

if (isset ($actionflag))

	{

	//controllo sull'esistenza delle variabili

	if (empty($form["Tipo_Pagamento"] ) ||

		empty($form["ID_Cliente"]) ||

		empty($form["Codice_Pagamento"]) ||

		empty($form["Importo"]) ||

		empty($giorno) ||

		empty($mese)   ||

		empty($anno))

		$message .= "I campi sono tutti obbligatori ! <br>";

	//controllo che l'importo si stato inserito correttamente

	//if (!is_numeric ($form["Importo"]))
	//	$message .= "L'importo non &egrave; un numero<br>";

	// tutto ok procedo con la query ma prima formatto il numero in euro e la data

	//	$form["Importo"] = formatEuro($form["Importo"]);

		$data = strftime ("$anno-$mese-$giorno");

		

	if ($message == "")

		{

		$result = mysql_query("INSERT INTO pws_pagamenti (ID_Cliente, Tipo_Pagamento, Codice_Pagamento, Importo, Data_Pagamento)

		VALUES ('$form[ID_Cliente]', '$form[Tipo_Pagamento]', '$form[Codice_Pagamento]', '$form[Importo]', '$data')", $link);	

		if (! $result )

			die (" Errore di inserimento: ".mysql_error());

		else 

			$message .= "Pagamento inserito con successo";	

			$form[]= "";

		}

	}

if (! isset($actionflag))

		{

		// inizializzo l'array associativo del modulo

		$form["Codice_Pagamento"] = "";

		$form["Importo"] = "";

		}

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">



<html>

<head>

	<title>Admin Nuovo Pagamento</title>



	<link rel="stylesheet" type="text/css" href="Themes/Facet/Style.css">

</head>



<body bgcolor="#FFFFFF" link="#504C43" alink="#000000" vlink="#504C43" text="#000000">

<? 

include("Header.php"); 

?>

<form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">

<!-- flag di invio del modulo -->

<input type="Hidden" name="actionflag" value="sel_cliente">

<div align="center"><font class="FacetFormHeaderFont">Inserisci pagamento</font></div>

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

    <td class="FacetFieldCaptionTD">Cliente &nbsp;</td>

    <td class="FacetDataTD"><select name="form[ID_Cliente]" class="FacetSelect">

	<option value=""></option>

<?php 

// recupero tutti i clienti per la select del form

$result = mysql_query("SELECT * FROM pws_clienti ORDER BY Ragione_Sociale", $link);



while ($a_row = mysql_fetch_object ($result))

	{

	print "<option value=\"$a_row->ID_Cliente\">$a_row->Ragione_Sociale - $a_row->Cognome</option>\n";

	}

	?>

	 </select></td>

  </tr>

 <tr>

 	<td class="FacetFieldCaptionTD">Tipo Pagamento &nbsp;</td>

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

    <td class="FacetFieldCaptionTD">Codice Pagamento&nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Codice_Pagamento]" value="<?php print $form["Codice_Pagamento"] ?>" maxlength="60" size="50" class="FacetInput">&nbsp;</td>

  </tr>

  <tr>

    <td class="FacetFieldCaptionTD">Data Pagamento</td>&nbsp;</td>

  <td class="FacetDataTD"><SELECT NAME="giorno">

 <OPTION selected 

              >01</OPTION>

 <OPTION>02</OPTION>

 <OPTION>03</OPTION>

 <OPTION>04</OPTION>

 <OPTION>05</OPTION>

 <OPTION>06</OPTION>

 <OPTION>07</OPTION>

 <OPTION>08</OPTION>

 <OPTION>09</OPTION>

 <OPTION>10</OPTION>

 <OPTION>11</OPTION>

 <OPTION>12</OPTION>

 <OPTION>13</OPTION>

 <OPTION>14</OPTION>

 <OPTION>15</OPTION>

 <OPTION>16</OPTION>

 <OPTION>17</OPTION>

 <OPTION>18</OPTION>

 <OPTION>19</OPTION>

 <OPTION>20</OPTION>

 <OPTION>21</OPTION>

 <OPTION>22</OPTION>

 <OPTION>23</OPTION>

 <OPTION>24</OPTION>

 <OPTION>25</OPTION>

 <OPTION>26</OPTION>

 <OPTION>27</OPTION>

 <OPTION>28</OPTION>

 <OPTION>29</OPTION>

 <OPTION>30</OPTION>

 <OPTION>31</OPTION>

 </SELECT>



 <SELECT name="mese">

 <OPTION value="01">Gennaio</OPTION>

 <OPTION value="02">Febbraio</OPTION>

 <OPTION value="03">Marzo</OPTION>

 <OPTION value="04">Aprile</OPTION>

 <OPTION value="05">Maggio</OPTION>

 <OPTION value="06">Giugno</OPTION>

 <OPTION value="07">Luglio</OPTION>

 <OPTION value="08">Agosto</OPTION>

 <OPTION value="09">Settembre</OPTION>

 <OPTION value="10">Ottobre</OPTION>

 <OPTION value="11">Novembre</OPTION>

 <OPTION value="12">Dicembre</OPTION>

 </SELECT>&nbsp;

   <SELECT name="anno">

   <OPTION value="2002" selected>2002</OPTION>

   <OPTION value="2003">2003</OPTION> 

    </SELECT>&nbsp;

 </td>

</tr>

   <tr>

    <td class="FacetFieldCaptionTD">Importo &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="form[Importo]" value="<?php print $form["Importo"] ?>" maxlength="20" size="10" class="FacetInput">&nbsp;</td>

  </tr>

 <td colspan="2" align="right" nowrap class="FacetFooterTD">

      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Prosegui" class="FacetButton"><!-- END Button Insert -->



    </td>

</table>

</form>



</body>

</html>


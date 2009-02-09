<?

$message = "";

if (isset ($actionflag))
	{
	//controllo l'esistenza dei campi obbligatori
	if (
		empty($Host)  ||

		empty($Database) ||
		
		empty($User) ||

		empty($Password) ||
		
		empty($admin_login) ||
				
		empty($admin_password) ||	
		
		empty($table_prefix)	
		)
		$message = "I campi sono tutti obbligatori ! <br>";
	
	if ($message == "")
		{
			// tento la connessione al db
		$link = mysql_pconnect($Host, $User, $Password);
	  	if (! $link) 
		  	$message = "Impossibile connettersi a MySql<br>";
		
		$connect_db = mysql_select_db( $Database, $link);
		if (!$connect_db) 
	  		$message .= "Impossibile connettersi al database<br>";
		}
	
		// se tutto ok procedo con il lancio dello script per la creazione delle tabelle
	
	if ($message == "")
		{
		$message = "Un momento prego, creazione db in corso ....";
		print $message;
		include ("Install.sql");
		foreach($array_of_query as $temp)
			{
			$result = mysql_query($temp, $link);
			if (!$result )
				{
				$result = "<br><b>Errore nella creazione delle tabelle </b><br>
				<b>Query</b> = ".$temp."<br>
				Errore Mysql = <b>".mysql_error()."</b><br>";
				print $result;
				exit;
				}
			}
		

			// inserisco Login e Password di amministrazione 
			$result = mysql_query("INSERT INTO ".$table_prefix."_admin 
									(
									Login, 
									Password
									)
								   VALUES
									(
									'$admin_login',
									'$admin_password'
									)", $link);
			if (! $result )
				{
				$result = "<br>Errore nell'inserimento delle login e passwd di amministrazione <br> Errore Mysql = <b>".mysql_error()."</b><br>";
				print $result;
				exit;
				}
			// infine riscrivo il file Config.php
			$filename = "Config.php";
			$fp = fopen( $filename,"w" );
				if (!$fp)
					{
					$message = "Impossibile aprire il file di configurazione";
					print $message;
					exit;
					} 	
				fwrite($fp, "<?\n");
				fwrite($fp, "/* Parametri di accesso: server, db, utente, passwd e prefisso per le tabelle */\n");
				fwrite($fp, "\$Host     = \"".$Host."\";\n");
				fwrite($fp, "\$Database = \"".$Database."\";\n");
				fwrite($fp, "\$User     = \"".$User."\";\n");
				fwrite($fp, "\$Password = \"".$Password."\";\n");
				fwrite($fp, "\$table_prefix = \"".$table_prefix."\";\n");
				fwrite($fp, "?>");
			fclose($fp);		
			// se tutto ok, messaggio di benvenuto!!
			$message = "Complimenti, il tuo GECO &egrave; online !!<br>";
			$message .= "Per entrare nell'amministrazione clicca <a href=\"admin.php\">QUI</a>";
		}
	
	}
	
if (! isset($actionflag))

	{
		// inizializzo l'array associativo del modulo

		$Host = "127.0.0.1"; // localhost predefinito

		$Database = "";
		
		$User = "";
		
		$Password = "";
		
		$admin_login = "";
		
		$admin_password = "";
		
		$table_prefix = "";

		
	}
	
?>
	
	
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Installazione</title>
</head>

<body>

<? 

include("Header.php"); 
?>
<form method="post" action="<?php print $PHP_SELF;?>" name="pws_clienti">

<!-- flag di invio del modulo -->

<input type="Hidden" name="actionflag" value="install">

<div align="center"><font class="FacetFormHeaderFont">Installazione</font></div>

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

    <td class="FacetFieldCaptionTD">Host &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="Host" value="<?php print $Host ?>" maxlength="30" size="20" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">Database &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="Database" value="<?php print $Database ?>" maxlength="30" size="20" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">User DB&nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="User" value="<?php print $User ?>" maxlength="30" size="20" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">Password DB&nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="Password" value="<?php print $Password ?>" maxlength="30" size="20" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">Login Amministratore &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="admin_login" value="<?php print $admin_login ?>" maxlength="30" size="20" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">Password Amministratore &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="admin_password" value="<?php print $admin_password ?>" maxlength="30" size="20" class="FacetInput">&nbsp;</td>

  </tr>
  <tr>

    <td class="FacetFieldCaptionTD">Prefisso Tabelle &nbsp;</td>

    <td class="FacetDataTD"><input type="text" name="table_prefix" value="<?php print $table_prefix ?>" maxlength="30" size="20" class="FacetInput">&nbsp;</td>

  </tr>

 <td colspan="2" align="right" nowrap class="FacetFooterTD">

      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Insert" class="FacetButton"><!-- END Button Insert -->



    </td>
</table>

</body>
</html>

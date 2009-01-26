<?php
include("dblib.inc");
include("clublib.inc");
checkAdmin();
$message = "";

if ( isset( $fupload ))
	{
	// controllo se ha inserito qualcosa
	if  ( $fupload_name == "" ) 
		{
		$message .= " Attenzione! Il campo File non può essere vuoto.";
		}	

	// controllo se e' un' imago	
	if (!($fupload_type == "image/jpeg" || $fupload_type == "image/pjpeg") )
			{
			$message = "Il file deve essere nel formato jpg, quello che hai inviato &egrave; un file $fupload_type";
			}
	// sovrascrivo il file
	if ($message == "")
		{
	
		copy ( $fupload, "$image_dir/logo.jpg") or die ("Impossibile copiare il file");
	//	$message = "Il file &egrave; stato aggiornato con successo. <br>(Potrebbe essere necessario aggiornare la pagina per vedere la nuova fotografia)";
		header ("Location: $PHP_SELF?upload=ok");
		exit;
		}

	
	}

// se sono fresco di upload avverto di ricaricare
if (isset($upload) && ($upload == "ok"))
	$message = "Upload eseguito, potrebbe essere necessario ricaricare la pagina per visualizzare il nuovo logo.";

?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Upload Logo</title>

	<link rel="stylesheet" type="text/css" href="Style.css">
</head>


<? 
include("Header.php"); 
include("confignav.php");
?>

<form method="post" action="<?php print $PHP_SELF;?>" name="cv_upload" enctype="multipart/form-data" action="post">
<!-- flag di invio del modulo -->
<input type="Hidden" name="actionflag" value="ins_exp">
<div align="center"><font class="FacetFormHeaderFont">Invia il logo aziendale</font></div>
<div align="center"><font class="FacetFieldCaptionTD">(Inviando un nuovo logo, 
aggiorni automaticamente quello gi&agrave; presente)</font></div><br>
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
<td class="FacetFieldCaptionTD">Seleziona file (solo in formato jpg, circa 400x70):</td> <td class="FacetDataTD"><input type="file" name="fupload"  class="FacetButton" class="FacetDataTD"></td>
  </tr>
<td colspan="3" align="right" nowrap class="FacetFooterTD">
      <!-- BEGIN Button Insert --><input name="Insert" type="submit" value="Invia" class="FacetButton"><!-- END Button Insert -->
</td>
 </table>
</form>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE" align="center">
    <tr>
<?
if( file_exists ( "$image_dir/logo.jpg" ))
	{
		$f = "$image_dir/logo.jpg";
		print "<td class=\"FacetDataTD\">Logo inviato il ".date("d/m/Y  G:i ", filemtime( $f ));
		print "</td></tr>";
	
		print "<tr><td class=\"FacetDataTD\" align=\"center\">";
		print "<img src=\"$image_dir/logo.jpg\" border=0>";
	}
	?>
	</td>
	</tr>
 </table>
</body>
</html>
<?php 
require_once("dblib.inc");
require_once("clublib.inc");
require_once 'util/Log.php';
//include("Header.php");

if (isset ($actionflag)) {
    // checkUser();
    $result = getRow ($admin_table, "Login", "$form[Login]");
    /*$loggedAdmin = 
        new administrator(
            $result["Cod_utente"], 
            $result["Cognome"], 
            $result["Nome"], 
            $result["Livello"], 
            $result["Login"], 
            $result["Password"]);
    echo "loggedAdmin=".$loggedAdmin->cognome;*/
    
    
    if ($result) {
        if ($result["Password"] == $form["Password"]) {
            cleanMemberSession ($result["Cod_utente"], $result["Login"], $result["Password"]);
            // print $session["Login"];
            //salvaAccesso($form[Login], session_ID());
            


            $conf = array('mode' => 0600, 'timeFormat' => '%X %x');
            $logger = &Log::singleton('file', 'logs/login.log', 'ident', $conf);
            $logger->log("logged ".$result['Login']);

            header ("Location: admin.php");
            exit;
        } else {
            $message = "Login Password Errate!";
        }	
    }	
    
    /*
    if (session("Logged_in") == "True")
    {
    cleanMemberSession($ID_Cliente,$form["Login"], $form["Password"]);
    header ("Location: Index.php");
    }
    */
}

?>
<html>
<head>
<title>Login</title>

<link rel="stylesheet" type="text/css" href="stylesheet.css">

<?
include("Header.php"); 
?>


<!-- BEGIN Record Login -->

<form method="post" action="Login_admin.php" name="Login">
<input type="Hidden" name="actionflag" value="Login">
<font class="FacetFormHeaderFont">Login</font>

<table border="0" cellpadding="3" cellspacing="1" class="FacetFormTABLE">

  <!-- BEGIN Error -->

  <tr>

    <td colspan="2" class="FacetDataTD">
	
	<?
	if (isset ($message) && !($message == "") )
	{
	print $message;
	}
	// print $session["Login"];
	// print $session["logged_in"];
	?>
	
	</td>

  </tr>

  <!-- END Error -->

  <tr>

    <td class="FacetFieldCaptionTD">Login&nbsp; (geco)</td>

    <td class="FacetDataTD"><input type="text" name="form[Login]" value="" maxlength="100" size="20" class="FacetInput">&nbsp;</td>

  </tr>

  <tr>

    <td class="FacetFieldCaptionTD">Password&nbsp; (gecopass)</td>

    <td class="FacetDataTD"><input type="password" name="form[Password]" value="" maxlength="100" size="20" class="FacetInput">&nbsp;</td>

  </tr>

  <tr>

    <td colspan="2" align="right" nowrap class="FacetFooterTD">

      <!-- BEGIN Button DoLogin --><input name="DoLogin" type="submit" value="Login" class="FacetButton"><!-- END Button DoLogin -->&nbsp;

    </td>

  </tr></table>

</form>

<!-- END Record Login -->
</body>
</html>

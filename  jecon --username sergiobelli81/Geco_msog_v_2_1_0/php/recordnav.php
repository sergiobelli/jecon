<?
// valori da impostare sulla variabile limit

$first = 0;

// $last viene impostata dallo script chiamante in quanto non conosco da principio il numero di 
// record che compone la tabella

// $last = recordCount($rs_query)-(recordCount($rs_query) % $session['passo']); 
$next = $session['limit']+$session['passo'];

$prev = $session['limit']-$session['passo'];

if ($prev <= 0)

	$prev = 0;

if ($next >= $last)

	$next = $last;

if ($last+$session['passo'] <= $session['passo'])
	{
	// non visualizzo la barra di navigazione dei record
	}
else {	
		print "<div align=\"center\">";
		print "| << <a href=\"$PHP_SELF?limit=0\" >Primo</a> ";
		print "| < <a href=\"$PHP_SELF?limit=$prev\">Precedente</a> ";
		print "| <a href=\"$PHP_SELF?limit=$next\">Successivo</a> > ";
		print "| <a href=\"$PHP_SELF?limit=$last\">Ultimo</a> >> |"; 
		print "</div>";
	 }
?>
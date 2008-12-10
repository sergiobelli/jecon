<?php
class BilancioManager {

    function getTotaleEntrate ($annoRichiesto) {
        $query = 
			"
			select 	sum(Entrate) as TOTALE_ENTRATE 
			from 		sd_movimenti 
			where 	Deleted = 'N' 
					and id_voce_bilancio IN (select id from sd_voci_bilancio where sd_voci_bilancio.bilancio = '1') 
					and anno_bilancio = '".$annoRichiesto."'	
			";
		$totEntrateResult = connetti_query($query);
		while ($totEntrateRow  = dbms_fetch_array($totEntrateResult)) { $totEntrate = $totEntrateRow["TOTALE_ENTRATE"]; }
		return $totEntrate;	
    }
	
	function getTotaleUscite ($annoRichiesto) {
		$query =
			"
			select 	sum(Uscite)  as TOTALE_USCITE  
			from 		sd_movimenti 
			where 	Deleted = 'N' 
							and id_voce_bilancio IN (select id from sd_voci_bilancio where sd_voci_bilancio.bilancio = '1') 
							and anno_bilancio = '".$annoRichiesto."'
			";
		$totUsciteResult  = connetti_query($query);
		while ($totUsciteRow   = dbms_fetch_array($totUsciteResult))  { $totUscite = $totUsciteRow["TOTALE_USCITE"];	}
		return $totUscite;	
	}
	
	function getBilancio ($totaleEntrate, $totaleUscite) {
		$bilancio = $totaleEntrate - $totaleUscite;
		return $bilancio;	
	}
	
	function getBilancioWithColorDecoration ($bilancio) {
		return $bilancio >= 0 ? "<font color='#00FF00'>".$bilancio."</font>" : "<font color='#CC6633'>".$bilancio."</font>";	
	}
	
	function getSaldoIniziale($annoRichiesto) {
		$query =
		"
		select 	sum(Entrate)  as TOTALE_ENTRATE  
		from 		sd_movimenti 
		where 	Deleted = 'N' 
						and id_voce_bilancio = 32 
						and anno_bilancio = '".$annoRichiesto."'
		";
		$saldoInizialeResult  = connetti_query($query);
		while ($saldoInizialeRow   = dbms_fetch_array($saldoInizialeResult))  { $saldoIniziale = $saldoInizialeRow["TOTALE_ENTRATE"];	}
		return $saldoIniziale;
	}
	
	function getTabellaBilancio ($annoRichiesto) {
		$result = connetti_query(
			"
			select 	sd_voci_bilancio.voce as Voce_Bilancio,
				sum(sd_movimenti.entrate) as Entrata,
				sum(sd_movimenti.uscite) as Uscita
			from 	sd_movimenti,sd_voci_bilancio
			where	sd_movimenti.id_voce_bilancio = sd_voci_bilancio.id
				and sd_movimenti.deleted = 'N'
				and id_voce_bilancio IN (select id from sd_voci_bilancio where sd_voci_bilancio.bilancio = '1') 
				and sd_movimenti.anno_bilancio = '".$annoRichiesto."'	
									
			group by sd_voci_bilancio.voce
			order by sd_voci_bilancio.voce
			");
		return $result;
	}
    
    function getSaldoBanca($annoRichiesto) {
        $result = connetti_query(
			"
            select 	sum(m.entrate) - sum(m.uscite) as saldo_banca 

            from 	sd_movimenti m,
                    sd_voci_bilancio vc 

            where	m.id_voce_bilancio = vc.id 
			        and m.deleted = 'N' 
                    and m.id_voce_bilancio IN (select sdvc.id from sd_voci_bilancio sdvc where sdvc.bilancio = '1') 
			        and m.ID_Banca <> 2 
			        and m.anno_bilancio = '".$annoRichiesto."'	 

			");
		while ($saldo_bancaRow  = dbms_fetch_array($result)) { $saldo_banca = $saldo_bancaRow["saldo_banca"]; }
		return $saldo_banca;
    }
    function getSaldoCassa($annoRichiesto) {
        $result = connetti_query(
			"
            select 	sum(m.entrate) - sum(m.uscite) as saldo_cassa 

            from 	sd_movimenti m,
                    sd_voci_bilancio vc 

            where	m.id_voce_bilancio = vc.id 
			        and m.deleted = 'N' 
                    and m.id_voce_bilancio IN (select sdvc.id from sd_voci_bilancio sdvc where sdvc.bilancio = '1') 
			        and m.ID_Banca = 2 
			        and m.anno_bilancio = '".$annoRichiesto."'	 

			");
		while ($saldo_cassaRow  = dbms_fetch_array($result)) { $saldo_cassa = $saldo_cassaRow["saldo_cassa"]; }
		return $saldo_cassa;
    }
}

?>

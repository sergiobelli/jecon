select 	sd_voci_bilancio.voce as Voce_Bilancio,
				sum(sd_movimenti.entrate) as Entrata,
				sum(sd_movimenti.uscite) as Uscita


from 		sd_movimenti,sd_voci_bilancio,sd_soggetti,sd_banche
where		sd_movimenti.id_voce_bilancio = sd_voci_bilancio.id
				and sd_movimenti.id_soggetto = sd_soggetti.id_soggetto
				and sd_movimenti.id_banca = sd_banche.id_banca
				and sd_movimenti.deleted = 'N'
group by sd_voci_bilancio.voce
order by sd_voci_bilancio.voce
;

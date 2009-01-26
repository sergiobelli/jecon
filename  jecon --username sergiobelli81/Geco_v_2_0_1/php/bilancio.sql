select 	sd_movimenti.id_movimento,
				sd_voci_bilancio.voce,
				sd_movimenti.data_valuta,
				sd_movimenti.data_competenza,
				sd_movimenti.tipo_pagamento,
				sd_movimenti.entrate,
				sd_movimenti.uscite,
				sd_banche.banca,		
				sd_movimenti.descrizione,	
				sd_soggetti.cognome,sd_soggetti.nome,sd_soggetti.ragione_sociale

from 		sd_movimenti,sd_voci_bilancio,sd_soggetti,sd_banche
where		sd_movimenti.id_voce_bilancio = sd_voci_bilancio.id
				and sd_movimenti.id_soggetto = sd_soggetti.id_soggetto
				and sd_movimenti.id_banca = sd_banche.id_banca
				and sd_movimenti.deleted = 'N'
order by sd_voci_bilancio.voce
;

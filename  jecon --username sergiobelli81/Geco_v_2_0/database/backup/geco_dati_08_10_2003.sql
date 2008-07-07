# phpMyAdmin MySQL-Dump
# version 2.2.6
# http://phpwizard.net/phpMyAdmin/
# http://www.phpmyadmin.net/ (download page)
#
# Host: localhost
# Generato il: 30 Set, 2003 at 01:02 PM
# Versione MySQL: 3.23.53
# Versione PHP: 4.2.1
# Database : `geco`

#
# Dump dei dati per la tabella `sd_admin`
#

INSERT INTO sd_admin VALUES ('', '', '', 0, 'geco', 'gecopass');

#
# Dump dei dati per la tabella `sd_anagrafica`
#

INSERT INTO sd_anagrafica VALUES (1, 0, 'GECOPROJECT', 'Rossi', 'Mario', '1987654321', '1987654321', 'Via Gnu, 44', 'Cupertino', '00001', 'CO', '06-21213131', '', '', '06-233232233', '3209823648', 'info@gecoproject.com', 'http://www.gecoproject.com');

#
# Dump dei dati per la tabella `sd_banche`
#

INSERT INTO sd_banche VALUES (1, 'Banca del Credito Cooperativo', 'Via Boh, 32', 'Cent', '08234', '11345', '565658', 'Gnauz Spa');
INSERT INTO sd_banche VALUES (2, 'Cassa', '', '', '', '', '', '');

#
# Dump dei dati per la tabella `sd_codici_iva`
#

INSERT INTO sd_codici_iva VALUES ('20', '20%', '20', '0');
INSERT INTO sd_codici_iva VALUES ('10', '10%', '10', '0');

#
# Dump dei dati per la tabella `sd_tipi_pagamento`
#

INSERT INTO sd_tipi_pagamento VALUES (1, 'Bonifico Bancario');
INSERT INTO sd_tipi_pagamento VALUES (2, 'Carta di Credito');
INSERT INTO sd_tipi_pagamento VALUES (3, 'Contanti');
INSERT INTO sd_tipi_pagamento VALUES (4, 'Assegno Bancario');
INSERT INTO sd_tipi_pagamento VALUES (5, 'Assegno Circolare');
INSERT INTO sd_tipi_pagamento VALUES (6, 'Ricevuta Bancaria');


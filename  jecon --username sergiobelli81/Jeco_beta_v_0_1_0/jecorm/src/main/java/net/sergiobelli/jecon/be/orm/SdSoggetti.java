package net.sergiobelli.jecon.be.orm;

// Generated 9-feb-2009 22.42.43 by Hibernate Tools 3.2.4.CR1

/**
 * SdSoggetti generated by hbm2java
 */
public class SdSoggetti implements java.io.Serializable {

	private Integer idSoggetto;
	private String ragioneSociale;
	private String cognome;
	private String nome;
	private String pi;
	private String cf;
	private String descrizione;
	private String tipo;
	private String indirizzo;
	private String citta;
	private String cap;
	private String provincia;
	private String telefono;
	private String telefono2;
	private String telefono3;
	private String fax;
	private String cell;
	private String EMail;
	private String password;
	private String web;
	private char deleted;
	private char privacy;

	public SdSoggetti() {
	}

	public SdSoggetti(String cognome, String nome, char deleted, char privacy) {
		this.cognome = cognome;
		this.nome = nome;
		this.deleted = deleted;
		this.privacy = privacy;
	}

	public SdSoggetti(String ragioneSociale, String cognome, String nome,
			String pi, String cf, String descrizione, String tipo,
			String indirizzo, String citta, String cap, String provincia,
			String telefono, String telefono2, String telefono3, String fax,
			String cell, String EMail, String password, String web,
			char deleted, char privacy) {
		this.ragioneSociale = ragioneSociale;
		this.cognome = cognome;
		this.nome = nome;
		this.pi = pi;
		this.cf = cf;
		this.descrizione = descrizione;
		this.tipo = tipo;
		this.indirizzo = indirizzo;
		this.citta = citta;
		this.cap = cap;
		this.provincia = provincia;
		this.telefono = telefono;
		this.telefono2 = telefono2;
		this.telefono3 = telefono3;
		this.fax = fax;
		this.cell = cell;
		this.EMail = EMail;
		this.password = password;
		this.web = web;
		this.deleted = deleted;
		this.privacy = privacy;
	}

	public Integer getIdSoggetto() {
		return this.idSoggetto;
	}

	public void setIdSoggetto(Integer idSoggetto) {
		this.idSoggetto = idSoggetto;
	}

	public String getRagioneSociale() {
		return this.ragioneSociale;
	}

	public void setRagioneSociale(String ragioneSociale) {
		this.ragioneSociale = ragioneSociale;
	}

	public String getCognome() {
		return this.cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getPi() {
		return this.pi;
	}

	public void setPi(String pi) {
		this.pi = pi;
	}

	public String getCf() {
		return this.cf;
	}

	public void setCf(String cf) {
		this.cf = cf;
	}

	public String getDescrizione() {
		return this.descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getIndirizzo() {
		return this.indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public String getCitta() {
		return this.citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getCap() {
		return this.cap;
	}

	public void setCap(String cap) {
		this.cap = cap;
	}

	public String getProvincia() {
		return this.provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getTelefono2() {
		return this.telefono2;
	}

	public void setTelefono2(String telefono2) {
		this.telefono2 = telefono2;
	}

	public String getTelefono3() {
		return this.telefono3;
	}

	public void setTelefono3(String telefono3) {
		this.telefono3 = telefono3;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getCell() {
		return this.cell;
	}

	public void setCell(String cell) {
		this.cell = cell;
	}

	public String getEMail() {
		return this.EMail;
	}

	public void setEMail(String EMail) {
		this.EMail = EMail;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getWeb() {
		return this.web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public char getDeleted() {
		return this.deleted;
	}

	public void setDeleted(char deleted) {
		this.deleted = deleted;
	}

	public char getPrivacy() {
		return this.privacy;
	}

	public void setPrivacy(char privacy) {
		this.privacy = privacy;
	}

}

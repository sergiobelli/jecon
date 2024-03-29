package net.sergiobelli.jecon.be.orm;

// Generated 9-feb-2009 22.42.43 by Hibernate Tools 3.2.4.CR1

import java.util.Date;

/**
 * SdTesseramenti generated by hbm2java
 */
public class SdTesseramenti implements java.io.Serializable {

	private Integer idTesseramento;
	private int idSoggetto;
	private Date dataTessera;
	private int importoVersato;
	private String validita;
	private String tipoSocio;
	private Integer idPromotore;
	private char deleted;
	private int idMovimento;

	public SdTesseramenti() {
	}

	public SdTesseramenti(int idSoggetto, Date dataTessera, int importoVersato,
			String validita, String tipoSocio, char deleted, int idMovimento) {
		this.idSoggetto = idSoggetto;
		this.dataTessera = dataTessera;
		this.importoVersato = importoVersato;
		this.validita = validita;
		this.tipoSocio = tipoSocio;
		this.deleted = deleted;
		this.idMovimento = idMovimento;
	}

	public SdTesseramenti(int idSoggetto, Date dataTessera, int importoVersato,
			String validita, String tipoSocio, Integer idPromotore,
			char deleted, int idMovimento) {
		this.idSoggetto = idSoggetto;
		this.dataTessera = dataTessera;
		this.importoVersato = importoVersato;
		this.validita = validita;
		this.tipoSocio = tipoSocio;
		this.idPromotore = idPromotore;
		this.deleted = deleted;
		this.idMovimento = idMovimento;
	}

	public Integer getIdTesseramento() {
		return this.idTesseramento;
	}

	public void setIdTesseramento(Integer idTesseramento) {
		this.idTesseramento = idTesseramento;
	}

	public int getIdSoggetto() {
		return this.idSoggetto;
	}

	public void setIdSoggetto(int idSoggetto) {
		this.idSoggetto = idSoggetto;
	}

	public Date getDataTessera() {
		return this.dataTessera;
	}

	public void setDataTessera(Date dataTessera) {
		this.dataTessera = dataTessera;
	}

	public int getImportoVersato() {
		return this.importoVersato;
	}

	public void setImportoVersato(int importoVersato) {
		this.importoVersato = importoVersato;
	}

	public String getValidita() {
		return this.validita;
	}

	public void setValidita(String validita) {
		this.validita = validita;
	}

	public String getTipoSocio() {
		return this.tipoSocio;
	}

	public void setTipoSocio(String tipoSocio) {
		this.tipoSocio = tipoSocio;
	}

	public Integer getIdPromotore() {
		return this.idPromotore;
	}

	public void setIdPromotore(Integer idPromotore) {
		this.idPromotore = idPromotore;
	}

	public char getDeleted() {
		return this.deleted;
	}

	public void setDeleted(char deleted) {
		this.deleted = deleted;
	}

	public int getIdMovimento() {
		return this.idMovimento;
	}

	public void setIdMovimento(int idMovimento) {
		this.idMovimento = idMovimento;
	}

}

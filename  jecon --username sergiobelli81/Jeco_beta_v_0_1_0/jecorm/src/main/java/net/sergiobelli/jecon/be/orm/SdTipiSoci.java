package net.sergiobelli.jecon.be.orm;

// Generated 9-feb-2009 22.42.43 by Hibernate Tools 3.2.4.CR1

/**
 * SdTipiSoci generated by hbm2java
 */
public class SdTipiSoci implements java.io.Serializable {

	private Byte id;
	private String tipo;

	public SdTipiSoci() {
	}

	public SdTipiSoci(String tipo) {
		this.tipo = tipo;
	}

	public Byte getId() {
		return this.id;
	}

	public void setId(Byte id) {
		this.id = id;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

}
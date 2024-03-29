package net.sergiobelli.jecon.be.orm;

// Generated 9-feb-2009 22.42.43 by Hibernate Tools 3.2.4.CR1

import java.util.Date;

/**
 * SdAccessiId generated by hbm2java
 */
public class SdAccessiId implements java.io.Serializable {

	private int id;
	private String sessione;
	private String username;
	private Date data;

	public SdAccessiId() {
	}

	public SdAccessiId(int id, String sessione, String username, Date data) {
		this.id = id;
		this.sessione = sessione;
		this.username = username;
		this.data = data;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSessione() {
		return this.sessione;
	}

	public void setSessione(String sessione) {
		this.sessione = sessione;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Date getData() {
		return this.data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof SdAccessiId))
			return false;
		SdAccessiId castOther = (SdAccessiId) other;

		return (this.getId() == castOther.getId())
				&& ((this.getSessione() == castOther.getSessione()) || (this
						.getSessione() != null
						&& castOther.getSessione() != null && this
						.getSessione().equals(castOther.getSessione())))
				&& ((this.getUsername() == castOther.getUsername()) || (this
						.getUsername() != null
						&& castOther.getUsername() != null && this
						.getUsername().equals(castOther.getUsername())))
				&& ((this.getData() == castOther.getData()) || (this.getData() != null
						&& castOther.getData() != null && this.getData()
						.equals(castOther.getData())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getId();
		result = 37 * result
				+ (getSessione() == null ? 0 : this.getSessione().hashCode());
		result = 37 * result
				+ (getUsername() == null ? 0 : this.getUsername().hashCode());
		result = 37 * result
				+ (getData() == null ? 0 : this.getData().hashCode());
		return result;
	}

}

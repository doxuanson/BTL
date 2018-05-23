package model;

import java.util.Date;

public class SuDung_CSVC {

	private String matb;
	private String matv;
	private Date ngaynhan;
	private Date ngaytra;

	public String getMaTB() {
		return matb;
	}

	public void setMaTB(String matb) {
		this.matb = matb;
	}

	public String getMaTV() {
		return matv;
	}

	public void setMaTV(String matv) {
		this.matv = matv;
	}

	public Date getNgayNhan() {
		return ngaynhan;
	}

	public void setNgayNhan(Date ngaynhan) {
		this.ngaynhan = ngaynhan;
	}

	public Date getNgayTra() {
		return ngaytra;
	}

	public void setNgayTra(Date ngaytra) {
		this.ngaytra = ngaytra;
	}

}

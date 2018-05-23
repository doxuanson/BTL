package model;

import java.util.Date;

public class BaiViet {
	private String mabv;
	private String tieude;
	private String noidung;
	private Date ngaydang;
	private Date ngaysua;
	private int soluotxem;
	
	public String getMaBV() {
		return mabv;
	}
	public void setMaBV(String mabv) {
		this.mabv = mabv;
	}
	public String getTieuDe() {
		return tieude;
	}
	public void setTieuDe(String tieude) {
		this.tieude = tieude;
	}
	public String getNoiDung() {
		return noidung;
	}
	public void setNoiDung(String noidung) {
		this.noidung = noidung;
	}
	public Date getNgayDang() {
		return ngaydang;
	}
	public void setNgayDang(Date ngaydang) {
		this.ngaydang = ngaydang;
	}
	public Date getNgaySua() {
		return ngaysua;
	}
	public void setNgaySua(Date ngaysua) {
		this.ngaysua = ngaysua;
	}
	public int getSoLuotXem() {
		return soluotxem;
	}
	public void setSoLuotXem(int soluotxem) {
		this.soluotxem = soluotxem;
	}


}

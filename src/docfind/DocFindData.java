package docfind;

public class DocFindData {
	private String local; 
	private String hos_name;
	private String adress;
	private String tel;
	private String hp;
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public String getHos_name() {
		return hos_name;
	}
	public void setHos_name(String hos_name) {
		this.hos_name = hos_name;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	
	@Override
	public String toString() {
		return "DocFindData [local=" + local + ", hos_name=" + hos_name + ", adress=" + adress + ", tel=" + tel
				+ ", hp=" + hp + "]";
	}
	
	
}

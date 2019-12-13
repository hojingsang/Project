package connect;

public class rentDTO {
	private String id;
	private String name;
	private String password;
	private String tel;
	private String myun;
	private int gender;
	
	private String cno;
	private String ctype;
	private int cprice;
	private int crent;
	
	public rentDTO() {	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMyun() {
		return myun;
	}

	public void setMyun(String myun) {
		this.myun = myun;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getCtype() {
		return ctype;
	}

	public void setCtype(String ctype) {
		this.ctype = ctype;
	}

	public int getCprice() {
		return cprice;
	}

	public void setCprice(int cprice) {
		this.cprice = cprice;
	}

	public int getCrent() {
		return crent;
	}

	public void setCrent(int crent) {
		this.crent = crent;
	}
	
}

package connect;

public class rentDTO {
	//rentuser
	private String id;
	private String name;
	private String password;
	private String tel;
	private String myun;
	private int gender;
	
	//carinfo
	private String cid;
	private String ctype;
	private int cprice;
	private int crent;
	
	//carrent
	private String userid;
	private String username;
	private String usertel;
	private String usermyun;
	private int rentinfo;
	private String rentno;
		
	public rentDTO() {	}

	
	public String getCid() {
		return cid;
	}


	public void setCid(String cid) {
		this.cid = cid;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getUsertel() {
		return usertel;
	}


	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}


	public String getUsermyun() {
		return usermyun;
	}


	public void setUsermyun(String usermyun) {
		this.usermyun = usermyun;
	}


	public int getRentinfo() {
		return rentinfo;
	}


	public void setRentinfo(int rentinfo) {
		this.rentinfo = rentinfo;
	}


	public String getRentno() {
		return rentno;
	}


	public void setRentno(String rentno) {
		this.rentno = rentno;
	}


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

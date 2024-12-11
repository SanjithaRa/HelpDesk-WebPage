package appointment;

public class Appointment {

	private int appid;
	private String name;
	private String  email;
	private String expertname;
	private String date;
	private String concern;
	
	public Appointment(int appid, String name, String email, String expertname, String date, String concern) {
		
		this.appid = appid;
		this.name = name;
		this.email = email;
		this.expertname = expertname;
		this.date = date;
		this.concern = concern;
	}

	public int getAppid() {
		return appid;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getExpertname() {
		return expertname;
	}

	public String getDate() {
		return date;
	}

	public String getConcern() {
		return concern;
	}
	
	
	
}

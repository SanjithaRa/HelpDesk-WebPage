package ticket;

public class Ticket {
	
	private int tid;
	private String name;
	private String email;
	private String phone;
	private String date;
	private String concern;
	
	public Ticket(int tid, String name, String email, String phone, String date, String concern) {
		
		this.tid = tid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.date = date;
		this.concern = concern;
	}

	public int getTid() {
		return tid;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getDate() {
		return date;
	}

	public String getConcern() {
		return concern;
	}
	
	
	
	

}

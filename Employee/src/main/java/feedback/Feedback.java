package feedback;

public class Feedback {
	private int id;
	private String name;
	private String date;
	private String email;
	private String Feedback;
	
	public Feedback(int id, String name, String date, String email, String feedback) {
		
		this.id = id;
		this.name = name;
		this.date = date;
		this.email = email;
		Feedback = feedback;
	}
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getDate() {
		return date;
	}
	public String getEmail() {
		return email;
	}
	public String getFeedback() {
		return Feedback;
	}
	
	
}

package Employee;

public class Employee {

	private int empid;
	private String name; 
	private String age;
	private String experience;
	private String position;
	private String email;
	private String pnum;
	
	public Employee(int empid, String name, String age, String experience, String position, String email, String pnum) {
		
		this.empid = empid;
		this.name = name;
		this.age = age;
		this.experience = experience;
		this.position = position;
		this.email = email;
		this.pnum = pnum;
	}

	public int getEmpid() {
		return empid;
	}

	public String getName() {
		return name;
	}

	public String getAge() {
		return age;
	}

	public String getExperience() {
		return experience;
	}

	public String getPosition() {
		return position;
	}

	public String getEmail() {
		return email;
	}

	public String getPnum() {
		return pnum;
	}

	
}

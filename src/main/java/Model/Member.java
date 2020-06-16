package Model;


public class Member {
    private int id;
    private String firstName;
    private String lastName;
    private String emailAdd;
    private String password;

    public Member() {
        super();
    }

    public Member(String firstName, String lastName, String emailAdd, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.emailAdd = emailAdd;
        this.password=password;
       // this.role = Role.MEMBER;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmailAdd() {
        return emailAdd;
    }

    public void setEmailAdd(String emailAdd) {
        this.emailAdd = emailAdd;
    }

//    public Role getRole() {
//        return role;
//    }
//
//    public void setRole(Role role) {
//        this.role = role;
//    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    }



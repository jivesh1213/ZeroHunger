package pojo;

public class DBoys {
    
    private String phone;
    private String adharno;
    private String name;
    private String age;
    private String email;
    private String shift;
    private String orgname;
    
    public DBoys() {
    }

    public DBoys(String adharno) {
        this.adharno = adharno;
    }

    public DBoys(String adharno, String name, String age, String phone, String orgname, String shift) {
        this.adharno = adharno;
        this.name = name;
        this.age = age;
        this.phone = phone;
        this.orgname = orgname;
        this.shift = shift;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAdharno() {
        return adharno;
    }

    public void setAdharno(String adharno) {
        this.adharno = adharno;
    }

    public String getOrgname() {
        return orgname;
    }

    public void setOrgname(String orgname) {
        this.orgname = orgname;
    }

    public String getShift() {
        return shift;
    }

    public void setShift(String shift) {
        this.shift = shift;
    }
   
}

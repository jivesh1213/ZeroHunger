package pojo;

public class OrgDetails {
    private String phone;
    private String orgName;
    private String pName;
    private String city;
    private String pincode;
    private String area;
    private String email;
    private String capacity;
    private String Organisation;
    private Integer dbAlloted;
    
    public OrgDetails() {
    }

    public OrgDetails(String phone) {
        this.phone = phone;
    }
    
    public OrgDetails(String phone, String orgName, String pName, String city, String pincode, String area, String email, String capacity, String Organisation, Integer dbAlloted) {
        this.phone = phone;
        this.orgName = orgName;
        this.pName = pName;
        this.city = city;
        this.pincode = pincode;
        this.area = area;
        this.email = email;
        this.capacity = capacity;
        this.Organisation = Organisation;
        this.dbAlloted = dbAlloted;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public String getOrganisation() {
        return Organisation;
    }

    public void setOrganisation(String Organisation) {
        this.Organisation = Organisation;
    }

    public Integer getDbAlloted() {
        return dbAlloted;
    }

    public void setDbAlloted(Integer dbAlloted) {
        this.dbAlloted = dbAlloted;
    }

}
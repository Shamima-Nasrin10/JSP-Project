
package model;

public class Teacher {
    
     private Long id;
    private String name;
    private String department;
    private String gender;

    public Teacher() {
    }

    public Teacher(Long id) {
        this.id = id;
    }

    public Teacher(String name, String department, String gender) {
        this.name = name;
        this.department = department;
        this.gender = gender;
    }

    public Teacher(Long id, String name, String department, String gender) {
        this.id = id;
        this.name = name;
        this.department = department;
        this.gender = gender;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    
    
    
}

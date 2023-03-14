package org.userwebapp.model;

public class User {
    //attributes
    private int uid = 0;
    private String email, fName, lName, password, reEnteredPassword;

    public User(){}

    public User(int uid, String email, String fName, String lName, String password) {
        this.uid = uid;
        this.email = email;
        this.fName = fName;
        this.lName = lName;
        this.password = password;
    }

//    public User(int uid, String email, String fName, String lName, String password, String reEnteredPassword) {
//        this.uid = uid;
//        this.email = email;
//        this.fName = fName;
//        this.lName = lName;
//        this.password = password;
//        this.reEnteredPassword = reEnteredPassword;
//    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getReEnteredPassword() {
        return reEnteredPassword;
    }

    public void setReEnteredPassword(String reEnteredPassword) {
        this.reEnteredPassword = reEnteredPassword;
    }
}

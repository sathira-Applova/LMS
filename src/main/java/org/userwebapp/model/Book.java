package org.userwebapp.model;


public class Book {


    //properties

    private String bName;
    private int bookID;
    private int noOfCopies = 1;

    public Book(){}

    public Book(int bookID, String bName, int noOfCopies){
        this.bookID = bookID;
        this.bName = bName;
        this.noOfCopies = noOfCopies;
    }

    //getters and setters
    public String getbName() {
        return bName;
    }

    public void setbName(String bName) {
        this.bName = bName;
    }

    public int getBookID() {
        return bookID;
    }

    public void setBookID(int bookID) {
        this.bookID = bookID;
    }

    public int getNoOfCopies() {
        return noOfCopies;
    }

    public void setNoOfCopies(int noOfCopies) {
        this.noOfCopies = noOfCopies;
    }
}


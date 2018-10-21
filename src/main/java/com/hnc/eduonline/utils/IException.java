/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.utils;

/**
 *
 * @author nhuongnm
 */
public class IException  extends Exception{
	private String location = null;
    private Throwable throwable = null;

    public IException() {
        super();
    }

    public IException(String description) {
        super(description);
    }

    public IException(String location, String description) {
        super(description);
        this.location = location;
    }

    public IException(String location, Throwable throwable) {
        super(throwable.getMessage());
        this.location = location;
        this.throwable = throwable;
    }

    public String getLocation() {
        return location;
    }

    public Throwable getThrowable() {
        return throwable;
    }

    public String getLocationMessage() {
        return location + ": " + getMessage();
    }
}

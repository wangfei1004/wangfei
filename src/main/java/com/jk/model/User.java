package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by yangzhichao on 2018-04-03.
 */
public class User implements Serializable  {

    private static final long serialVersionUID = -1800233088030401297L;

    private String id;

    private String name;

    private String pwd;

    /*private Date createdatetime;

    private Date modifydatetime;*/

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        return id.equals(user.id);

    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }


}

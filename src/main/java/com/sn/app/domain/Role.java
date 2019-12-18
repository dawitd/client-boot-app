package com.sn.app.domain;



import javax.persistence.OneToMany;
import java.util.HashSet;
import java.util.Set;



public class Role {



    private long id;


    private String name;

    private String description;

    private Long createdOn;

    private Long modifiedOn;

    @OneToMany(mappedBy = "roles")
    private Set<Person> person = new HashSet<>();
}

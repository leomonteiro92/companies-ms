package com.ms.companies;

import org.springframework.data.annotation.Id;

public class Company {
    @Id
    private String id;

    private String title;

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
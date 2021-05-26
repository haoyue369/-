package com.hao.vo;

import java.util.ArrayList;

public class Repository {
    //这里就用到了泛型和集合的概念
    private ArrayList<Good> repo;

    public Repository(ArrayList<Good> repo) {
        this.repo = repo;
    }

    @Override
    public String toString() {
        return "Repository{" +
                "repo=" + repo +
                '}';
    }

    public ArrayList<Good> getRepo() {
        return repo;
    }

    public void setRepo(ArrayList<Good> repo) {
        this.repo = repo;
    }

    public Repository() {
    }
}

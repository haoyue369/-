package com.hao.vo;

import java.util.ArrayList;

public class Cart {
    //这里变成了一个购物车
    private ArrayList<Good> cart= new ArrayList<>();

    public Cart(ArrayList<Good> repo) {
        this.cart = repo;
    }

    @Override
    public String toString() {
        return "Repository{" +
                "repo=" + cart +
                '}';
    }

    public ArrayList<Good> getCart() {
        return cart;
    }

    public void setCart(ArrayList<Good> cart) {
        this.cart = cart;
    }

    public Cart() {
    }
}

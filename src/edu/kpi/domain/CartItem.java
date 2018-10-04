package edu.kpi.domain;

public class CartItem {
    private Alcohol item;

    public CartItem(Alcohol item) {
        this.item = item;
    }

    public CartItem() {
    }

    public Alcohol getItem() {
        return item;
    }

    public void setItem(Alcohol item) {
        this.item = item;
    }
}

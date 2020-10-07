/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author TASS
 */
public class OrderModel {

    private int id;
    private CustomerModel customer;
    private Date date;
    private List<OrderProductModel> listOrders = new ArrayList<>();
    private float total;
    private int totalItems;

    public OrderModel() {
    }

    public OrderModel(int id, CustomerModel customer, Date date, float total) {
        this.id = id;
        this.customer = customer;
        this.date = date;
        this.total = total;
    }

    public float gettotal() {
        return total;
    }

    public void settotal(float total) {
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public CustomerModel getCustomer() {
        return customer;
    }

    public void setCustomer(CustomerModel customer) {
        this.customer = customer;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public List<OrderProductModel> getListOrders() {
        return listOrders;
    }

    public void setListOrders(List<OrderProductModel> listOrders) {
        this.listOrders = listOrders;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public int getTotalItems() {
        return totalItems;
    }

    public void setTotalItems(int totalItems) {
        this.totalItems = totalItems;
    }

    public void addOrderProduct(ProductModel product) {
        boolean isExist = false;
        if (listOrders.size() == 0) {
            listOrders.add(new OrderProductModel(product));
            totalItems = 1;
        } else {
            for (OrderProductModel orderProduct : listOrders) {
                if (product.getId() == orderProduct.getProduct().getId()) {
                    orderProduct.setQuantity(orderProduct.getQuantity() + 1);
                    orderProduct.setTotal(orderProduct.getTotal() + product.getPrice());
                    isExist = true;
                }
            }
            if (!isExist) {
                listOrders.add(new OrderProductModel(product));
            }
            totalItems += 1;
        }
        total += product.getPrice();
    }

}

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

    public void addOrderProduct(ProductModel product, int quantity) {
        boolean isExist = false;
        if (listOrders.size() == 0) {
            listOrders.add(new OrderProductModel(product, quantity));
            totalItems = quantity;
        } else {
            for (OrderProductModel orderProduct : listOrders) {
                if (product.getId() == orderProduct.getProduct().getId()) {
                    orderProduct.setQuantity(orderProduct.getQuantity() + quantity);
                    orderProduct.setTotal(orderProduct.getTotal() + product.getPrice() * quantity);
                    isExist = true;
                }
            }
            if (!isExist) {
                listOrders.add(new OrderProductModel(product, quantity));
            }
            totalItems += quantity;
        }
        total += product.getPrice() * quantity;
    }

    public void deleteOrderProduct(ProductModel product) {
        for (int i = 0; i < listOrders.size(); i++) {
            if (product.getId() == listOrders.get(i).getProduct().getId()) {

                totalItems -= listOrders.get(i).getQuantity();
                total -= product.getPrice() * listOrders.get(i).getQuantity();
                listOrders.remove(i);
                i--;
            }

        }
    }

    public void updateOrderProduct(ProductModel product, int quantity) {
        for (OrderProductModel orderProduct : listOrders) {
            if (product.getId() == orderProduct.getProduct().getId()) {
                totalItems += (quantity - orderProduct.getQuantity());
                total += product.getPrice() * (quantity - orderProduct.getQuantity());
                orderProduct.setQuantity(quantity);
                orderProduct.setTotal(product.getPrice() * quantity);
            }
        }
    }

    public OrderProductModel getOrderProductByProductId(int productId) {
        for (OrderProductModel orderProduct : listOrders) {
            if (productId == orderProduct.getProduct().getId()) {
                return orderProduct;
            }
        }
        return null;
    }

}

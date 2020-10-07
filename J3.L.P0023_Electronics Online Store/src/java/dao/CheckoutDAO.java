/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.CustomerModel;
import model.OrderModel;
import model.OrderProductModel;

/**
 *
 * @author TASS
 */
public class CheckoutDAO extends DBContext {

    public int checkout(CustomerModel customer, OrderModel order) {
        try {
           
            connection.setAutoCommit(false);
            //insert into Customer
            String sql1 = "INSERT INTO dbo.CUSTOMER\n"
                    + "VALUES\n"
                    + "(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement st1 = null;
            st1 = connection.prepareStatement(sql1, st1.RETURN_GENERATED_KEYS);
            st1.setString(1, customer.getName());
            st1.setString(2, customer.getCompany());
            st1.setString(3, customer.getAddress1());
            st1.setString(4, customer.getAddress2());
            st1.setString(5, customer.getZip());
            st1.setString(6, customer.getCity());
            st1.setString(7, customer.getState());
            st1.setString(8, customer.getCountry());
            st1.setString(9, customer.getPhone());
            st1.setString(10, customer.getEmail());
            st1.setString(11, customer.getComment());
            st1.executeUpdate();

            ResultSet rs1 = st1.getGeneratedKeys();
            int customerId = -1;
            if (rs1.next()) {
                customerId = rs1.getInt(1);
            }
            //insert into order
            String sql2 = "INSERT INTO dbo.[ORDER]\n"
                    + "VALUES\n"
                    + "(?, GETDATE())";
            PreparedStatement st2 = null;
            st2 = connection.prepareStatement(sql2, st2.RETURN_GENERATED_KEYS);
            st2.setInt(1, customerId);
            st2.executeUpdate();
            ResultSet rs2 = st2.getGeneratedKeys();
            int orderId = -1;
            if (rs2.next()) {
                orderId = rs2.getInt(1);
            }

            for (OrderProductModel orderProduct : order.getListOrders()) {
                //insert into order
                String sql3 = "INSERT INTO dbo.ORDER_PRODUCT\n"
                        + "(QUANTITY,ORDERID,PRODUCTID)\n"
                        + "VALUES\n"
                        + "(?,?,?)";
                PreparedStatement st3 = null;
                st3 = connection.prepareStatement(sql3);
                st3.setInt(1, orderProduct.getQuantity());
                st3.setInt(2, orderId);
                st3.setInt(3, orderProduct.getProduct().getId());
                st3.executeUpdate();

                //Update quantity of Product
                
                
                String sql4 = "UPDATE dbo.PRODUCT\n"
                        + "SET QUANTITY = ?\n"
                        + "WHERE ID = ?";
                PreparedStatement st4 = null;
                st4 = connection.prepareStatement(sql4);
                st4.setInt(1, orderProduct.getProduct().getQuantity() - orderProduct.getQuantity());
                st4.setInt(2, orderProduct.getProduct().getId());
                st4.executeUpdate();
            }
            //execute transaction
            connection.commit();
            return orderId;
        } catch (SQLException ex) {
            Logger.getLogger(CheckoutDAO.class.getName()).log(Level.SEVERE, null, ex);
            try {
                connection.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(CheckoutDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(CheckoutDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return -1;
    }

}

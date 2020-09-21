/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;

/**
 *
 * @author ViruSs0209
 */
public class DateFormat {
    public String getDateFormat(Date date) {
        return new SimpleDateFormat("dd-MM-yyyy").format(date).toLowerCase();
    }
    
    public String getCurrentDate() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MMMM yyy");  
        LocalDateTime now = LocalDateTime.now();  
        return dtf.format(now);
    }
}

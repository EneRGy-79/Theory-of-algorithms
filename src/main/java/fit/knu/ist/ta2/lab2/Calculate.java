/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fit.knu.ist.ta2.lab2;

import java.math.RoundingMode;
import java.math.BigDecimal;

/**
 *
 * @author Ivan
 */
public class Calculate {

    public static double lab2equation(double x) {
        if (x == 0) {
            return 0;
        }
        double y;
        double a = 8, b = 9, c = -5, d = 9;
        
        y = (double) Math.log(d * x) / ((a * x * x) + (b * x) + c);
        y = BigDecimal.valueOf(y)
                .setScale(3, RoundingMode.HALF_UP)
                .doubleValue();
        return y;
    }

}
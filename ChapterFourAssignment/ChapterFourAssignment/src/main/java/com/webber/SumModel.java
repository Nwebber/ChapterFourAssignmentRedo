package com.webber;

import java.math.BigDecimal;
import java.math.RoundingMode;

/**
 *
 * @author Nathaniel Webber
 */
public class SumModel {

    private BigDecimal num1;
    private BigDecimal num2;
    private String num1Error = "";
    private String num2Error = "";
    private BigDecimal sum;
    private String message;

    public SumModel() {
        
    }

    public BigDecimal getNum1() {
        return num1;
    }
    public void setNum1(String num1) {
        this.num1 = validateSums(num1, 1);
    }

    public BigDecimal getNum2() {
        return num2;
    }
    public void setNum2(String num2) {
        this.num2 = validateSums(num2, 2);
    }

    public String getNum1Error() {
        return num1Error;
    }

    public void setNum1Error(String num1Error) {
        this.num1Error = num1Error;
    }

    public String getNum2Error() {
        return num2Error;
    }

    public void setNum2Error(String num2Error) {
        this.num2Error = num2Error;
    }
    
    public BigDecimal getSum() {
        sum = num1.add(num2);
        sum = sum.setScale(2, RoundingMode.HALF_UP);
        return sum;
    }
    public void setSum(BigDecimal sum) {
        this.sum = sum;
    }

    public String getMessage() {
        return num1 + " + " + num2 + " = " + getSum();
    }
    public void setMessage(String message) {
        this.message = message;
    }
    
    private BigDecimal validateSums(String number, int num) {
        
        BigDecimal result;
        
        if (null == number || number.equals("")) {
            result = new BigDecimal(0.0);
        } else {
            try {
                result = new BigDecimal(number);
            } catch (NumberFormatException nfe) {
                result = new BigDecimal(0.0);
                if (num == 1) {
                    num1Error = "Invalid Number";
                }
                else {
                    num2Error = "Invalid Number";
                }
            }
        }
        return result;
    }
}

package com.webber;

import java.math.BigDecimal;

/**
 *
 * @author Nathaniel Webber
 */
public class SumModel {

    private BigDecimal num1;
    private BigDecimal num2;
    private String userNumberError = "";

    public SumModel() {
        this.validateSums(null);
    }

    public SumModel(String num) {
        this.validateSums(num);
    }

    public BigDecimal getNum1() {
        return num1;
    }

    public void setNum1(String num1) {
        validateSums(num1);
    }

    public BigDecimal getNum2() {
        return num2;
    }

    public void setNum2(String num2) {
        validateSums(num2);
    }

    public String getUserNumberError() {
        return this.userNumberError;
    }

    private final void validateSums(String number) {
        if (null == number || number.equals("")) {
            this.num1 = new BigDecimal(0.0);
            this.num2 = new BigDecimal(0.0);
            this.userNumberError = "No number supplied";
        } else {
            try {
                this.num1 = new BigDecimal(number);
                this.num2 = new BigDecimal(number);
            } catch (NumberFormatException nfe) {
                this.num1 = new BigDecimal(0.0);
                this.num2 = new BigDecimal(0.0);
                this.userNumberError = "Not a number";
            }
        }
    }
}

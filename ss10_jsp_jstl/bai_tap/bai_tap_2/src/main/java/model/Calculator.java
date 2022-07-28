package model;

import exception.UseException;

public class Calculator {


    public static double calculator(double first, double second, String operator) throws UseException {
        double resufl =0;
        if (second == 0 ){
            String str = "không thể chia cho số 0";
        }
        switch (operator){
            case "+":
                resufl = first+second;
                break;
            case "-":
                resufl = first - second;
                break;
            case "*":
                resufl = first * second;
                break;
            case "/":
                if (second == 0){
                    throw new UseException("không chia được cho 0");
                }else {
                    resufl = first/second;
                }
               break;
        }
        return resufl;
    }
}

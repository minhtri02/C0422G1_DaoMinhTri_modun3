package Service;

import exception.UseException;

public class CalculatorService {


    public static String calculator(double first, double second, String operator) throws UseException {
        String resufl ="";
        if (second == 0 ){
        }
        switch (operator){
            case "+":
                resufl = first+second +"";
                break;
            case "-":
                resufl = first - second+"";
                break;
            case "*":
                resufl = first * second+"";
                break;
            case "/":
                if (second == 0){
                    try {
                        throw new UseException("cannot be divided by 0");
                    } catch (UseException e) {
                        resufl = e.getMessage();
                    }
                }else {
                    resufl = first/second+"";
                }
               break;
        }
        return resufl;
    }
}

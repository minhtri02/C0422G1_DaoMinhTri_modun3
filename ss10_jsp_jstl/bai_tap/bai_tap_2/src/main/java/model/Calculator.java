package model;

public class Calculator extends  Exception{


    public static double calculator(double first, double second, String operator) throws Exception{
        double resufl =0;
        if (second == 0 ){
            String str = "không thể chia cho số 0";

        }
        switch (operator){
            case "+":
                resufl = first+second;
                return resufl;
            case "-":
                resufl = first - second;
                return  resufl;
            case "*":
                resufl = first * second;
                return resufl;
            case "/":
                if (second == 0){

                }
        }
    }
}

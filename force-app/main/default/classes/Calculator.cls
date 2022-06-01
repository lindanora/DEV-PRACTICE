public class Calculator {
    public Decimal dynamicCalculationMethod(Decimal num1, Decimal num2, string operator){
        Decimal result;
        switch on operator {
            
            when 'addition' {
                result = num1 + num2;  
            }
            when 'substraction'{
                result =num1 - num2;
            }
            when 'multiplication'{
                result = num1 * num2;
            }
            when 'division'{
                result = num1 / num2;
            }
        
        }
            return result;
    }
}

module test_real;
    real num1, num2, num3, result;

    initial begin
        num1 = 10.5;
        num2 = 2.3;
        num3=5.5;

        result = num1 + num2;
        $display("Addition: %f", result);

        result = num1 - num2;
        $display("Subtraction: %f", result);

        result = num1 * num2;
        $display("Multiplication: %f", result);

        result = num1 / num2;
        $display("Division: %f", result);

         result = num2 + num3;
        $display("Addition: %f", result);

    end
endmodule

//OUTPUT
# Addition: 12.800000
# Subtraction: 8.200000
# Multiplication: 24.150000
# Division: 4.565217
# Addition: 7.800000

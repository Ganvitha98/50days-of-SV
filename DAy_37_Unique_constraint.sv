class UniqueExample;
    rand bit [5:0] a, b, c;

    constraint unique_values {unique {a, b, c};}

endclass

module testbench;
    initial begin
        UniqueExample o1;
         o1=new();
          repeat(5)
          begin
         o1.randomize();
         $display("Generated values: a = %0d, b = %0d, c = %0d", o1.a,o1.b,o1.c);
  end
 end
endmodule
//output
# Generated values: a = 37, b = 59, c = 6
# Generated values: a = 46, b = 48, c = 1
# Generated values: a = 11, b = 7, c = 37
# Generated values: a = 17, b = 58, c = 12
# Generated values: a = 63, b = 22, c = 18

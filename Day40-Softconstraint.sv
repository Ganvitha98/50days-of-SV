class soft_constraint;

   rand bit [8:0] item;

  constraint item_c {  item > 10;soft item < 60; item%5==0;}

 endclass

 module constraint_example;
  soft_constraint in;

   initial begin
     in = new();

     repeat(5) begin

       in.randomize();

       $display("Before inline constraint: item = %0d", in.item);

       in.randomize with {item inside{[62:80]};};

       $display("After inline constraint: item = %0d", in.item);

       $display("--------------------------------------------------");

     end
   end
 endmodule
//Output
# Before inline constraint: item = 45
# After inline constraint: item = 80
# --------------------------------------------------
# Before inline constraint: item = 40
# After inline constraint: item = 70
# --------------------------------------------------
# Before inline constraint: item = 15
# After inline constraint: item = 75
# --------------------------------------------------
# Before inline constraint: item = 30
# After inline constraint: item = 80
# --------------------------------------------------
# Before inline constraint: item = 35
# After inline constraint: item = 70
# --------------------------------------------------

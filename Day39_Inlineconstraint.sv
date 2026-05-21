class inline_constraint;

   rand bit [5:0] item;

  constraint item_c {  item > 10; item < 60; item%5==0;}

 endclass

 module constraint_example;
   inline_constraint in;

   initial begin
     in = new();

     repeat(5) begin

       in.randomize();

       $display("Before inline constraint: item = %0d", in.item);

       in.randomize with {item inside{[20:30]};};

       $display("After inline constraint: item = %0d", in.item);

       $display("--------------------------------------------------");

     end

     //output
     # Before inline constraint: item = 25
# After inline constraint: item = 20
# --------------------------------------------------
# Before inline constraint: item = 50
# After inline constraint: item = 30
# --------------------------------------------------
# Before inline constraint: item = 15
# After inline constraint: item = 20
# --------------------------------------------------
# Before inline constraint: item = 40
# After inline constraint: item = 30
# --------------------------------------------------
# Before inline constraint: item = 30
# After inline constraint: item = 25
# --------------------------------------------------
   end
 endmodule

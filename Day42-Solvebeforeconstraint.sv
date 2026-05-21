class solve_before_constraint;
   rand bit x;
   rand bit [4:0] y;

   constraint bidirectional { x -> y == 0; }

   constraint solve_before { solve x before y; }

  endclass

 module constraint_example;
   solve_before_constraint item;

   initial begin
     item = new();

     repeat(10) begin
       item.randomize();
       $display("x = %d | y = %d",item.x,item.y);
     end
   end
 endmodule
//Output
# x = 0 | y = 23
# x = 1 | y =  0
# x = 1 | y =  0
# x = 0 | y =  3
# x = 0 | y = 26
# x = 1 | y =  0
# x = 1 | y =  0
# x = 0 | y = 16
# x = 0 | y = 20
# x = 1 | y =  0

 class implication_operator_constraint;
   rand bit [4:0] data;
   rand enum {LOW, HIGH}value ;

 constraint value_c { (value == LOW) -> data inside {[11:21]}; }

 endclass

 module constraint_example;
   implication_operator_constraint im;

   initial begin
     im = new();

    repeat(10) begin
       im.randomize();
       $display("data = %s, value = %0d", im.value.name(), im.data);
     end
   end
 endmodule
//Output
# data = HIGH, value = 7
# data = LOW, value = 17
# data = HIGH, value = 7
# data = HIGH, value = 28
# data = LOW, value = 14
# data = LOW, value = 15
# data = HIGH, value = 29
# data = HIGH, value = 9


# data = HIGH, value = 17
# data = HIGH, value = 9

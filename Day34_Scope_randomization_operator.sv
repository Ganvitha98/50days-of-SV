class scope_randomization_operator;
  bit [4:0] addr;
  static int data;

  static function stat_display(int data);
    $display("Value of data = %0h", data);
  endfunction

  function auto_display(int data);
    $display("Value of data = %0h", data);
  endfunction
endclass

module class_example;
  initial begin
  scope_randomization_operator s1;
   s1.auto_display(15);
   scope_randomization_operator::data = 10;
   scope_randomization_operator::stat_display(scope_randomization_operator::data);
   end
endmodule
//Output
# Value of data = f
# Value of data = a

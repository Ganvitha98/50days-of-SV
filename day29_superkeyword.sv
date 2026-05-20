class parent_trans;
  bit [31:0] data;

  function void display();
     $display("Base: Value of data = %0h", data);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;

  function void display();
    super.data=30;
    super.display();
    $display("Child: Value of data = %0h", data);
  endfunction
endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new();

    c_tr.data = 5;
    c_tr.display();
  end
endmodule
//output
# Base: Value of data = 1e
# Child: Value of data = 5


virtual class base;
  bit [31:0] data;
  int id;

  function void display();
    $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class sub extends base;
endclass

module class_example;
  initial begin
     sub s_tr;

     s_tr = new();

    s_tr.data = 5;
    s_tr.id = 1;
    s_tr.display();
  end
endmodule
//Output
# Base: Value of data = 5 and id = 1

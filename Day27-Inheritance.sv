class parent_class;
  bit [31:0] data;

  function void parent();
    $display("parent:Value of data = %0h", data);
  endfunction
endclass

class child_class extends parent_class;
  int id;

  function void child();
    $display("child:Value of id = %0h", id);
  endfunction

endclass

module class_example;
  initial begin
    child_class c;
    c = new();
    c.data = 5;
    c.id = 1;

    c.parent();
    c.child();
  end
endmodule
//Output
# parent:Value of data = 5
# child:Value of id = 1

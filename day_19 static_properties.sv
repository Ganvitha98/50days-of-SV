class transaction;
  static int a_id;
  int id;

  function new ();
    a_id++;
    id++;
  endfunction
endclass

module class_example;
  transaction a,an[7];
  initial begin
    a.a_id=10;
    $display(a.a_id);
    foreach (an[i]) begin
      an[i] = new();
      $display("The Value of a_id = %0d, id = %0d", an[i].a_id, an[i].id);
    end
  end
endmodule

//OUTPUT
# The Value of a_id = 11, id = 1
# The Value of a_id = 12, id = 1
# The Value of a_id = 13, id = 1
# The Value of a_id = 14, id = 1
# The Value of a_id = 15, id = 1
# The Value of a_id = 16, id = 1
# The Value of a_id = 17, id = 1

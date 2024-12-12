module pass_by_name_task;

  task display_info(input string name, input int age, input string city);
    $display("Name: %s, Age: %0d, City: %s", name, age, city);
  endtask

  initial begin
    // Call by name
    display_info(.name("Anvi"), .age(20), .city("Kadapa"));
    display_info(.city("Hyderabad"), .age(21), .name("Anvitha"));
  end

endmodule

//OUTPUT:
# Name: Anvi, Age: 20, City: Kadapa
# Name: Anvitha, Age: 21, City: Hyderabad

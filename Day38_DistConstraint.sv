class dist_constraint;
  rand bit [5:0] item1;
  rand bit [5:0] item2;

  constraint item1_c {item1 dist {6:/4, [4:9] :/ 7,30:/2}; }
  constraint item2_c {item2 dist {6:=4, [4:9] := 7 ,30:=2}; }

endclass

module constraint_example;
  dist_constraint di;

  initial begin
    di = new();

    repeat(10) begin
      di.randomize();
      $display("item1 (with :/) = %0d ||| item2 (with :=)= %0d", di.item1, di.item2);
    end
  end
endmodule
//Outpuut
# item1 (with :/) = 30 ||| item2 (with :=)= 6
# item1 (with :/) = 6 ||| item2 (with :=)= 4
# item1 (with :/) = 9 ||| item2 (with :=)= 4
# item1 (with :/) = 6 ||| item2 (with :=)= 4
# item1 (with :/) = 30 ||| item2 (with :=)= 7
# item1 (with :/) = 30 ||| item2 (with :=)= 8
# item1 (with :/) = 6 ||| item2 (with :=)= 6
# item1 (with :/) = 9 ||| item2 (with :=)= 7
# item1 (with :/) = 7 ||| item2 (with :=)= 5
# item1 (with :/) = 6 ||| item2 (with :=)= 6

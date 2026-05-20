class inside_constraint;

  rand bit [5:0] val1;
  rand bit [5:0] val2;
  rand bit [5:0] val3;
  rand bit [5:0] val4;

  constraint val1_a {val1 inside {[15:30]};}

  constraint val2_a {val2 inside {20,30,25};}

  constraint val3_a {val3 inside {[10:20], 21, 23, [25:30], 40,100};}

  constraint val4_a {!(val4 inside {[20:30]});}

endclass


module inside_eg;
  inside_constraint in;

  initial begin
    in = new();

    repeat(7) begin
      in.randomize();
      $display("val1 = %0d ||val2 = %0d ||val3 = %0d ||val4 = %0d ", in.val1, in.val2, in.val3, in.val4);
    end
  end
endmodule
//Output
# val1 = 26 ||val2 = 30 ||val3 = 20 ||val4 = 51
# val1 = 24 ||val2 = 25 ||val3 = 26 ||val4 = 41
# val1 = 24 ||val2 = 30 ||val3 = 29 ||val4 = 47
# val1 = 16 ||val2 = 30 ||val3 = 13 ||val4 = 31
# val1 = 17 ||val2 = 20 ||val3 = 40 ||val4 = 4
# val1 = 30 ||val2 = 25 ||val3 = 21 ||val4 = 50
# val1 = 22 ||val2 = 20 ||val3 = 19 ||val4 = 17

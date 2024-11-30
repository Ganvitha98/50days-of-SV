module logic_example;

  logic [3:0] data_in;
  logic [1:0] sel;
  logic data_out;

  always_comb begin
    case (sel)
      2'b00: data_out = data_in[0];
      2'b01: data_out = data_in[1];
      2'b10: data_out = data_in[2];
      2'b11: data_out = data_in[3];
      default: data_out = 1'b0;
    endcase
  end

  initial begin
    data_in = 4'b1010;
    sel = 2'b00;
    #10 $display("SEL=%b, DATA_OUT=%b", sel, data_out);

    sel = 2'b01;
    #10 $display("SEL=%b, DATA_OUT=%b", sel, data_out);

    sel = 2'b10;
    #10 $display("SEL=%b, DATA_OUT=%b", sel, data_out);

    sel = 2'b11;
    #10 $display("SEL=%b, DATA_OUT=%b", sel, data_out);
  end

endmodule

//OUTPUT:--------------
# SEL=00, DATA_OUT=0
# SEL=01, DATA_OUT=1
# SEL=10, DATA_OUT=0
# SEL=11, DATA_OUT=1

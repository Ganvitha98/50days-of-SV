module packed_array_example;
  logic[7:0]byte_data;
  logic[15:0]half_word;
  logic[31:0]word;
  logic signed[31:0]word_signed;//1_D Packed array
  logic[7:0][3:0]data;//2_D Packed array
initial
  begin
    byte_data=8'hA6;
    half_word=16'h1654;
    word=32'hAD1456;
    word_signed=-32'd1345;
    data[0] = 8'hFF;
    data[1] = 8'hA7;
    data[2] = 8'h99;
    data[3] = 8'h8C;
        $display("byte_data = %h", byte_data);
        $display("half_word = %h", half_word);
        $display("word = %d", word);
        $display("word_signed = %d", word_signed);
        $display("data[0] = %h", data[0]);
        $display("data[1] = %h", data[1]);
        $display("data[2] = %h", data[2]);
        $display("data[3] = %h", data[3]);
   end
endmodule

//OUTPUT:
# byte_data = a6
# half_word = 1654
# word =   11342934
# word_signed =       -1345
# data[0] = f
# data[1] = 7
# data[2] = 9
# data[3] = c

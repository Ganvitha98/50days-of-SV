module unpacked_array_example;
 logic [7:0]data_array[2];
 logic [7:0]data[2][1];
initial
 begin
        data_array[0] = 8'hAA;
        data_array[1] = 8'hBB;
        data[0][0] = 8'h10;
        data[1][0]=8'hF0;
         $display("data_array[0] = %h", data_array[0]);
        $display("data_array[1] = %h", data_array[1]);
        $display("data[0][0] = %h", data[0][0]);
        $display("data[1][0] = %h", data[1][0]);
    end
endmodule

//OUTPUT:
# data_array[0] = aa
# data_array[1] = bb
# data[0][0] = 10
# data[1][0] = f0

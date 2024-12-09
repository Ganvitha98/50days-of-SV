module fixed_array_example;
    logic [7:0] my_array[10];

    logic [7:0] my_2d_array[5][4];

    initial begin
        my_array[0] = 8'b00000001;
        my_array[1] = 8'b00000010;
        my_array[2] = 8'b00000011;
        my_array[3] = 8'b00000100;
        my_array[4] = 8'b00000101;
        my_array[5] = 8'b00000110;
        my_array[6] = 8'b00000111;
        my_array[7] = 8'b00001000;
        my_array[8] = 8'b00001001;
        my_array[9] = 8'b00001010;

        my_2d_array[0][0] = 8'b00000001;
        my_2d_array[0][1] = 8'b00000010;
        my_2d_array[0][2] = 8'b00000011;
        my_2d_array[0][3] = 8'b00000100;
        my_2d_array[1][0] = 8'b00000101;
        my_2d_array[1][1] = 8'b00000110;
        my_2d_array[1][2] = 8'b00000111;
        my_2d_array[1][3] = 8'b00001000;
        my_2d_array[2][0] = 8'b00001001;
        my_2d_array[2][1] = 8'b00001010;
        my_2d_array[2][2] = 8'b00001011;
        my_2d_array[2][3] = 8'b00001100;
        my_2d_array[3][0] = 8'b00001101;
        my_2d_array[3][1] = 8'b00001110;
        my_2d_array[3][2] = 8'b00001111;
        my_2d_array[3][3] = 8'b00010000;
        my_2d_array[4][0] = 8'b00010001;
        my_2d_array[4][1] = 8'b00010010;
        my_2d_array[4][2] = 8'b00010011;
        my_2d_array[4][3] = 8'b00010100;

        $display("1D Array (my_array):");
        for (int i = 0; i < 10; i++) begin
            $display("my_array[%0d] = %b", i, my_array[i]);
        end

        $display("\n2D Array (my_2d_array):");
        for (int i = 0; i < 5; i++) begin
            for (int j = 0; j < 4; j++) begin
                $display("my_2d_array[%0d][%0d] = %b", i, j, my_2d_array[i][j]);
            end
        end
    end
endmodule

//OUTPUT:_
          # 1D Array (my_array):
# my_array[0] = 00000001
# my_array[1] = 00000010
# my_array[2] = 00000011
# my_array[3] = 00000100
# my_array[4] = 00000101
# my_array[5] = 00000110
# my_array[6] = 00000111
# my_array[7] = 00001000
# my_array[8] = 00001001
# my_array[9] = 00001010
#
# 2D Array (my_2d_array):
# my_2d_array[0][0] = 00000001
# my_2d_array[0][1] = 00000010
# my_2d_array[0][2] = 00000011
# my_2d_array[0][3] = 00000100
# my_2d_array[1][0] = 00000101
# my_2d_array[1][1] = 00000110
# my_2d_array[1][2] = 00000111
# my_2d_array[1][3] = 00001000
# my_2d_array[2][0] = 00001001
# my_2d_array[2][1] = 00001010
# my_2d_array[2][2] = 00001011
# my_2d_array[2][3] = 00001100
# my_2d_array[3][0] = 00001101
# my_2d_array[3][1] = 00001110
# my_2d_array[3][2] = 00001111
# my_2d_array[3][3] = 00010000
# my_2d_array[4][0] = 00010001
# my_2d_array[4][1] = 00010010
# my_2d_array[4][2] = 00010011
# my_2d_array[4][3] = 00010100

          

typedef struct {
        string  black;
        logic [7:0] white;
        logic [15:0] purple;
        bit [128:0] pink;
    } Anvitha;

  Anvitha anvi;

module struct_example;

    initial begin
        anvi.black = "favourite";
        anvi.white = 8'hB2;
        anvi.purple = 16'h0040;
        anvi.pink = 128'hDEADBEEFCAFE123456789ABCDEF01234;

        $display("%0p",anvi);
         $display("black :%s",anvi.black);
 $display("white :%0h",anvi.white);
 $display("pink :%0h",anvi.purple);
    $display("black :%0h",anvi.pink);

    end

endmodule

//OUTPUT:--------
# {favourite} 178 64 295990755076956508801090281481683604020
# black :favourite
# white :b2
# pink :40
# black :deadbeefcafe123456789abcdef01234

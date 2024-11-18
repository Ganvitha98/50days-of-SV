module string_data_type;
string A="ANVITHA";
string B="VLSI";
string C;
initial 
begin
$display("A=%0d",A.len());
$display("A=%0s",A);
A=A.tolower();
$display("Lowercase string:%0s",A);
$display("Uppercase string A:%0s",A.toupper());
$display("lowercase string B:%0s",B.tolower());
B="SYSTEM VERILOG";
$display("B=%0s",B);
A={A,"THIS IS MY NAME","GOOD"};
$display("Concatenated string:A=%0s",A);
C="BTECH";
$display("C=%0s",C);
end
endmodule

/*
OUTPUT:
# A=7
# A=ANVITHA
# Lowercase string:anvitha
# Uppercase string A:ANVITHA
# lowercase string B:vlsi
# B=SYSTEM VERILOG
# Concatenated string:A=anvithaTHIS IS MY NAMEGOOD
# C=BTECH
*/
   

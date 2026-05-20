module scope_randomization;
int val;

initial
begin
for ( int i = 0;i<5 ;i++)
if( randomize(val))
$display(" Randomization sucsessfull : val = %0d ",val);
else

$display("Randomization failed");
$finish;
end
endmodule
//output
#  Randomization sucsessfull : val = -834229725
#  Randomization sucsessfull : val = -1608815054
#  Randomization sucsessfull : val = 1555380746
#  Randomization sucsessfull : val = -1957781731
#  Randomization sucsessfull : val = -1476164168

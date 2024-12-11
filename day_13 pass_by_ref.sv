module pass_by_ref();
int a=10;

function automatic void pass_by_ref(ref int b);
 b=b*2;
 endfunction

function automatic void pass_by_ref_1(ref int c);
 c=c+2;
 endfunction

initial
begin
$display("before pass_by_ref:a=%0d",a);
pass_by_ref(a);
$display("after pass_by_ref:a=%0d",a);
pass_by_ref_1(a);
$display("after pass_by_ref_1:a=%0d",a);
end
endmodule

//OUTPUT:
# before pass_by_ref:a=10
# after pass_by_ref:a=20
# after pass_by_ref_1:a=22

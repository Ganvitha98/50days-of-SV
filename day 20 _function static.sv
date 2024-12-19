class function_static_example;
 static int id;
 int s_id;
function static int increment();
int temp;
temp=id++;
s_id++;
return temp;
endfunction
endclass

module example;
function_static_example ex[6];
int local_ex;
initial
begin
foreach(ex[i])
 begin
  ex[i]=new();
local_ex=ex[i].increment();
$display("Value of id = %0h, s_id = %0h, local_ex = %0h", ex[i].id, ex[i].s_id,  local_ex);
  end
end
endmodule

//Output
# Value of id = 1, s_id = 1, local_ex = 0
# Value of id = 2, s_id = 1, local_ex = 1
# Value of id = 3, s_id = 1, local_ex = 2
# Value of id = 4, s_id = 1, local_ex = 3
# Value of id = 5, s_id = 1, local_ex = 4
# Value of id = 6, s_id = 1, local_ex = 5

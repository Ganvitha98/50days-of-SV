class static_function_example;
static int id;
int s_id;
static function void increment();
 id++;
endfunction
function void sample();
id++;
s_id++;
endfunction
endclass

module example;
static_function_example ex[6],an;
initial
begin
foreach(ex[i])
 begin
  ex[i]=new();
  ex[i].increment();
$display("increment: Value of id = %0d, s_id = %0d", ex[i].id, ex[i].s_id);
    end

ex[0].s_id=1;
foreach(ex[i])
 begin
 ex[i].sample();
$display("sample: Value of id = %0d, s_id = %0d", ex[i].id, ex[i].s_id);
    end
  end
endmodule
//output
# increment: Value of id = 1, s_id = 0
# increment: Value of id = 2, s_id = 0
# increment: Value of id = 3, s_id = 0
# increment: Value of id = 4, s_id = 0
# increment: Value of id = 5, s_id = 0
# increment: Value of id = 6, s_id = 0
# sample: Value of id = 7, s_id = 2
# sample: Value of id = 8, s_id = 1
# sample: Value of id = 9, s_id = 1
# sample: Value of id = 10, s_id = 1
# sample: Value of id = 11, s_id = 1
# sample: Value of id = 12, s_id = 1

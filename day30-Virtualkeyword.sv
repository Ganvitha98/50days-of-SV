class base_class;
   bit [7:0] data;
   int s;

   virtual function void display(int data,int s);
     $display("Base: Value of data = %0d and s = %0d", data, s);
   endfunction
 endclass

 class sub_class extends base_class;
   bit [31:0] data;
   int s;
     function void display(int data,int s);
     $display("sub: Value of data = %0d and s = %0d", data, s);
   endfunction
 endclass
module class_example;
   initial begin
     base_class b_c;
     sub_class s_c;
     s_c = new();

     b_c = s_c;

     s_c.data = 10;
    s_c.s = 2;

     b_c.data = 5;
     b_c.s = 1;

     b_c.display(s_c.data,s_c.s);
   end
 endmodule
//output
# sub: Value of data = 10 and s = 2

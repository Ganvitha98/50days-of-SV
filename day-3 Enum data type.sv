module enum_Example;

typedef enum {red=4,white,green=8,yellow,black=10} anvi;

anvi colour;

initial
     begin

colour=green;

  $display("name=%0s\th=%0d ",colour.name,colour);

  $display("colour.num=%0d",colour.num);

  $display("colour.first=%0d name=%0s",colour.first,colour.first.name);

  $display("colour.last=%0d name=%0s",colour.last,colour.last.name);

  $display("colour.prev=%0d name=%0s",colour.prev,colour.prev.name);

  $display("colour.next=%0d name=%0s",colour.next,colour.next.name);

end

endmodule

//OUTPUT:-----------------
# name=green    h=8
# colour.num=5
# colour.first=4 name=red
# colour.last=10 name=black
# colour.prev=5 name=white
# colour.next=9 name=yellow

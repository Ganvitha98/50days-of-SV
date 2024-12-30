class A;
  int m = 10;
  string n= "cat";
endclass

class B;
  int i = 20;
  string j= "dog";
  A a = new;
endclass

module shallow;
  B b1, b2;
  initial begin
    b1 = new;
    b2 = new b1;

    $display("b1.i = %0d | b1.j = %0s | b1.a.m=%0d | b1.a.n=%0s",b1.i,b1.j,b1.a.m,b1.a.n);
    $display("b2.i = %0d | b2.j = %0s | b2.a.m=%0d | b2.a.n=%0s",b2.i,b2.j,b2.a.m,b2.a.n);
    $display("-----------------------------------------------------");

    b1.i = 30;
    b1.j="eagle";
    b1.a.m = 25;
    b1.a.n="cow";

    $display("b1.i = %0d | b1.j = %0s | b1.a.m=%0d | b1.a.n=%0s",b1.i,b1.j,b1.a.m,b1.a.n);
    $display("b2.i = %0d | b2.j = %0s | b2.a.m=%0d | b2.a.n=%0s",b2.i,b2.j,b2.a.m,b2.a.n);
    $display("-----------------------------------------------------");

    b2.i = 30;
    b2.j="goat";
    b2.a.m = 50;
    b2.a.n="hen";

    $display("b2.i = %0d | b2.j = %0s | b2.a.m=%0d | b2.a.n=%0s",b2.i,b2.j,b2.a.m,b2.a.n);
    $display("b1.i = %0d | b1.j = %0s | b1.a.m=%0d | b1.a.n=%0s",b1.i,b1.j,b1.a.m,b1.a.n);

end
endmodule

  OUTPUT:
# b1.i = 20 | b1.j = dog | b1.a.m=10 | b1.a.n=cat
# b2.i = 20 | b2.j = dog | b2.a.m=10 | b2.a.n=cat
# -----------------------------------------------------
# b1.i = 30 | b1.j = eagle | b1.a.m=25 | b1.a.n=cow
# b2.i = 20 | b2.j = dog | b2.a.m=25 | b2.a.n=cow
# -----------------------------------------------------
# b2.i = 30 | b2.j = goat | b2.a.m=50 | b2.a.n=hen
# b1.i = 30 | b1.j = eagle | b1.a.m=50 | b1.a.n=hen

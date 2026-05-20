class Parent;
    virtual function void animal();
        $display("Animal is silent");
    endfunction
endclass

class child_1 extends Parent;
    function void animal();
        $display("Dog says: Woof!");
    endfunction
endclass

class child_2 extends Parent;
    function void animal();
        $display("Cat says: Meow!");
    endfunction
endclass

module polymorphism_example;
    initial begin
        Parent p;

        child_1 c1 = new();
        child_2 c2 = new();

        p = c1;
        p.animal();

        p = c2;
        p.animal();
    end
endmodule

/*
class Animal;
    // Virtual method to allow overriding
    virtual function void speak();
        $display("Animal is silent");
    endfunction
endclass

class Dog extends Animal;
    // Override the virtual method
    function void speak();
        $display("Dog says: Woof!");
    endfunction
endclass

class Cat extends Animal;
    // Override the virtual method
    function void speak();
        $display("Cat says: Meow!");
    endfunction
endclass

module polymorphism_example;
    initial begin
        Animal a; // Base class handle

        // Create objects of derived classes
        Dog d = new();
        Cat c = new();

        // Demonstrate polymorphism
        a = d;    // Base handle points to Dog object
        a.speak(); // Calls Dog's speak method

        a = c;    // Base handle points to Cat object
        a.speak(); // Calls Cat's speak method
    end
endmodule
*/
//output
# Dog says: Woof!
# Cat says: Meow!

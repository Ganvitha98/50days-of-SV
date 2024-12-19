class anvitha;
    string name;
    int age;

    function new(string student_name, int student_age);
        name = student_name;
        age = student_age;
    endfunction

    function void display();
        $display("Students Name: %s, Age: %0d", name, age);
    endfunction
endclass

module testbench;
    anvitha anvi;

    initial begin
        anvi = new("G.ANVITHA", 21);

        anvi.display();
    end
endmodule

//OUTPUT:
# Students Name: G.ANVITHA, Age: 21

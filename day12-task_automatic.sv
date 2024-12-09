module automatic_task_parallel;

    task automatic compute_square(input int num, output int square);
        begin
            square = num * num;
        end
    endtask

    initial begin
        int square1, square2;

        fork
            compute_square(3, square1);
            compute_square(4, square2);
        join

        $display("Square of 3: %0d", square1);
        $display("Square of 4: %0d", square2);
    end

endmodule

//OUTPUT:
# Square of 3: 9
# Square of 4: 16

module dynamic_array_example;

    int my_array[];

    initial begin
        my_array = new[5];

        for (int i = 0; i < my_array.size(); i++) begin
            my_array[i] = i * 10;
        end

        $display("Initial Array:");
        foreach (my_array[i]) begin
            $display("my_array[%0d] = %0d", i, my_array[i]);
        end

         my_array = new[8];
        for (int i = 5; i < my_array.size(); i++) begin
            my_array[i] = i * 10;
        end

        $display("Resized Array:");
        foreach (my_array[i]) begin
            $display("my_array[%0d] = %0d", i, my_array[i]);
        end
    end
endmodule


//OUTPUT
# Initial Array:
# my_array[0] = 0
# my_array[1] = 10
# my_array[2] = 20
# my_array[3] = 30
# my_array[4] = 40
# Resized Array:
# my_array[0] = 0
# my_array[1] = 0
# my_array[2] = 0
# my_array[3] = 0
# my_array[4] = 0
# my_array[5] = 50
# my_array[6] = 60
# my_array[7] = 70

module wait_fork;

  initial begin
    $display("Simulation starts at time %0t", $time);

    fork
      begin
        #5;
        $display("Task 1 completed at time %0t", $time);
      end
      begin
        #10;
        $display("Task 2 completed at time %0t", $time);
      end
      begin
        #15;
        $display("Task 3 completed at time %0t", $time);
      end
    join_none

    #6;
    $display("Disabling fork at time %0t", $time);
    wait fork;

    #5;
    $display("Simulation ends at time %0t", $time);
  end

endmodule

      //Output
# Simulation starts at time 0
# Task 1 completed at time 5
# Disabling fork at time 6
# Task 2 completed at time 10
# Task 3 completed at time 15
# Simulation ends at time 20



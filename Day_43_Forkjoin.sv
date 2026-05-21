module fork_join;

  task  process_a();
   $display("process_a started @%0tns",$time);
   #5;
    $display("process_a finished  @%0tns",$time);
    endtask

 task  process_b();
   $display("process_b started  @%0tns",$time);
   #10;
   $display("process_b finished  @%0tns",$time);
 endtask

 initial begin
 fork
     process_a();
     process_b();
 join
 $display("out of fork_join block  @%0tns",$time);
 #10;
$display("Simulation ends @%0tns", $time);
end
 endmodule
//Output
# process_a started @0ns
# process_b started  @0ns
# process_a finished  @5ns
# process_b finished  @10ns
# out of fork_join block  @10ns
# Simulation ends @20ns

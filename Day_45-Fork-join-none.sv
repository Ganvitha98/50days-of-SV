module fork_join_none;

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
 join_none
 $display("out of fork_join block  @%0tns",$time);
 #10;
$display("Simulation ends @%0tns", $time);
end
 endmodule
//Output
# out of fork_join block  @0ns
# process_a started @0ns
# process_b started  @0ns
# process_a finished  @5ns
# Simulation ends @10ns
# process_b finished  @10ns

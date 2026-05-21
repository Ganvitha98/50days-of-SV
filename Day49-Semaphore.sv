module semaphore_example;
  semaphore sem;

  initial begin
    sem=new(4);
    fork
      display(2);
      display(3);
      display(2);
      display(1);
    join
  end

  task automatic display(int key);
    sem.get(key);
     $display("\tGot %0d keys at time",key,$time);
    #30;
    sem.put(key);
  endtask
endmodule
//Output
#       Got 2 keys at time                   0
#       Got 2 keys at time                   0
#       Got 3 keys at time                  30
#       Got 1 keys at time                  30

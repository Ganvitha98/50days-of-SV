module queue_example;

    int my_queue[$];
    int anvitha[$];
    initial begin
       int front,back;
        my_queue.push_back(10);
        my_queue.push_back(20);
        my_queue.push_back(30);
        $display("Queue after push_back: %p", my_queue);

        my_queue.push_front(5);
        $display("Queue after push_front: %p", my_queue);

        front = my_queue.pop_front();
        $display("Removed from front: %0d, Queue: %p", front, my_queue);

        back = my_queue.pop_back();
        $display("Removed from back: %0d, Queue: %p", back, my_queue);

        $display("Element at index 1: %0d", my_queue[1]);

        $display("Queue size: %0d", my_queue.size());

        my_queue.delete();
        $display("Queue after delete: %p", my_queue);

        anvitha={1,9,2,6,3,9};
        $display("Original queue: %p", anvitha);
        anvitha.sort();
        $display("Sorted queue: %p", anvitha);
 end

endmodule


//OUTPUT
# Queue after push_back: '{10, 20, 30}
# Queue after push_front: '{5, 10, 20, 30}
# Removed from front: 5, Queue: '{10, 20, 30}
# Removed from back: 30, Queue: '{10, 20}
# Element at index 1: 20
# Queue size: 2
# Queue after delete: '{}
# Original queue: '{1, 9, 2, 6, 3, 9}
# Sorted queue: '{1, 2, 3, 6, 9, 9}

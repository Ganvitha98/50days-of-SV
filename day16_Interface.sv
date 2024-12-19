interface ex_interface;
    logic [7:0] data;
    logic valid;
    logic ready;

    modport producer (output data, valid, input ready);
    modport consumer (input data, valid, output ready);
endinterface
//producer module
module producer(simple_interface.producer intf);
    always_ff @(posedge intf.ready) begin
        intf.data <= $random % 256;
        intf.valid <= 1'b1;
        $display("Producer: Sent Data = %h", intf.data);
    end
endmodule
//consumer module
module consumer(simple_interface.consumer intf);
    always_ff @(posedge intf.valid) begin
        if (intf.valid) begin
            $display("Consumer: Received Data = %h", intf.data);
            intf.ready <= 1'b1;
        end else begin
            intf.ready <= 1'b0;
        end
    end
endmodule

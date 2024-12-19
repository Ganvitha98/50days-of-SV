interface interface_with_modports_and_clocking (input logic clk);
    logic [7:0] data;
    logic valid;
    logic ready;

    // Clocking block for synchronization
    clocking cb @(posedge clk);
        input ready;
        input valid;
        output data;
    endclocking

    // Modports for producer and consumer
    modport producer (
        input cb.ready,
        output cb.data,
        output cb.valid
    );

    modport consumer (
        input cb.data,
        input cb.valid,
        output cb.ready
    );
endinterface

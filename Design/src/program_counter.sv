module program_counter (
    input logic clk,
    input logic rst,
    input logic [31:0] data_in,
    output logic [31:0] data_out
);
    
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            data_out <= 0;
        end
        else begin
            data_out <= data_in;
        end
    end

endmodule
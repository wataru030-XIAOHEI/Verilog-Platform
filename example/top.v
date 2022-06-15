module top (
    input clk ,
    input rst ,
    output led 
);  
    reg ledR ;

    assign led = ledR ;

    always @(posedge clk) begin
        if(rst)begin
            ledR <= 1'b0 ;
        end else begin
            ledR <= ~ledR ;
        end
    end

endmodule //top
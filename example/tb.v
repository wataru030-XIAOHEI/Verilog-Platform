`timescale 1ns/1ps
module tb();
    //verificated singals . 
    reg clk ;
    reg rst ;
    wire led ;

    //top module ,DUT  
    top u_top(
    	.clk (clk ),
        .rst (rst ),
        .led (led )
    );

    //initial block 
    initial begin
        clk <= 1'b0 ;
        rst <= 1'b1 ;
        #10 ;
        rst <= 1'b0 ;
        #200 ;
        $display("over!");
        $finish ;
    end
    // initial clk working .
    initial forever begin
        #2 clk = ~clk ;
    end

    //dump wave 
    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0,tb); 
    end
    // simulation display informations 
    always @(posedge clk ) begin
        if(!rst)begin
            if(led == 1'b1) $display("*") ;
            else $display("_"); 
        end
    end

endmodule 
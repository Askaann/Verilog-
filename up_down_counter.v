// 4 bit updown counter
// when control = 1, it increments the counter
module upcounter_downcounter(
    input clk,rst,control,
    
    output reg [3:-0] out);
    reg [3:0] counter;
    always @(posedge clk) begin
        if (rst)
            out <= 0;
        else begin 
            if(control) 
             counter = counter +1;
            else
             counter = counter-1;
        
        end
        out = counter;
    end
  endmodule  

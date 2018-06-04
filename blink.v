`timescale 1ns / 1ps

module blink(output reg [3:0] led,
             input clk);

   reg [26:0]      counter;

   always @(posedge clk) begin
      if (counter == 27'd50000000) begin
         led <= led + 1;
         counter <= 0;
      end
      else begin
         counter <= counter +1;
      end
   end

endmodule

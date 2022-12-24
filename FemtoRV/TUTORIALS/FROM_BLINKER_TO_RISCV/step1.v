/**
 * Step 1: Blinker
 * DONE
 */

`default_nettype none

module SOC (
    input  wire CLK,        // system clock 
    input  wire RESET,      // reset button
    output wire [4:0] LEDS, // system LEDs
    input  wire RXD,        // UART receive
    output wire TXD         // UART transmit
);


// A blinker that counts on 5 bits, wired to the 5 LEDs
   reg [4:0] count = 0;
   always @(posedge CLK) begin
      count <= count + 1;
   end
   assign LEDS = count;
   assign TXD  = 1'b0; // not used for now
endmodule

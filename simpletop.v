
module simpletop(
	   input  CLOCK_50,
	   input  [9:0] SW,
	   output [9:0] LEDR
	   );

   wire 		reset;
   
   assign reset = 1'h0;
   
   Foobar fb(.clock(CLOCK_50), .reset(reset),
	     .io_sw(SW[9:0]),  .io_led(LEDR[9:0]));
   
endmodule // simpletop

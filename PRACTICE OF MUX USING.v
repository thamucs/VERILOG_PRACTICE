module mux(
  input  a,b,s,
  output reg y);
  
 assign y=s ? a: b;
endmodule */
//using the logic gates
module mux(
  input a,b,s,
  output y);
  
  assign y=(a&~s)|(b&s);
endmodule*/

// XOR gate using and or not
module xoor(
  input a,b,
  output y);
  
  assign y=(a&~b)|(~a&b);
  
endmodule*/
// write the swap code without using the temp 
//METHOD 1
module notemp;
  reg a=1'b0;
  reg b=1'b1;
  initial begin
    $display(" value for the a=%0b and b=%0b",a,b);
    
    a<=b;
    b<=a;
    #1;$display("the value for the a=%0b and b=%0b",a,b);
  end
endmodule

//METHOD 2

module using_xor_gate;
  reg a=1'b0;
  reg b=1'b1;
  
  initial begin
    $display("before the xor operation a=%0b  b=%0b ",a,b);
  
    a=a^b;
    b=a^b;
    a=a^b;
    $display("after the xor operation a=%0b  b=%0b",a,b);
  end
endmodule

//assigning mux using the nested ternary operation
module mux(s1,s0,d,y);
  input s1,s0;
  input [3:0]d;
  output wire y;
  
  assign y=s1?(s0?d[3]:d[2]):(s0?d[1]:d[0]);
  
endmodule*/

//assign the 4bit 2:1mux
module mux(a,b,s,y);
  input  [4:0]a,b;
  input s;
  output wire [4:0]y;
  
  assign y=s?a:b;
endmodule 

//check whether the given 8bit are 0 or not 
module check;
  reg [7:0]a;
  reg all_r_zero;
  assign all_r_zero=~|a;
endmodule
//converttion of 2's complement
module hi
  reg cnvrt;
  reg data;
  assign cnvrt=~data +1'b1;
endmodule
//convertion of binary to grey 

module b2g;
  reg [3:0]b;
  reg [3:0]g;
  assign g=b ^(b>>1);
endmodule

//write the code in the reverse orders 
module rev;
  output reg [7:0]r;
  input reg [7:0]a;
  assign r={<<{a}};
endmodule 
    
    

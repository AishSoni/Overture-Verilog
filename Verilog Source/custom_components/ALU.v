module ALU (clk, rst, Instruction, Input_1, Input_2, Output);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] Instruction;
  input  wire [7:0] Input_1;
  input  wire [7:0] Input_2;
  output  wire [7:0] Output;

  TC_Splitter8 # (.UUID(64'd2623785175232089087 ^ UUID)) Splitter8_0 (.in(wire_6), .out0(wire_2), .out1(wire_0), .out2(wire_12), .out3(), .out4(), .out5(), .out6(), .out7());
  TC_Not # (.UUID(64'd3832985115850162589 ^ UUID), .BIT_WIDTH(64'd8)) Not8_1 (.in(wire_8), .out(wire_10));
  TC_Not # (.UUID(64'd426282239850213483 ^ UUID), .BIT_WIDTH(64'd8)) Not8_2 (.in(wire_13), .out(wire_3));
  TC_Or # (.UUID(64'd1048938979505979036 ^ UUID), .BIT_WIDTH(64'd8)) Or8_3 (.in0(wire_3), .in1(wire_10), .out(wire_4));
  TC_Or # (.UUID(64'd2841288889796900428 ^ UUID), .BIT_WIDTH(64'd8)) Or8_4 (.in0(wire_13), .in1(wire_8), .out(wire_1));
  TC_Not # (.UUID(64'd1483577171552159545 ^ UUID), .BIT_WIDTH(64'd8)) Not8_5 (.in(wire_4), .out(wire_16));
  TC_Not # (.UUID(64'd973840257264388660 ^ UUID), .BIT_WIDTH(64'd8)) Not8_6 (.in(wire_1), .out(wire_7));
  TC_Add # (.UUID(64'd3847168168596154193 ^ UUID), .BIT_WIDTH(64'd8)) Add8_7 (.in0(wire_13), .in1(wire_8), .ci(1'd0), .out(wire_17), .co());
  TC_Add # (.UUID(64'd4550384156107388471 ^ UUID), .BIT_WIDTH(64'd8)) Add8_8 (.in0(wire_13), .in1(wire_11), .ci(1'd0), .out(wire_18), .co());
  TC_Neg # (.UUID(64'd2930418650859721914 ^ UUID), .BIT_WIDTH(64'd8)) Neg8_9 (.in(wire_8), .out(wire_11));
  TC_Mux # (.UUID(64'd1250298865843711951 ^ UUID), .BIT_WIDTH(64'd8)) Mux8_10 (.sel(wire_2), .in0(wire_17), .in1(wire_18), .out(wire_5));
  TC_Mux # (.UUID(64'd2531568769373124121 ^ UUID), .BIT_WIDTH(64'd8)) Mux8_11 (.sel(wire_0), .in0(wire_4), .in1(wire_16), .out(wire_14));
  TC_Mux # (.UUID(64'd742459875911657551 ^ UUID), .BIT_WIDTH(64'd8)) Mux8_12 (.sel(wire_2), .in0(wire_1), .in1(wire_7), .out(wire_19));
  TC_Mux # (.UUID(64'd4108114939944283984 ^ UUID), .BIT_WIDTH(64'd8)) Mux8_13 (.sel(wire_2), .in0(wire_19), .in1(wire_14), .out(wire_9));
  TC_Mux # (.UUID(64'd537105859020090369 ^ UUID), .BIT_WIDTH(64'd8)) Mux8_14 (.sel(wire_12), .in0(wire_9), .in1(wire_5), .out(wire_15));

  wire [0:0] wire_0;
  wire [7:0] wire_1;
  wire [0:0] wire_2;
  wire [7:0] wire_3;
  wire [7:0] wire_4;
  wire [7:0] wire_5;
  wire [7:0] wire_6;
  assign wire_6 = Instruction;
  wire [7:0] wire_7;
  wire [7:0] wire_8;
  assign wire_8 = Input_2;
  wire [7:0] wire_9;
  wire [7:0] wire_10;
  wire [7:0] wire_11;
  wire [0:0] wire_12;
  wire [7:0] wire_13;
  assign wire_13 = Input_1;
  wire [7:0] wire_14;
  wire [7:0] wire_15;
  assign Output = wire_15;
  wire [7:0] wire_16;
  wire [7:0] wire_17;
  wire [7:0] wire_18;
  wire [7:0] wire_19;

endmodule

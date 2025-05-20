module COND (clk, rst, Condition, Input, Result);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [7:0] Condition;
  input  wire [7:0] Input;
  output  wire [0:0] Result;

  TC_Splitter8 # (.UUID(64'd2589263201108577976 ^ UUID)) Splitter8_0 (.in(wire_1), .out0(wire_9), .out1(wire_23), .out2(wire_0), .out3(), .out4(), .out5(), .out6(), .out7());
  TC_Splitter8 # (.UUID(64'd3884529619769114424 ^ UUID)) Splitter8_1 (.in(wire_12), .out0(wire_16), .out1(wire_8), .out2(wire_22), .out3(wire_15), .out4(wire_18), .out5(wire_6), .out6(wire_17), .out7(wire_3));
  TC_Nor # (.UUID(64'd978670780945566010 ^ UUID), .BIT_WIDTH(64'd1)) Nor_2 (.in0(wire_16), .in1(wire_8), .out(wire_5));
  TC_Nor # (.UUID(64'd595143066064087025 ^ UUID), .BIT_WIDTH(64'd1)) Nor_3 (.in0(wire_22), .in1(wire_15), .out(wire_19));
  TC_Nor # (.UUID(64'd3049024372327840860 ^ UUID), .BIT_WIDTH(64'd1)) Nor_4 (.in0(wire_18), .in1(wire_6), .out(wire_11));
  TC_Nor # (.UUID(64'd316517449221532792 ^ UUID), .BIT_WIDTH(64'd1)) Nor_5 (.in0(wire_17), .in1(wire_3), .out(wire_4));
  TC_And # (.UUID(64'd1399604985801040914 ^ UUID), .BIT_WIDTH(64'd1)) And_6 (.in0(wire_5), .in1(wire_19), .out(wire_20));
  TC_And # (.UUID(64'd477076890329515878 ^ UUID), .BIT_WIDTH(64'd1)) And_7 (.in0(wire_11), .in1(wire_4), .out(wire_21));
  TC_And # (.UUID(64'd1850986866259642361 ^ UUID), .BIT_WIDTH(64'd1)) And_8 (.in0(wire_20), .in1(wire_21), .out(wire_2));
  TC_And # (.UUID(64'd4457178139743342879 ^ UUID), .BIT_WIDTH(64'd1)) And_9 (.in0(wire_23), .in1(wire_3), .out(wire_7));
  TC_Xor # (.UUID(64'd2482377096715470886 ^ UUID), .BIT_WIDTH(64'd1)) Xor_10 (.in0(wire_0), .in1(wire_14), .out(wire_10));
  TC_And # (.UUID(64'd1137730015499156764 ^ UUID), .BIT_WIDTH(64'd1)) And_11 (.in0(wire_2), .in1(wire_9), .out(wire_13));
  TC_Or # (.UUID(64'd2170969851021577264 ^ UUID), .BIT_WIDTH(64'd1)) Or_12 (.in0(wire_13), .in1(wire_7), .out(wire_14));

  wire [0:0] wire_0;
  wire [7:0] wire_1;
  assign wire_1 = Condition;
  wire [0:0] wire_2;
  wire [0:0] wire_3;
  wire [0:0] wire_4;
  wire [0:0] wire_5;
  wire [0:0] wire_6;
  wire [0:0] wire_7;
  wire [0:0] wire_8;
  wire [0:0] wire_9;
  wire [0:0] wire_10;
  assign Result = wire_10;
  wire [0:0] wire_11;
  wire [7:0] wire_12;
  assign wire_12 = Input;
  wire [0:0] wire_13;
  wire [0:0] wire_14;
  wire [0:0] wire_15;
  wire [0:0] wire_16;
  wire [0:0] wire_17;
  wire [0:0] wire_18;
  wire [0:0] wire_19;
  wire [0:0] wire_20;
  wire [0:0] wire_21;
  wire [0:0] wire_22;
  wire [0:0] wire_23;

endmodule

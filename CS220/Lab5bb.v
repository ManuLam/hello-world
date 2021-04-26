//: version "2.0-b10"
//: property encoding = "iso8859-1"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "Lab5b.v"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
output Q;    //: /sn:0 {0}(356,200)(360,200)(360,202)(364,202){1}
//: {2}(368,202)(382,202){3}
//: {4}(386,202)(455,202){5}
//: {6}(384,204)(384,280)(163,280)(163,256)(176,256){7}
//: {8}(366,204)(366,236)(327,236)(327,261)(332,261){9}
input K;    //: /sn:0 {0}(119,246)(176,246){1}
input RESET;    //: /sn:0 {0}(227,346)(227,292){1}
//: {2}(229,290)(260,290)(260,266)(332,266){3}
//: {4}(227,288)(227,261)(244,261){5}
input J;    //: /sn:0 {0}(118,187)(177,187){1}
output Qinv;    //: /sn:0 {0}(177,197)(161,197)(161,150)(393,150)(393,259){1}
//: {2}(395,261)(458,261){3}
//: {4}(391,261)(370,261){5}
//: {6}(368,259)(368,225)(327,225)(327,202)(335,202){7}
//: {8}(366,261)(353,261){9}
input CLK;    //: /sn:0 {0}(119,282)(146,282){1}
//: {2}(150,282)(158,282)(158,294)(166,294)(166,311)(179,311){3}
//: {4}(148,280)(148,192)(177,192){5}
//: {6}(148,284)(148,298)(156,298)(156,306)(179,306){7}
wire w6;    //: /sn:0 {0}(265,256)(289,256){1}
//: {2}(293,256)(299,256)(299,304)(312,304){3}
//: {4}(291,254)(291,205)(211,205)(211,196)(227,196){5}
wire w4;    //: /sn:0 {0}(154,251)(176,251){1}
wire w0;    //: /sn:0 {0}(244,256)(224,256)(224,233)(278,233)(278,197){1}
//: {2}(280,195)(288,195)(288,120)(298,120){3}
//: {4}(276,195)(250,195)(250,194)(248,194){5}
wire w8;    //: /sn:0 {0}(200,309)(282,309){1}
//: {2}(286,309)(312,309){3}
//: {4}(284,307)(284,125)(298,125){5}
wire w11;    //: /sn:0 {0}(335,197)(324,197)(324,123)(319,123){1}
wire w2;    //: /sn:0 {0}(198,192)(202,192)(202,191)(227,191){1}
wire w10;    //: /sn:0 {0}(333,307)(348,307)(348,294)(322,294)(322,256)(332,256){1}
wire w5;    //: /sn:0 {0}(197,251)(244,251){1}
//: enddecls

  _GGNAND3 #(6) g8 (.I0(w5), .I1(w0), .I2(RESET), .Z(w6));   //: @(255,256) /sn:0 /w:[ 1 0 5 0 ]
  _GGNAND3 #(6) g4 (.I0(K), .I1(w4), .I2(Q), .Z(w5));   //: @(187,251) /sn:0 /w:[ 1 1 7 0 ]
  _GGNAND2 #(4) g13 (.I0(w0), .I1(w8), .Z(w11));   //: @(309,123) /sn:0 /w:[ 3 5 1 ]
  _GGNAND3 #(6) g3 (.I0(J), .I1(CLK), .I2(Qinv), .Z(w2));   //: @(188,192) /sn:0 /w:[ 1 5 0 0 ]
  //: IN g2 (CLK) @(117,282) /sn:0 /w:[ 0 ]
  //: IN g1 (K) @(117,246) /sn:0 /w:[ 0 ]
  //: joint g16 (Q) @(384, 202) /w:[ 4 -1 3 6 ]
  //: joint g11 (CLK) @(148, 282) /w:[ 2 4 1 6 ]
  _GGNAND3 #(6) g10 (.I0(w10), .I1(Q), .I2(RESET), .Z(Qinv));   //: @(343,261) /sn:0 /w:[ 1 9 3 9 ]
  _GGNAND2 #(4) g19 (.I0(w6), .I1(w8), .Z(w10));   //: @(323,307) /sn:0 /w:[ 3 3 0 ]
  //: IN g6 (RESET) @(227,348) /sn:0 /R:1 /w:[ 0 ]
  _GGNAND2 #(4) g9 (.I0(w11), .I1(Qinv), .Z(Q));   //: @(346,200) /sn:0 /w:[ 0 7 0 ]
  _GGNAND2 #(4) g7 (.I0(w2), .I1(w6), .Z(w0));   //: @(238,194) /sn:0 /w:[ 1 5 5 ]
  //: joint g20 (w8) @(284, 309) /w:[ 2 4 1 -1 ]
  //: joint g15 (Q) @(366, 202) /w:[ 2 -1 1 8 ]
  //: joint g17 (Qinv) @(393, 261) /w:[ 2 1 4 -1 ]
  //: joint g14 (Qinv) @(368, 261) /w:[ 5 6 8 -1 ]
  _GGNAND2 #(4) g5 (.I0(CLK), .I1(CLK), .Z(w8));   //: @(190,309) /sn:0 /w:[ 7 3 0 ]
  //: joint g21 (RESET) @(227, 290) /w:[ 2 4 -1 1 ]
  //: OUT g23 (Qinv) @(455,261) /sn:0 /w:[ 3 ]
  //: OUT g22 (Q) @(452,202) /sn:0 /w:[ 5 ]
  //: IN g0 (J) @(116,187) /sn:0 /w:[ 0 ]
  //: joint g12 (w6) @(291, 256) /w:[ 2 4 1 -1 ]
  //: joint g18 (w0) @(278, 195) /w:[ 2 -1 4 1 ]

endmodule
//: /netlistEnd

//: /netlistBegin JKFlipFlop
module JKFlipFlop();
//: interface  /sz:(183, 138) /bd:[ Li0>K(88/138) Li1>CLK(58/138) Li2>J(28/138) Bi0>RESET(94/183) Ro0<Qinv(93/138) Ro1<Q(40/138) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls


endmodule
//: /netlistEnd

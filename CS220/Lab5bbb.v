//: version "2.0-b10"
//: property encoding = "iso8859-1"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "Lab5a.v"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg w6;    //: /sn:0 {0}(253,251)(240,251)(240,269){1}
//: {2}(242,271)(431,271)(431,254)(448,254){3}
//: {4}(240,273)(240,337){5}
//: {6}(242,339)(484,339)(484,571)(273,571)(273,546){7}
//: {8}(240,341)(240,367){9}
reg K;    //: /sn:0 {0}(114,305)(120,305){1}
//: {2}(124,305)(149,305){3}
//: {4}(153,305)(167,305){5}
//: {6}(171,305)(185,305){7}
//: {8}(169,307)(169,310)(185,310){9}
//: {10}(151,303)(151,256)(151,256)(151,248){11}
//: {12}(153,246)(187,246){13}
//: {14}(151,244)(151,180)(187,180){15}
//: {16}(151,307)(151,322)(151,322)(151,376){17}
//: {18}(122,307)(122,482)(206,482){19}
reg J;    //: /sn:0 {0}(113,175)(133,175){1}
//: {2}(137,175)(187,175){3}
//: {4}(135,177)(135,449)(206,449){5}
reg CLK;    //: /sn:0 {0}(113,241)(126,241){1}
//: {2}(130,241)(187,241){3}
//: {4}(128,243)(128,512)(206,512){5}
wire w16;    //: /sn:0 {0}(255,180)(230,180)(230,180)(208,180){1}
wire w14;    //: /sn:0 {0}(343,505)(389,505)(389,496){1}
wire w15;    //: /sn:0 {0}(343,462)(384,462)(384,452){1}
wire w3;    //: /sn:0 {0}(469,249)(476,249){1}
//: {2}(480,249)(508,249){3}
//: {4}(512,249)(529,249){5}
//: {6}(510,247)(510,207)(441,207)(441,191)(449,191){7}
//: {8}(478,247)(478,164)(166,164)(166,185)(187,185){9}
wire w21;    //: /sn:0 {0}(394,186)(449,186){1}
wire w20;    //: /sn:0 {0}(392,249)(448,249){1}
wire w8;    //: /sn:0 {0}(470,189)(486,189){1}
//: {2}(490,189)(497,189){3}
//: {4}(501,189)(528,189){5}
//: {6}(499,187)(499,170){7}
//: {8}(499,191)(499,237)(441,237)(441,244)(448,244){9}
//: {10}(488,191)(488,279)(175,279)(175,251)(187,251){11}
wire w11;    //: /sn:0 {0}(274,246)(297,246){1}
//: {2}(301,246)(371,246){3}
//: {4}(299,244)(299,229)(241,229)(241,185)(255,185){5}
wire w10;    //: /sn:0 {0}(208,246)(253,246){1}
wire w13;    //: /sn:0 {0}(206,308)(303,308){1}
//: {2}(307,308)(349,308)(349,253){3}
//: {4}(351,251)(371,251){5}
//: {6}(349,249)(349,188)(373,188){7}
//: {8}(305,310)(305,317){9}
wire w5;    //: /sn:0 {0}(253,241)(226,241)(226,217)(323,217)(323,185){1}
//: {2}(325,183)(373,183){3}
//: {4}(323,181)(323,128){5}
//: {6}(321,183)(276,183){7}
//: enddecls

  _GGNAND3 #(6) g8 (.I0(J), .I1(K), .I2(w3), .Z(w16));   //: @(198,180) /sn:0 /w:[ 3 15 9 1 ]
  //: LED g4 (w13) @(305,324) /sn:0 /R:2 /w:[ 9 ] /type:0
  //: comment g3 @(123,156) /sn:0
  //: /line:"J"
  //: /end
  //: joint g13 (K) @(151, 246) /w:[ 12 14 -1 11 ]
  //: joint g34 (J) @(135, 175) /w:[ 2 -1 1 4 ]
  //: LED g37 (w14) @(389,489) /sn:0 /w:[ 1 ] /type:0
  //: SWITCH g2 (K) @(97,305) /sn:0 /w:[ 0 ] /st:1 /dn:1
  //: SWITCH g1 (CLK) @(96,241) /sn:0 /w:[ 0 ] /st:1 /dn:1
  //: comment g11 @(112,321) /sn:0
  //: /line:"CLOCK"
  //: /end
  //: joint g16 (K) @(169, 305) /w:[ 6 -1 5 8 ]
  //: comment g10 @(122,224) /sn:0
  //: /line:"K"
  //: /end
  //: joint g28 (w3) @(510, 249) /w:[ 4 6 3 -1 ]
  _GGNAND2 #(4) g19 (.I0(w5), .I1(w13), .Z(w21));   //: @(384,186) /sn:0 /w:[ 3 7 0 ]
  //: joint g27 (w3) @(478, 249) /w:[ 2 8 1 -1 ]
  //: comment g32 @(263,387) /sn:0
  //: /line:"RESET"
  //: /end
  //: LED g6 (K) @(151,383) /sn:0 /R:2 /w:[ 17 ] /type:0
  //: LED g38 (w15) @(384,445) /sn:0 /w:[ 1 ] /type:0
  _GGNAND2 #(4) g7 (.I0(K), .I1(K), .Z(w13));   //: @(196,308) /sn:0 /w:[ 7 9 0 ]
  _GGNAND3 #(6) g9 (.I0(CLK), .I1(K), .I2(w8), .Z(w10));   //: @(198,246) /sn:0 /w:[ 3 13 11 0 ]
  //: SWITCH g15 (w6) @(240,381) /sn:0 /R:1 /w:[ 9 ] /st:1 /dn:1
  _GGNAND2 #(4) g20 (.I0(w11), .I1(w13), .Z(w20));   //: @(382,249) /sn:0 /w:[ 3 5 0 ]
  //: joint g31 (w11) @(299, 246) /w:[ 2 4 1 -1 ]
  //: joint g39 (w6) @(240, 339) /w:[ 6 5 -1 8 ]
  _GGNAND3 #(6) g17 (.I0(w5), .I1(w10), .I2(w6), .Z(w11));   //: @(264,246) /sn:0 /w:[ 0 1 0 0 ]
  //: joint g25 (w13) @(305, 308) /w:[ 2 -1 1 8 ]
  //: joint g29 (w8) @(488, 189) /w:[ 2 -1 1 10 ]
  //: LED g5 (w5) @(323,121) /sn:0 /w:[ 5 ] /type:0
  //: LED g14 (w8) @(499,163) /sn:0 /w:[ 7 ] /type:0
  _GGNAND2 #(4) g21 (.I0(w21), .I1(w3), .Z(w8));   //: @(460,189) /sn:0 /w:[ 1 7 0 ]
  //: joint g24 (w8) @(499, 189) /w:[ 4 6 3 8 ]
  //: joint g36 (CLK) @(128, 241) /w:[ 2 -1 1 4 ]
  //: joint g23 (w5) @(323, 183) /w:[ 2 4 6 1 ]
  //: SWITCH g0 (J) @(96,175) /sn:0 /w:[ 0 ] /st:0 /dn:1
  _GGNAND3 #(6) g22 (.I0(w8), .I1(w20), .I2(w6), .Z(w3));   //: @(459,249) /sn:0 /w:[ 9 1 3 0 ]
  //: joint g26 (w13) @(349, 251) /w:[ 4 6 -1 3 ]
  //: joint g35 (K) @(122, 305) /w:[ 2 -1 1 18 ]
  //: joint g12 (K) @(151, 305) /w:[ 4 10 3 16 ]
  _GGNAND2 #(4) g18 (.I0(w16), .I1(w11), .Z(w5));   //: @(266,183) /sn:0 /w:[ 0 5 7 ]
  //: joint g30 (w6) @(240, 271) /w:[ 2 1 -1 4 ]
  JKFlipFlop g33 (.J(J), .CLK(K), .K(CLK), .RESET(w6), .Q(w15), .Qinv(w14));   //: @(207, 433) /sz:(135, 112) /sn:0 /p:[ Li0>5 Li1>19 Li2>5 Bi0>7 Ro0<0 Ro1<0 ]

endmodule
//: /netlistEnd

//: /netlistBegin JKFlipFlop
module JKFlipFlop();
//: interface  /sz:(135, 112) /bd:[ Li0>K(79/112) Li1>CLK(49/112) Li2>J(16/112) Bi0>RESET(66/135) Ro0<Qinv(72/112) Ro1<Q(29/112) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls


endmodule
//: /netlistEnd

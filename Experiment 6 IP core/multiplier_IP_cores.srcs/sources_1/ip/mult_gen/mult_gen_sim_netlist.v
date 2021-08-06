// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Jul 13 14:29:02 2021
// Host        : DESKTOP-J9HKQ5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/student/Desktop/RAEDASHRAF/multiplier_IP_cores/multiplier_IP_cores.srcs/sources_1/ip/mult_gen/mult_gen_sim_netlist.v
// Design      : mult_gen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module mult_gen
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [3:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [7:0]P;

  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire [7:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "7" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "4" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "4" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "7" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [3:0]A;
  input [3:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [7:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire [7:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "7" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZqI7Lq/aGyAcoaejBEIk07VX9jYIkvdeTPQu9dSbDEADopcPNa+0k8THWemULZmXocovtHBV2sQ+
UG9Mr3L0hg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
R4vPs+jPUBq40hDi8U6b9avbUk2Eb50U4A+mDDli/Y0olyqpMjS2bHK8VDjTVAFuQ+H3qih0cQYm
+ik1m47VLNMfNDfRLbftE2okRK8Kx81MRcEafr+7z29VxyL2KSwmOKbcDCEkIT1VX5y+96x7q9/g
O5zX1cVuj6hrFncQjBI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RHGRLed4zRtfx3HaMZFysMR3Ua1JohlSUQn/uIq0QNaCK2P96ztDgqQoqe6ZQ11betfsHTRFzq/1
66ClFz6QxXME/fh2KrrXSgUZxYxwfstEZlyOThrSfu+qzCsdk0R654q7wyvVT8+Lni3RuXc5nFXx
raCVZl6qLm50r3EadUq562wDBW7iVkrMp3OgccKyJyw39sT1Jc+0IkzHuHqjKA44tfGTOOSTHNUj
YgsyeZCJS72pabS90ZfprHyjsELB7Bxw/M9/XLEV7l1LP+SCDJFvOP5dNLZDBmwYIJ5OoU7247Tk
wYu3m6ZFZNnTwWGI9SAZJyiXILRa8hVZPL9TSA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OU7rNiePgxinwm/ruLBNeniAmTTLdwPhOZ1i35IGtDWXtaPoMnsPLRF6vnJo1xeYUES1MIlBqaG4
FUeyfrnBl3ofk5rfTbxL16dBcEtA8Z/duJARcLCIBD/J+xf2VlSqIo8dG9Ww8/L9pBTHpNAObSOU
o17xArTTrLfHWXZRGfRwuRpGlTLTYOMvS1AGhQcPbXjHrlijOoz3XigDVsnyGbHfkSgOlGBCnyDS
TPebi8IC8YIl88ieW+lqTL6jl+3DZ55iTfCJKbFt/HrE1Uou1l+60xI/9h9XhrNzE5ANic5eFmyC
tdncsHEBtx+UfZhyFrHV8z72yZoLCX2rOJ+IJA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GUoHfgebfwQKNkw122kR1rRfB4ZFf7/0xjFIvV3auOQ9RcZO2jgecvvtUAn3nocoMNPW1jFFZW0u
xgkVDSrwVJrMR/obpu7gqo1n1FD2E5BpOJV2Gwso9aZGhgTdfd0mINfCxPi4lxUYuTw1vd+iNkBH
peC7j2xzDHSu6o2S58c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lW3oa+bS7VSdBch0q4Lk4kIel2MxeXNlqo+JkBKYCThE5vtBv3Mob32tRj6s2h8BAos9XGsKRu0r
zWpu3cgAnv8lYIL4/UPBP9T+caGqWHHoGULrLn4zuybUvPzfGPj+ANXGfPXBomTO48UgPFWBnBA2
3vlOjCiOyKLMQAUrg8RqpfdYfcnwHxk8ebrE+lZJf6NCQtrqGu/EnH7PYFH/8MSQa6yey02fLQ2J
HenzdGNam7fu3z20gETHgePuewowRrJu5bEZOzlor2RrSnb0hcSbcO4/KSA9EcbmjzBMjE5uRYAM
1y+0t4rNGr+0XAjpp8m6B8lGF+m1jIGYMJ55eQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AYjoOGO5c2rCxRUY5RbgjfKwpMKJQrCDGPu9wzqv2ZhoT9Trod7xJlCnzNNU4kNJPTgmDf05Bkoo
EvR1hgWeTmTgCGdy7Qci0Z0L3pdxnOg9i69qsJO1qAW46sOYPeZHpvATo3irsreTIyOEcblYRdLh
Raj2T02eEhljrx1UdWXHwIq6kJGwbPaiMRXRJewJ75w53lF3nNUwTYgttUbm/hKuK4MTBvyDWlHF
UReBw5kEbERTaRF91+HNJUeoBgfLIgVhtPzX3Yzqy4fl1PxZ0BzAGNRQWfLI4TBSyl64znmxdzaS
+wcpSJ3OHZL4sBSIwGqpZ8UuNr53DWWwkd5lqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F93W5rP9wRsskpVAtvm9VhlFJY5TOuivcFKT2bVYmeqxn925TMU0N0nDRJZmC+O7NbtC0kbL9Hfv
iPaQAjkvtWKCEafU216A83pjNwYVINq3GbStXAtCrvf3KbYJMQPnr6FzKWLa0RlmEqf2z1LRIJMY
cR3LKzziLGgP+oQLz6W3siXeoyqxsbDm+dasSbu2YxzGAvkTos4kX2slGrQzxYSQogS6j/MzVgIk
Vhsm3BYDbtVT5TsiHGfRfi137tS2Q9o11KN44GT+JYigwORe+GyKi5xjI6kGPl1N1DK12TlRGsgC
Wq2YWMn2ABYXE2F8mkwPOJqSaaAR0S5MMCjkaQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EO2KlFB8vWgjeXvua8SEZL2APl0WfdPtqoF/0VTjBDZhkKh8T7GBS9tSSrCin7kHRBUGF6hOUPK2
V0JQtp4yW7c3oVbMN2ePIV7UdtkAszA2lMqOqeKJbWn0TfxRWL5adG+jGlhhYEbaT6tkCGPbbtbk
y5Kew5kT3RyGP8Rb0tim3cGvqi2BdBxqdc5Sb+Vyj0havZUyZo1AsjuLnNukDIYIrPCtqOY22MTp
VlNOr/u23OIMx+xx7Z4aOvZacPCxfg662ljyHetf5a0wu31WI6zf/69lkXq1iWJtHgEJn2iDpIWs
bSWDEtGgKAFHGKVAoc0vIGP3aPG6DIsqRyQ90Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Wq0JGDEAxb8IhDphjpP9OD0BAcYnmw9OA4v+AHeG8Jgc77Ay2TqgjvjwtyspW7GE+PT18TimStYb
a7Lgch4Z/TjDC8jnv6uCL0zMdYhBVfR4SmAGIxkTXAROr2gH5B8HtIhNhCPim7Nq4Gy3xjvGFH9S
DDwth4Rh+rG815amM2YfsL7Y1kGcUlM0HgF8IZoK9fJWFhQ498+bvUalKXyoLEhv2oL06Tb8MzJq
01tOrdppUF/F6TX0h0ID7s3UBB9j+tz1+PCJIFe2Y1qZdZzaFG0kFIt8SDLRTdzYKme4tY3Fb37r
uHyWGaLtAj0mRt1JHMYxqqPkgCMPmVghALZI9Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OT9MZdjFhcKVvcY6ENyqL8vmjf/PeWW4/S09eRcMIJzfmtPWl6ojvBt68I9B5dpV7tu93VZ2P2Xe
g8md1Ba9Z7xvh2jslPVCw2DpPD2/eCe/7xaeg+DCsPgV8TNoZTbI1lDcTUZQpURwU5+0mU1qgaBn
uFHVe4Gjq6/9TfnI3j1bXui/mVJ8KsC7IjVh3Ubg4vhxO5hMwDm/kxv6aAXeqqEDPa4yier8d0gB
nt3NteFWf0n7OhcqQqpZdSnafDtVlW9swXouYQnXkjkWVTgKeguP1Tmq24O6lv2th4Ec8Go2vgKK
9EC9sg2ny8PHmFni1hcRUV4pDG2NEuAZZF1+IA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17168)
`pragma protect data_block
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
XY4CaAqRktKjQlE=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

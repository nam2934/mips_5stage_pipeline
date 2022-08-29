// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Aug 27 17:45:24 2022
// Host        : namjin-D711 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [31:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29312)
`pragma protect data_block
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
+s8Iw7aGL5S6LBq/UfQ=
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

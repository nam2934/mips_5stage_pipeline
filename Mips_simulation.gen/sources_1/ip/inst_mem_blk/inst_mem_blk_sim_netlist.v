// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Aug 27 17:45:24 2022
// Host        : namjin-D711 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top inst_mem_blk -prefix
//               inst_mem_blk_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module inst_mem_blk
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
  inst_mem_blk_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28992)
`pragma protect data_block
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
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Aug 27 17:45:25 2022
// Host        : namjin-D711 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/namjin/Mips_simulation/Mips_simulation.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29296)
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

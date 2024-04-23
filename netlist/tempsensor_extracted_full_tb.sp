.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

* NGSPICE file created from tempsensor_rcx.ext - technology: sky130A

.subckt tempsensor_rcx vbe1_out ena vbg vbe2_out vdd vss
X0 a_1429_n4304# a_1429_n4304# vdd vdd sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
X1 a_495_638# a_495_638# vdd vdd sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
X2 a_764_n1158# ena vss vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
X3 a_1660_n393# ena vdd vdd sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X4 a_495_638# XQ_BR1.Emitter a_1537_2302# vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
X5 vdd a_1660_n393# XQ_BR1.Emitter vdd sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X6 a_2471_n2640# vbe1_out vbe1_out vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
X7 vss vss XQ_BR1.Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
**devattr s=462400,2720
D0 vss vbe2_out sky130_fd_pr__diode_pw2nd_05v5 pj=1.8e+06 area=2.025e+11
X8 a_1537_2302# vbe2_out vbe2_out vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
X9 vdd a_1660_n393# x2.input vdd sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X10 vdd a_1660_n393# XQ_BR1.Emitter vdd sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X11 a_1429_n4304# x2.input a_2471_n2640# vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
X12 vdd a_1660_n393# XQ_BR1.Emitter vdd sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
D1 vss vbg sky130_fd_pr__diode_pw2nd_05v5 pj=1.8e+06 area=2.025e+11
D2 vss vbe1_out sky130_fd_pr__diode_pw2nd_05v5 pj=1.8e+06 area=2.025e+11
X13 vss ena a_1537_2302# vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
X14 vdd a_1660_n393# XQ_BR1.Emitter vdd sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X15 vdd a_495_638# vbe2_out vdd sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
X16 vdd a_506_n1158# a_506_n1158# vdd sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X17 vdd a_1660_n393# XQ_BR1.Emitter vdd sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X18 a_1660_n393# a_1660_n393# a_764_n1158# vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
D3 vss ena sky130_fd_pr__diode_pw2nd_05v5 pj=1.8e+06 area=2.025e+11
X19 a_1660_n393# a_506_n1158# vdd vdd sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X20 a_764_n1158# vbg a_506_n1158# vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X21 vss vss x2.input sky130_fd_pr__pnp_05v5_W3p40L3p40
**devattr s=462400,2720
X22 vss ena a_2471_n2640# vss sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
X23 vdd a_1429_n4304# vbe1_out vdd sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
C0 ena XQ_BR1.Emitter 1.32f
C1 XQ_BR1.Emitter a_495_638# 0.961f
C2 vbg a_764_n1158# 0.112f
C3 vbg a_506_n1158# 0.202f
C4 a_764_n1158# a_1660_n393# 0.299f
C5 vbe2_out a_1537_2302# 0.387f
C6 a_1660_n393# a_506_n1158# 0.298f
C7 vbe1_out a_2471_n2640# 0.387f
C8 a_764_n1158# vdd 1.7f
C9 a_2471_n2640# x2.input 0.156f
C10 x2.input a_1660_n393# 0.861f
C11 vdd a_506_n1158# 4.87f
C12 a_2471_n2640# vdd 0.856f
C13 a_1660_n393# vdd 7.57f
C14 vbe2_out vdd 0.322f
C15 vbe1_out vdd 1.79f
C16 vbe1_out a_1429_n4304# 0.412f
C17 vbg ena 0.207f
C18 x2.input vdd 1.1f
C19 x2.input a_1429_n4304# 1.04f
C20 a_764_n1158# ena 1.19f
C21 ena a_1537_2302# 0.397f
C22 a_1429_n4304# vdd 10.2f
C23 ena a_506_n1158# 0.106f
C24 a_2471_n2640# ena 0.479f
C25 a_1660_n393# ena 1.2f
C26 vbe1_out ena 0.256f
C27 vbe2_out a_495_638# 0.412f
C28 a_1660_n393# XQ_BR1.Emitter 1.75f
C29 x2.input ena 0.95f
C30 vdd w_n584_n5030# 1.6f
C31 ena vdd 3.7f
C32 vdd a_495_638# 8.86f
C33 vdd XQ_BR1.Emitter 3.12f
C34 ena w_n584_n5030# 0.419f
.ends

*testbanch circuit
V1 vdd GND 1.8
V2 vbg GND 1.2
x1 vbe1 vdd vbg vbe2 vdd GND tempsensor_rcx

*simulation def 
.func mu(vbe1,vbe2) = 10.7906/(10.7906+vbe1/(vbe2-vbe1))
.func T(mu) = 714.015*mu-259.802
.control
option TEMP=25
op
let ttrim = T(mu(V(vbe1),V(vbe2)))-25
*** DEBUG - search for linear mode trasistor
*set altshow
*show > /tmp/tras.txt

dc temp -40 125 10
plot V(vbe1) V(vbe2)-V(vbe1) V(vbe1)+10.7906*(V(vbe2)-V(vbe1))
plot T(mu(V(vbe1),V(vbe2)))-op1.ttrim
plot T(mu(V(vbe1),V(vbe2)))-\"temp-sweep\"-op1.ttrim
plot V(vbe1) V(vbe2)


.endc
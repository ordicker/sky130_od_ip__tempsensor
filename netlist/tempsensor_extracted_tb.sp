.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

* NGSPICE file created from sky130_od_ip__tempsensor_ext_vp.ext - technology: sky130A

.subckt sky130_fd_pr__nfet_01v8_QXBCRM a_n1000_n188# a_n1160_n274# a_1000_n100# a_n1058_n100#
X0 a_1000_n100# a_n1000_n188# a_n1058_n100# a_n1160_n274# sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
.ends

.subckt sky130_fd_pr__pfet_01v8_lvt_B5H3CA w_n1196_n319# a_n1000_n197# a_1000_n100#
+ a_n1058_n100#
X0 a_1000_n100# a_n1000_n197# a_n1058_n100# w_n1196_n319# sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
.ends

.subckt buffer vdd input output vbias vss
XXM1 input vss m1_2942_n986# m1_772_n974# sky130_fd_pr__nfet_01v8_QXBCRM
XXM2 output vss output m1_2942_n986# sky130_fd_pr__nfet_01v8_QXBCRM
XXM3 vdd m1_772_n974# vdd m1_772_n974# sky130_fd_pr__pfet_01v8_lvt_B5H3CA
XXM4 vdd m1_772_n974# output vdd sky130_fd_pr__pfet_01v8_lvt_B5H3CA
XXM5 vbias vss m1_2942_n986# vss sky130_fd_pr__nfet_01v8_QXBCRM
.ends

.subckt sky130_fd_pr__rf_pnp_05v5_W3p40L3p40 Emitter Collector Base m=1
X0 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
**devattr s=462400,2720
.ends

.subckt sky130_fd_pr__pfet_01v8_lvt_6VRZAW a_100_n536# w_n296_n1191# a_n100_675# a_100_336#
+ a_n158_n536# a_n158_772# a_n100_n633# a_n100_239# a_n100_n197# a_100_n100# a_n158_336#
+ a_100_n972# a_n158_n100# a_100_772# a_n158_n972# a_n100_n1069#
X0 a_100_336# a_n100_239# a_n158_336# w_n296_n1191# sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X1 a_100_n100# a_n100_n197# a_n158_n100# w_n296_n1191# sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X2 a_100_772# a_n100_675# a_n158_772# w_n296_n1191# sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X3 a_100_n536# a_n100_n633# a_n158_n536# w_n296_n1191# sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
X4 a_100_n972# a_n100_n1069# a_n158_n972# w_n296_n1191# sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
.ends

.subckt sky130_fd_pr__pfet_01v8_lvt_3VR9VM w_n296_n319# a_n100_n197# a_100_n100# a_n158_n100#
X0 a_100_n100# a_n100_n197# a_n158_n100# w_n296_n319# sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
.ends

.subckt sky130_fd_pr__pfet_01v8_3HMWVM w_n296_n319# a_n100_n197# a_100_n100# a_n158_n100#
X0 a_100_n100# a_n100_n197# a_n158_n100# w_n296_n319# sky130_fd_pr__pfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
.ends

.subckt sky130_fd_pr__nfet_01v8_69TQ3K a_n260_n274# a_100_n100# a_n158_n100# a_n100_n188#
X0 a_100_n100# a_n100_n188# a_n158_n100# a_n260_n274# sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=1
.ends

.subckt sky130_od_ip__tempsensor_ext_vp vdd vss vbe2_out vbe1_out ena vbg
Xx1 vdd x1/input vbe2_out ena vss buffer
Xx2 vdd x2/input vbe1_out ena vss buffer
XXQ_BR1 x1/input vss vss sky130_fd_pr__rf_pnp_05v5_W3p40L3p40 m=1
XXQ_BL1 x2/input vss vss sky130_fd_pr__rf_pnp_05v5_W3p40L3p40 m=1
XXM22 vdd vdd m1_1668_n386# vdd x1/input x1/input m1_1668_n386# m1_1668_n386# m1_1668_n386#
+ vdd x1/input vdd x1/input vdd x1/input m1_1668_n386# sky130_fd_pr__pfet_01v8_lvt_6VRZAW
XXM11 vdd m1_1668_n386# vdd x2/input sky130_fd_pr__pfet_01v8_lvt_3VR9VM
XXM33 vdd ena m1_1668_n386# vdd sky130_fd_pr__pfet_01v8_3HMWVM
XXM44 vss m1_772_n1144# m1_420_n380# vbg sky130_fd_pr__nfet_01v8_69TQ3K
XXM55 vss m1_1668_n386# m1_772_n1144# m1_1668_n386# sky130_fd_pr__nfet_01v8_69TQ3K
XXM66 ena vss m1_772_n1144# vss sky130_fd_pr__nfet_01v8_QXBCRM
XXM77 vdd m1_420_n380# m1_1668_n386# vdd sky130_fd_pr__pfet_01v8_3HMWVM
XXM88 vdd m1_420_n380# vdd m1_420_n380# sky130_fd_pr__pfet_01v8_3HMWVM
.ends


*testbanch circuit
V1 vdd GND 1.8
V2 vbg GND 1.2
x1 vdd GND vbe2 vbe1 vdd vbg sky130_od_ip__tempsensor_ext_vp

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
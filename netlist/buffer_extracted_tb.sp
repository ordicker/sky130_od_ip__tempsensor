.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.subckt sky130_fd_pr__nfet_01v8_QXBCRM a_n1000_n188# a_n1160_n274# a_1000_n100# a_n1058_n100#
X0 a_1000_n100# a_n1000_n188# a_n1058_n100# a_n1160_n274# sky130_fd_pr__nfet_01v8 ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
C0 a_1000_n100# a_n1160_n274# 0.177f
C1 a_n1058_n100# a_n1160_n274# 0.177f
C2 a_n1000_n188# a_n1160_n274# 5.78f
.ends

.subckt sky130_fd_pr__pfet_01v8_lvt_B5H3CA w_n1196_n319# a_n1000_n197# a_1000_n100#
+ a_n1058_n100# VSUBS
X0 a_1000_n100# a_n1000_n197# a_n1058_n100# w_n1196_n319# sky130_fd_pr__pfet_01v8_lvt ad=0.29 pd=2.58 as=0.29 ps=2.58 w=1 l=10
C0 a_n1000_n197# w_n1196_n319# 3.21f
C1 a_n1000_n197# VSUBS 2.69f
C2 w_n1196_n319# VSUBS 5.96f
.ends

.subckt buffer vdd vss vbias input output
XXM1 input vss m1_2942_n986# m1_772_n974# sky130_fd_pr__nfet_01v8_QXBCRM
XXM2 output vss output m1_2942_n986# sky130_fd_pr__nfet_01v8_QXBCRM
XXM3 vdd m1_772_n974# vdd m1_772_n974# vss sky130_fd_pr__pfet_01v8_lvt_B5H3CA
XXM4 vdd m1_772_n974# output vdd vss sky130_fd_pr__pfet_01v8_lvt_B5H3CA
XXM5 vbias vss m1_2942_n986# vss sky130_fd_pr__nfet_01v8_QXBCRM
C0 vbias m1_2942_n986# 0.348f
C1 m1_772_n974# output 0.363f
C2 m1_772_n974# input 0.403f
C3 m1_772_n974# vdd 2.09f
C4 vdd output 0.23f
C5 m1_2942_n986# output 0.337f
C6 vbias input 0.133f
C7 vbias vss 8.67f
C8 m1_772_n974# vss 4.96f
C9 vdd vss 12.9f
C10 m1_2942_n986# vss 2.04f
C11 output vss 6.28f
C12 input vss 6.04f
.ends


V1 net2 GND 1.8
V2 net1 GND 0.6
x1 net2 GND net2 net1 out buffer

.control

dc V2 0 1.8 0.05
plot out


plot v(output)

.endc
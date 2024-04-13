v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 600 -340 660 -340 {
lab=vbe1}
N 90 -320 140 -320 {
lab=GND}
N 90 -320 90 -270 {
lab=GND}
N 20 -270 90 -270 {
lab=GND}
N 600 -320 660 -320 {
lab=vbe2}
N -100 -270 20 -270 {
lab=GND}
N 140 -320 310 -320 {
lab=GND}
N -30 -330 40 -330 {
lab=#net1}
N 40 -330 40 -300 {
lab=#net1}
N 40 -300 310 -300 {
lab=#net1}
N -100 -280 -100 -270 {
lab=GND}
N -100 -340 310 -340 {
lab=#net2}
N 265 -280 310 -280 {
lab=#net2}
N 265 -340 265 -280 {
lab=#net2}
C {devices/code.sym} 110 -130 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/opin.sym} 660 -340 0 0 {name=p1 lab=vbe1}
C {devices/gnd.sym} 90 -270 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -100 -310 0 0 {name=V1 value=1.8}
C {devices/opin.sym} 660 -320 0 0 {name=p2 lab=vbe2}
C {xschem/sky130_od_ip__tempsensor_ext_vp.sym} 460 -310 0 0 {name=x1}
C {devices/vsource.sym} -30 -300 0 0 {name=V2 value=1.2
}
C {devices/code.sym} 330 -120 0 0 {name=s2 only_toplevel=false value="
.func mu(vbe1,vbe2) = 10.7906/(10.7906+vbe1/(vbe2-vbe1))
.func T(mu) = 714.015*mu-259.802
.control
option TEMP=25
op
let ttrim = T(mu(V(vbe1),V(vbe2)))-25
*let ttrim=0
*print ttrim
*** DEBUG - search for linear mode trasistor
set altshow
show > /tmp/tras.txt

dc temp -40 125 10
plot V(vbe1) V(vbe2)-V(vbe1) V(vbe1)+10.7906*(V(vbe2)-V(vbe1))
plot T(mu(V(vbe1),V(vbe2)))-op1.ttrim
plot T(mu(V(vbe1),V(vbe2)))-\\"temp-sweep\\"-op1.ttrim
plot V(vbe1) V(vbe2)


.endc"}

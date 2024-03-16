v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -50 190 -50 {
lab=vbe2}
N -220 -30 -170 -30 {
lab=GND}
N -220 -30 -220 20 {
lab=GND}
N -290 0 -290 20 {
lab=GND}
N -290 20 -220 20 {
lab=GND}
N -290 -60 -170 -60 {
lab=#net1}
N -170 -60 -170 -50 {
lab=#net1}
N 130 -30 190 -30 {
lab=vbe1}
N -200 -60 -200 -10 {
lab=#net1}
N -200 -10 -170 -10 {
lab=#net1}
C {devices/code.sym} -190 160 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code.sym} 40 160 0 0 {name=s2 only_toplevel=false value=".control
dc temp -40 125 10
plot V(vbe1) V(vbe2)-V(vbe1) V(vbe1)+10.617*(V(vbe2)-V(vbe1))
plot 10.617/(10.617+V(vbe1)/(V(vbe2)-V(vbe1)))
.endc"}
C {devices/opin.sym} 190 -50 0 0 {name=p1 lab=vbe2}
C {devices/gnd.sym} -220 20 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -290 -30 0 0 {name=V1 value=1.8}
C {devices/opin.sym} 190 -30 0 0 {name=p2 lab=vbe1}
C {xschem/sky130_od_ip__tempsensor.sym} -20 -30 0 0 {name=x1}

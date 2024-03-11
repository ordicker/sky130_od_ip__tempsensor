v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -50 190 -50 {
lab=out}
N -220 -30 -170 -30 {}
N -220 -30 -220 20 {}
C {xschem/sky130_od_ip__tempsensor.sym} -20 -40 0 0 {name=x1}
C {devices/code.sym} -190 160 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code.sym} 40 160 0 0 {name=s2 only_toplevel=false value=".control
tran 100n 1.1m
plot V(out) V(in)
plot V(in) - V(out)
.endc"}
C {devices/opin.sym} 190 -50 0 0 {name=p1 lab=out}
C {devices/gnd.sym} -220 20 0 0 {name=l4 lab=GND}

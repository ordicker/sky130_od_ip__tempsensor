v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {CACE testbench respose_time} -310 -550 0 0 0.6 0.6 {}
T {Drawn by Or Dicker
March 14, 2024
Revision 0
Open sourced under Apache 2.0 license} -920 130 0 0 0.4 0.4 {}
N -290 -20 -240 -20 {
lab=VSUB}
N -30 -160 70 -160 {
lab=vdd}
N -30 -140 70 -140 {
lab=vss}
N 370 -140 660 -140 {
lab=Vbe1}
N 370 -160 660 -160 {
lab=Vbe2}
N -240 -20 -110 -20 {
lab=VSUB}
N -270 -160 -270 -80 {
lab=vdd}
N -270 -160 -30 -160 {
lab=vdd}
N -190 -140 -190 -80 {
lab=vss}
N -190 -140 -30 -140 {
lab=vss}
N -110 -120 70 -120 {
lab=#net1}
N -110 -120 -110 -80 {
lab=#net1}
C {devices/lab_pin.sym} -290 -20 0 0 {name=p1 sig_type=std_logic lab=VSUB}
C {devices/vsource.sym} -190 -50 0 0 {name=vss value="DC \{vss\}" savecurrent=false}
C {devices/lab_wire.sym} -30 -160 0 1 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -30 -140 0 1 {name=p24 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 660 -140 0 0 {name=p25 sig_type=std_logic lab=Vbe1}
C {devices/vsource.sym} -270 -50 0 0 {name=vdd value="DC \{vdd\}" savecurrent=false}
C {devices/code_shown.sym} -940 -130 0 0 {name=CONTROL only_toplevel=false value=".control
* Step function applied at time 100ns, measure respose_time
.func mu(vbe1,vbe2) \{10.617/(10.617+vbe1/(vbe2-vbe1))\}
.func T(mu) = 607.904*mu-205.535
tran 100n 1m
let tmeas = T(mu(V(Vbe1),V(Vbe2)))
meas tran tres when tmeas=0.9*\{temperature\} CROSS=LAST

set wr_singlescale
echo $&tres > \{simpath\}/\{filename\}_\{N\}.data
quit
.endc
"}
C {devices/code_shown.sym} -930 -470 0 0 {name=SETUP only_toplevel=false value="* CACE gensim simulation file \{filename\}_\{N\}
*Find the current through the temperature sensor 

.include \{DUT_path\}

.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice \{corner\}

.option TEMP=\{temperature\}

* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1
"}
C {devices/res.sym} -240 10 0 0 {name=RSUB
value=0.01
device=resistor}
C {devices/gnd.sym} -240 40 0 0 {name=l1 lab=GND}
C {xschem/sky130_od_ip__tempsensor.sym} 220 -140 0 0 {name=x1}
C {devices/lab_wire.sym} 660 -160 0 0 {name=p2 sig_type=std_logic lab=Vbe2}
C {devices/vsource.sym} -110 -50 0 0 {name=VVdiff value="DC 0 PWL(0 0 100n 0 100.1n \{ena\})" savecurrent=false}

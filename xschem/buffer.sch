v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {buffer} 185 -435 0 0 0.8 0.8 {}
N 150 -180 150 -150 {
lab=#net1}
N 150 -150 350 -150 {
lab=#net1}
N 350 -180 350 -150 {
lab=#net1}
N 260 -90 260 -60 {
lab=vss}
N 240 -60 260 -60 {
lab=vss}
N 260 -120 270 -120 {
lab=vss}
N 270 -120 270 -90 {
lab=vss}
N 260 -90 270 -90 {
lab=vss}
N 150 -210 350 -210 {
lab=vss}
N 270 -210 270 -120 {
lab=vss}
N 50 -210 110 -210 {
lab=input}
N 350 -270 350 -240 {
lab=output}
N 150 -270 150 -240 {
lab=#net2}
N 350 -250 420 -250 {
lab=output}
N 420 -250 420 -210 {
lab=output}
N 390 -210 420 -210 {
lab=output}
N 420 -210 470 -210 {
lab=output}
N 150 -330 350 -330 {
lab=vdd}
N 190 -300 310 -300 {
lab=#net2}
N 150 -250 240 -250 {
lab=#net2}
N 240 -300 240 -250 {
lab=#net2}
N 250 -360 250 -330 {
lab=vdd}
N 220 -360 250 -360 {
lab=vdd}
N 50 -320 60 -320 {
lab=vdd}
N 50 -290 60 -290 {
lab=vss}
N 180 -120 220 -120 {
lab=vbias}
N 50 -250 60 -250 {
lab=vbias}
N 140 -300 150 -300 {
lab=vdd}
N 140 -330 140 -300 {
lab=vdd}
N 140 -330 150 -330 {
lab=vdd}
N 350 -330 360 -330 {
lab=vdd}
N 360 -330 360 -300 {
lab=vdd}
N 350 -300 360 -300 {
lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 130 -210 0 0 {name=M1
L=10
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 370 -210 0 1 {name=M2
L=10
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 240 -120 0 0 {name=M5
L=10
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/opin.sym} 470 -210 0 0 {name=p1 lab=output}
C {devices/ipin.sym} 50 -210 0 0 {name=p2 lab=input}
C {devices/ipin.sym} 50 -320 0 0 {name=p3 lab=vdd
}
C {devices/ipin.sym} 50 -290 0 0 {name=p4 lab=vss
}
C {devices/lab_pin.sym} 240 -60 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 220 -360 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/ipin.sym} 50 -250 0 0 {name=p7 lab=vbias
}
C {devices/lab_pin.sym} 180 -120 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 330 -300 0 0 {name=M4
L=10
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 170 -300 0 1 {name=M3
L=10
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}

v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -300 90 -300 {
lab=vdd}
N 50 -260 90 -260 {
lab=vss}
N 420 -260 550 -260 {
lab=vdd}
N 420 -200 420 -140 {
lab=Vbe1}
N 550 -200 550 -140 {
lab=Vbe2}
N 460 -110 510 -110 {
lab=vss}
N 420 -80 420 -60 {
lab=vss}
N 420 -60 550 -60 {
lab=vss}
N 550 -80 550 -60 {
lab=vss}
N 490 -60 490 -30 {
lab=vss}
N 470 -30 490 -30 {
lab=vss}
N 490 -290 490 -260 {
lab=vdd}
N 460 -290 490 -290 {
lab=vdd}
N 460 -230 460 -220 {
lab=vp}
N 460 -220 650 -220 {
lab=vp}
N 490 -110 490 -60 {
lab=vss}
N 380 -170 420 -170 {
lab=Vbe1}
N 550 -170 600 -170 {
lab=Vbe2}
N 60 -150 110 -150 {
lab=ena}
N 150 -180 200 -180 {
lab=vdd}
N 150 -150 170 -150 {
lab=vdd}
N 170 -180 170 -150 {
lab=vdd}
N 150 -120 150 -100 {
lab=Vp}
N 150 -100 200 -100 {
lab=Vp}
N 50 -220 90 -220 {
lab=vp}
N 510 -230 510 -220 {
lab=vp}
C {devices/ipin.sym} 50 -300 0 0 {name=p1 lab=vdd
}
C {devices/ipin.sym} 50 -260 0 0 {name=p3 lab=vss
}
C {sky130_fd_pr/pnp_05v5.sym} 440 -110 0 1 {name=Q_BL1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 530 -110 0 0 {name=Q_BR1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {devices/lab_pin.sym} 460 -290 0 0 {name=p5 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 470 -30 0 0 {name=p11 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} 650 -220 0 1 {name=p12 sig_type=std_logic lab=vp
}
C {devices/opin.sym} 600 -170 0 0 {name=p13 lab=Vbe2}
C {devices/opin.sym} 380 -170 0 1 {name=p14 lab=Vbe1
}
C {sky130_fd_pr/pfet_01v8.sym} 130 -150 0 0 {name=M16
L=1.2
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 60 -150 0 0 {name=p15 lab=ena}
C {devices/lab_pin.sym} 200 -180 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 200 -100 0 1 {name=p17 sig_type=std_logic lab=Vp}
C {devices/ipin.sym} 50 -220 0 0 {name=p2 lab=vp
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 440 -230 0 1 {name=M1
L=1
W=1
body=VDD
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 530 -230 0 0 {name=M2
L=1
W=1
body=VDD
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}

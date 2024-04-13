v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {vbg buffer and ena} 205 -415 0 0 0.8 0.8 {}
T {Temp sensor} 815 -395 0 0 0.8 0.8 {}
N 50 -300 90 -300 {
lab=vdd}
N 50 -260 90 -260 {
lab=vss}
N 880 -280 1010 -280 {
lab=vdd}
N 880 -220 880 -160 {
lab=Vbe1}
N 1010 -220 1010 -160 {
lab=Vbe2}
N 920 -130 970 -130 {
lab=vss}
N 880 -100 880 -80 {
lab=vss}
N 880 -80 1010 -80 {
lab=vss}
N 1010 -100 1010 -80 {
lab=vss}
N 950 -80 950 -50 {
lab=vss}
N 930 -50 950 -50 {
lab=vss}
N 950 -310 950 -280 {
lab=vdd}
N 920 -310 950 -310 {
lab=vdd}
N 920 -250 920 -240 {
lab=vp}
N 920 -240 1110 -240 {
lab=vp}
N 950 -130 950 -80 {
lab=vss}
N 840 -190 880 -190 {
lab=Vbe1}
N 1010 -190 1060 -190 {
lab=Vbe2}
N 50 -220 90 -220 {
lab=vbg}
N 970 -250 970 -240 {
lab=vp}
N 375 -80 375 -50 {
lab=vss}
N 345 -50 375 -50 {
lab=vss}
N 375 -110 395 -110 {
lab=vss}
N 395 -110 395 -80 {
lab=vss}
N 375 -80 395 -80 {
lab=vss}
N 285 -180 455 -180 {
lab=vss}
N 395 -180 395 -110 {
lab=vss}
N 285 -150 285 -140 {
lab=#net1}
N 285 -140 455 -140 {
lab=#net1}
N 455 -150 455 -140 {
lab=#net1}
N 455 -250 455 -210 {
lab=vp}
N 285 -250 285 -210 {
lab=#net2}
N 325 -280 415 -280 {
lab=#net2}
N 365 -280 365 -230 {
lab=#net2}
N 285 -230 365 -230 {
lab=#net2}
N 285 -310 455 -310 {
lab=vdd}
N 375 -350 375 -310 {
lab=vdd}
N 325 -350 375 -350 {
lab=vdd}
N 275 -110 335 -110 {
lab=ena}
N 185 -180 245 -180 {
lab=vbg}
N 495 -180 525 -180 {
lab=vp}
N 525 -230 525 -180 {
lab=vp}
N 455 -230 525 -230 {
lab=vp}
N 525 -230 555 -230 {
lab=vp}
N 455 -280 465 -280 {
lab=vdd}
N 465 -310 465 -280 {
lab=vdd}
N 455 -310 465 -310 {
lab=vdd}
N 275 -280 285 -280 {
lab=vdd}
N 275 -310 275 -280 {
lab=vdd}
N 275 -310 285 -310 {
lab=vdd}
N 465 -310 565 -310 {
lab=vdd}
N 555 -280 565 -280 {
lab=vdd}
N 555 -310 555 -280 {
lab=vdd}
N 555 -230 575 -230 {
lab=vp}
N 565 -250 565 -230 {
lab=vp}
N 605 -280 630 -280 {
lab=ena}
N 50 -180 90 -180 {
lab=ena}
C {devices/ipin.sym} 50 -300 0 0 {name=p1 lab=vdd
}
C {devices/ipin.sym} 50 -260 0 0 {name=p3 lab=vss
}
C {sky130_fd_pr/pnp_05v5.sym} 900 -130 0 1 {name=Q_BL1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 990 -130 0 0 {name=Q_BR1
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {devices/lab_pin.sym} 920 -310 0 0 {name=p5 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 930 -50 0 0 {name=p11 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} 1110 -240 0 1 {name=p12 sig_type=std_logic lab=vp
}
C {devices/opin.sym} 1060 -190 0 0 {name=p13 lab=Vbe2}
C {devices/opin.sym} 840 -190 0 1 {name=p14 lab=Vbe1
}
C {devices/ipin.sym} 50 -180 0 0 {name=p15 lab=ena}
C {devices/ipin.sym} 50 -220 0 0 {name=p2 lab=vbg
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 900 -250 0 1 {name=M1
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 990 -250 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 265 -180 0 0 {name=M4
L=1
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
C {sky130_fd_pr/nfet_01v8.sym} 475 -180 0 1 {name=M5
L=1
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
C {devices/lab_pin.sym} 345 -50 0 0 {name=p4 sig_type=std_logic lab=vss
}
C {sky130_fd_pr/pfet_01v8.sym} 435 -280 0 0 {name=M7
L=1
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
C {sky130_fd_pr/pfet_01v8.sym} 305 -280 0 1 {name=M8
L=1
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
C {devices/lab_pin.sym} 325 -350 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 275 -110 0 0 {name=p7 sig_type=std_logic lab=ena
}
C {devices/lab_pin.sym} 185 -180 0 0 {name=p8 sig_type=std_logic lab=vbg
}
C {devices/lab_pin.sym} 575 -230 0 1 {name=p9 sig_type=std_logic lab=vp
}
C {sky130_fd_pr/pfet_01v8.sym} 585 -280 0 1 {name=M3
L=1
W=1
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
C {devices/lab_pin.sym} 630 -280 0 1 {name=p10 sig_type=std_logic lab=ena
}
C {sky130_fd_pr/nfet_01v8.sym} 355 -110 0 0 {name=M6
L=20
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

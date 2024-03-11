v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -640 -260 -430 -260 {
lab=vdd}
N -660 -500 -620 -500 {
lab=vdd}
N -540 -290 -540 -260 {
lab=vdd}
N -560 -290 -540 -290 {
lab=vdd}
N -640 -30 -640 -20 {
lab=vss}
N -640 -20 -430 -20 {
lab=vss}
N -430 -30 -430 -20 {
lab=vss}
N -530 -20 -530 -0 {
lab=vss}
N -550 0 -530 0 {
lab=vss}
N -660 -460 -620 -460 {
lab=vss}
N -430 -200 -430 -90 {
lab=#net1}
N -640 -200 -640 -180 {
lab=#net2}
N -600 -60 -540 -60 {
lab=vss}
N -480 -60 -470 -60 {
lab=#net3}
N -550 -60 -550 -20 {
lab=vss}
N -640 -180 -640 -170 {
lab=#net2}
N -640 -110 -640 -90 {
lab=#net4}
N -430 -260 -280 -260 {
lab=vdd}
N -270 -180 -120 -180 {
lab=#net5}
N -220 -200 -220 -180 {
lab=#net5}
N -430 -150 -370 -150 {
lab=#net1}
N -640 -190 -140 -190 {
lab=#net2}
N -80 -190 -80 -150 {
lab=#net2}
N -280 -260 -220 -260 {
lab=vdd}
N -140 -190 -80 -190 {
lab=#net2}
N -370 -150 -310 -150 {
lab=#net1}
N -430 -20 -120 -20 {
lab=vss}
N -120 -120 -120 -80 {
lab=#net6}
N -160 -100 -160 -50 {
lab=#net6}
N -160 -100 -120 -100 {
lab=#net6}
N -270 -120 -270 -80 {
lab=#net7}
N -230 -100 -230 -50 {
lab=#net7}
N -270 -100 -230 -100 {
lab=#net7}
N -220 -260 120 -260 {
lab=vdd}
N -120 -20 120 -20 {
lab=vss}
N 120 -200 120 -180 {
lab=#net8}
N 120 -120 120 -80 {
lab=#net9}
N 30 -150 80 -150 {
lab=#net8}
N 60 -190 120 -190 {
lab=#net8}
N 60 -190 60 -150 {
lab=#net8}
N 80 -100 80 -50 {
lab=#net9}
N 80 -100 120 -100 {
lab=#net9}
N -10 -120 -10 -80 {
lab=#net10}
N -10 -200 -10 -180 {
lab=Vp}
N -120 -100 -50 -100 {
lab=#net6}
N -50 -100 -50 -50 {
lab=#net6}
N -10 -190 50 -190 {
lab=Vp}
N -600 -220 210 -220 {
lab=Vp}
N -600 -230 -600 -220 {
lab=Vp}
N -470 -230 -470 -220 {
lab=Vp}
N -180 -230 -180 -220 {
lab=Vp}
N 30 -230 30 -220 {
lab=Vp}
N 80 -230 80 -220 {
lab=Vp}
N 50 -220 50 -190 {
lab=Vp}
N -650 -230 -640 -230 {
lab=vdd}
N -650 -260 -650 -230 {
lab=vdd}
N -650 -260 -640 -260 {
lab=vdd}
N -430 -230 -420 -230 {
lab=vdd}
N -420 -260 -420 -230 {
lab=vdd}
N -230 -230 -220 -230 {
lab=vdd}
N -230 -260 -230 -230 {
lab=vdd}
N -20 -230 -10 -230 {
lab=vdd}
N -20 -260 -20 -230 {
lab=vdd}
N 120 -230 130 -230 {
lab=vdd}
N 130 -260 130 -230 {
lab=vdd}
N 120 -260 130 -260 {
lab=vdd}
N -270 -150 -240 -150 {
lab=vdd}
N -150 -150 -120 -150 {
lab=vdd}
N -290 -50 -270 -50 {
lab=vss}
N -290 -50 -290 -20 {
lab=vss}
N -120 -50 -110 -50 {
lab=vss}
N -110 -50 -110 -20 {
lab=vss}
N -10 -50 10 -50 {
lab=vss}
N 10 -50 10 -20 {
lab=vss}
N 120 -50 130 -50 {
lab=vss}
N 130 -50 130 -20 {
lab=vss}
N 120 -20 130 -20 {
lab=vss}
N 120 -150 140 -150 {
lab=vss}
N -30 -150 -10 -150 {
lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} -450 -230 0 0 {name=M12
L=0.15
W=5
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
C {sky130_fd_pr/pfet_01v8.sym} -620 -230 0 1 {name=M13
L=0.15
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
C {devices/ipin.sym} -660 -500 0 0 {name=p1 lab=vdd
}
C {devices/lab_pin.sym} -560 -290 0 0 {name=p2 sig_type=std_logic lab=vdd
}
C {sky130_fd_pr/pnp_05v5.sym} -450 -60 0 0 {name=Q_BR
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -620 -60 0 1 {name=Q_BL
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {devices/res.sym} -640 -140 0 0 {name=Rb
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -510 -60 1 0 {name=Rb_5
value=0.2k
footprint=1206
device=resistor
m=1}
C {devices/ipin.sym} -660 -460 0 0 {name=p3 lab=vss
}
C {devices/lab_pin.sym} -550 0 0 0 {name=p4 sig_type=std_logic lab=vss
}
C {devices/opin.sym} -540 -500 0 0 {name=p5 lab=Vp
}
C {sky130_fd_pr/pfet_01v8.sym} -200 -230 0 1 {name=M11
L=0.15
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} -100 -150 0 1 {name=M6
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} -290 -150 0 0 {name=M5
L=0.15
W=5
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
C {sky130_fd_pr/nfet_01v8.sym} -140 -50 0 0 {name=M2
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} -250 -50 0 1 {name=M1
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 100 -230 0 0 {name=M9
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 10 -230 0 1 {name=M10
L=0.15
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 10 -150 0 1 {name=M7
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 100 -150 0 0 {name=M8
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} -30 -50 0 0 {name=M3
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 100 -50 0 0 {name=M4
L=0.15
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
C {devices/lab_pin.sym} 210 -220 0 1 {name=p6 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} -240 -150 0 1 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -150 -150 0 0 {name=p8 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 140 -150 0 1 {name=p9 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -30 -150 0 0 {name=p10 sig_type=std_logic lab=vss}

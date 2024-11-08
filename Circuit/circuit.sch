v {xschem version=3.4.6RC file_version=1.2

}

G {}

K {}

V {}

S {}

E {}

N 20 -30 20 30 {lab=b}

N 60 -60 60 -30 {lab=vdd}

N 60 30 60 60 {lab=GND}

N 130 -70 130 -10 {lab=a}

N 60 -0 110 -0 {lab=#net1}

N 110 -0 110 20 {lab=#net1}

N 110 20 170 20 {lab=#net1}

N -10 0 20 -0 {lab=b}

N -10 -100 -10 0 {lab=b}

N -10 -100 170 -100 {lab=b}

N -40 -0 -10 -0 {lab=b}

N 170 -40 240 -40 {lab=x}

N 120 -30 130 -30 {lab=a}

N 20 170 20 230 {lab=cin}

N 60 140 60 170 {lab=vdd}

N 60 230 60 260 {lab=GND}

N 130 130 130 190 {lab=x}

N 60 200 110 200 {lab=#net2}

N 110 200 110 220 {lab=#net2}

N 110 220 170 220 {lab=#net2}

N -10 200 20 200 {lab=cin}

N -10 100 -10 200 {lab=cin}

N -10 100 170 100 {lab=cin}

N -40 200 -10 200 {lab=cin}

N 170 160 240 160 {lab=sum}

N 120 170 130 170 {lab=x}

N 410 30 410 110 {lab=cout}

N 410 70 520 70 {lab=cout}

N 350 70 380 70 {lab=x}

N 330 30 360 30 {lab=a}

N 330 110 360 110 {lab=cin}

N 170 -70 220 -70 {lab=vdd}

N 170 -10 230 -10 {lab=GND}

N 170 130 200 130 {lab=vdd}

N 170 190 210 190 {lab=GND}

N 380 -20 380 30 {lab=vdd}

N 380 110 380 170 {lab=GND}

C {sky130_fd_pr/pfet_01v8.sym} 40 -30 0 0 {name=M1

W=4

L=0.15

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

C {sky130_fd_pr/pfet_01v8.sym} 150 -70 0 0 {name=M3

W=8

L=0.15

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

C {sky130_fd_pr/nfet_01v8.sym} 40 30 0 0 {name=M2

W=2

L=0.15

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

C {sky130_fd_pr/nfet_01v8.sym} 150 -10 0 0 {name=M4

W=4

L=0.15

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

C {ipin.sym} -30 0 0 0 {name=p6 lab=b}

C {opin.sym} 230 -40 0 0 {name=p7 lab=x}

C {ipin.sym} 120 -30 0 0 {name=p9 lab=a}

C {ipin.sym} 60 -60 1 0 {name=p10 lab=vdd}

C {vsource.sym} -110 -20 0 0 {name=vdd

 value=1.8 savecurrent=true}

C {gnd.sym} -110 10 0 0 {name=l3 lab=GND}

C {lab_pin.sym} -110 -50 0 0 {name=p1 sig_type=std_logic lab=vdd

}

C {vsource.sym} -280 100 0 0 {name=vdd1

 value="PULSE(0 1.8 0 0.3n 0.3n 5n 10n)" savecurrent=true}

C {gnd.sym} -280 130 0 0 {name=l1 lab=GND}

C {lab_pin.sym} -280 70 0 0 {name=p2 sig_type=std_logic lab=b

}

C {vsource.sym} -280 -10 0 0 {name=vdd2

 value="PULSE(0 1.8 0 0.3n 0.3n 4n 8n)" savecurrent=true}

C {gnd.sym} -280 20 0 0 {name=l2 lab=GND}

C {lab_pin.sym} -280 -40 0 0 {name=p3 sig_type=std_logic lab=a

}

C {gnd.sym} 60 60 0 0 {name=l4 lab=GND}

C {code_shown.sym} -100 320 0 0 {name=s1 only_toplevel=false value= ".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran .1n 20n  

.save all 

.end"}

C {sky130_fd_pr/pfet_01v8.sym} 40 170 0 0 {name=M5

W=4

L=0.15

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

C {sky130_fd_pr/pfet_01v8.sym} 150 130 0 0 {name=M6

W=8

L=0.15

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

C {sky130_fd_pr/nfet_01v8.sym} 40 230 0 0 {name=M7

W=2

L=0.15

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

C {sky130_fd_pr/nfet_01v8.sym} 150 190 0 0 {name=M8

W=4

L=0.15

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

C {ipin.sym} -30 200 0 0 {name=p4 lab=cin}

C {opin.sym} 230 160 0 0 {name=p5 lab=sum}

C {ipin.sym} 120 170 0 0 {name=p8 lab=x}

C {ipin.sym} 60 140 1 0 {name=p11 lab=vdd}

C {gnd.sym} 60 260 0 0 {name=l5 lab=GND}

C {vsource.sym} -290 220 0 0 {name=vdd3

 value="PULSE(0 1.8 0 0.3n 0.3n 10n 20n)" savecurrent=true}

C {gnd.sym} -290 250 0 0 {name=l6 lab=GND

value="PULSE(0 1.8 0 0.3n 0.3n 10n 20n)"}

C {lab_pin.sym} -290 190 0 0 {name=p12 sig_type=std_logic lab=cin



value="PULSE(0 1.8 0 0.3n 0.3n 10n 20n)"}

C {sky130_fd_pr/pfet_01v8.sym} 380 50 3 0 {name=M10

W=8

L=0.15

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

C {sky130_fd_pr/nfet_01v8.sym} 380 90 1 0 {name=M11

W=4

L=0.15

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

C {ipin.sym} 330 30 0 0 {name=p13 lab=a}

C {ipin.sym} 330 110 0 0 {name=p14 lab=cin}

C {ipin.sym} 350 70 0 0 {name=p15 lab=x}

C {opin.sym} 520 70 0 0 {name=p16 lab=cout}

C {lab_pin.sym} 220 -70 2 0 {name=p18 sig_type=std_logic lab=vdd

}

C {lab_pin.sym} 230 -10 2 0 {name=p19 sig_type=std_logic lab=GND}

C {lab_pin.sym} 200 130 2 0 {name=p20 sig_type=std_logic lab=vdd}

C {lab_pin.sym} 210 190 2 0 {name=p21 sig_type=std_logic lab=GND}

C {lab_pin.sym} 380 -20 1 0 {name=p22 sig_type=std_logic lab=vdd}

C {lab_pin.sym} 380 170 3 0 {name=p23 sig_type=std_logic lab=GND}

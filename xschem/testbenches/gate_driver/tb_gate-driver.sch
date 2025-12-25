v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 300 -210 300 -160 {lab=VSS}
N 370 -260 400 -260 {lab=OUT}
N 220 -260 270 -260 {lab=IN}
N 300 -360 300 -310 {lab=VDD}
N 670 -330 670 -320 {lab=GND}
N 420 -260 490 -260 {lab=OUT}
N 400 -260 420 -260 {lab=OUT}
C {sky130A-pmic-half_bridge/xschem/gate_driver/gate-driver.sym} 30 -40 0 0 {name=x1}
C {lab_pin.sym} 220 -260 0 0 {name=p1 sig_type=std_logic lab=IN}
C {lab_pin.sym} 300 -360 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -160 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 490 -260 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {vsource.sym} 510 -360 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 590 -360 0 0 {name=V2 value=3 savecurrent=false}
C {vsource.sym} 670 -360 0 0 {name=V3 value=0 savecurrent=false}
C {sky130_fd_pr/corner.sym} 580 -240 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} 730 -380 0 0 {name=s1 only_toplevel=false value="

.control

	DC V2 0 5 0.01
	let p_vdd = -i(v1)*VDD
	let p_vss = i(v3)*VSS
	let p_tot = p_vdd + p_vss
	plot -i(V1)
	plot OUT
	plot p_tot
	plot i(Vmeas)

.endc


"}
C {lab_pin.sym} 510 -390 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 510 -330 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 590 -390 0 0 {name=p7 sig_type=std_logic lab=IN}
C {lab_pin.sym} 590 -330 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 670 -390 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {gnd.sym} 670 -320 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 300 -160 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {title.sym} 160 -40 0 0 {name=l2 author="Dzaki Andriansyah"}
C {lab_pin.sym} 430 -200 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {res.sym} 430 -230 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}

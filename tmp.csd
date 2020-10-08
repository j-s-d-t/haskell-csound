<CsoundSynthesizer>

<CsOptions>

--nodisplays --output=dac --input=adc

</CsOptions>

<CsInstruments>

sr = 44100
ksmps = 64
nchnls = 1
0dbfs = 1.0
gkrggBpmVar init 110.0
girgfree_vco = 101
ir13 = girgfree_vco
ir15 vco2init 1, ir13
girgfree_vco = ir15
ir18 = girgfree_vco
ir20 vco2init 8, ir18
girgfree_vco = ir20
giPort init 1
opcode FreePort, i, 0
xout giPort
giPort = giPort + 1
endop




instr 23

endin

instr 22
 event_i "i", 21, 36.0, 1.0e-2
endin

instr 21
ir1 = 20
ir2 = 0.0
 turnoff2 ir1, ir2, ir2
ir5 = 19
 turnoff2 ir5, ir2, ir2
ir8 = 18
 turnoff2 ir8, ir2, ir2
 exitnow 
endin

instr 20
arl0 init 0.0
ar0 subinstr 19
ir5 = 1.0
ar1 upsamp k(ir5)
ir6 = 0.0
ir7 = 90.0
ir8 = 100.0
ar2 compress ar0, ar1, ir6, ir7, ir7, ir8, ir6, ir6, 0.0
ar0 = (ar2 * 0.8)
arl0 = ar0
ar0 = arl0
 out ar0
endin

instr 19
ir1 FreePort 
krl0 init 10.0
 event_i "i", 18, 0.0, 0.9, 2.0, 6.04, ir1
 event_i "i", 18, 0.9, 0.9, 0.3333333333333333, 7.04, ir1
 event_i "i", 18, 1.8, 0.9, 2.0, 6.04, ir1
 event_i "i", 18, 2.7, 0.9, 0.6666666666666666, 7.07, ir1
 event_i "i", 18, 3.6, 0.9, 2.0, 5.09, ir1
 event_i "i", 18, 4.5, 0.9, 1.0, 6.09, ir1
 event_i "i", 18, 5.4, 0.9, 0.6666666666666666, 5.09, ir1
 event_i "i", 18, 6.300000000000001, 0.9, 0.3333333333333333, 6.11, ir1
 event_i "i", 18, 7.200000000000001, 0.9, 1.0, 6.04, ir1
 event_i "i", 18, 8.100000000000001, 0.9, 0.3333333333333333, 7.04, ir1
 event_i "i", 18, 9.000000000000002, 0.9, 2.0, 6.04, ir1
 event_i "i", 18, 9.900000000000002, 0.9, 0.6666666666666666, 7.07, ir1
 event_i "i", 18, 10.800000000000002, 0.9, 2.0, 6.09, ir1
 event_i "i", 18, 11.700000000000003, 0.9, 1.0, 7.09, ir1
 event_i "i", 18, 12.600000000000003, 0.9, 0.6666666666666666, 6.11, ir1
 event_i "i", 18, 13.500000000000004, 0.9, 0.3333333333333333, 6.07, ir1
 event_i "i", 18, 14.400000000000004, 0.9, 2.0, 6.04, ir1
 event_i "i", 18, 15.300000000000004, 0.9, 0.3333333333333333, 7.04, ir1
 event_i "i", 18, 16.200000000000003, 0.9, 2.0, 6.04, ir1
 event_i "i", 18, 17.1, 0.9, 0.6666666666666666, 7.07, ir1
 event_i "i", 18, 18.0, 0.9, 2.0, 6.04, ir1
 event_i "i", 18, 18.9, 0.9, 0.3333333333333333, 7.04, ir1
 event_i "i", 18, 19.799999999999997, 0.9, 2.0, 6.04, ir1
 event_i "i", 18, 20.699999999999996, 0.9, 0.6666666666666666, 7.07, ir1
 event_i "i", 18, 21.599999999999994, 0.9, 2.0, 5.09, ir1
 event_i "i", 18, 22.499999999999993, 0.9, 1.0, 6.09, ir1
 event_i "i", 18, 23.39999999999999, 0.9, 0.6666666666666666, 5.09, ir1
 event_i "i", 18, 24.29999999999999, 0.9, 0.3333333333333333, 6.11, ir1
 event_i "i", 18, 25.19999999999999, 0.9, 1.0, 6.04, ir1
 event_i "i", 18, 26.099999999999987, 0.9, 0.3333333333333333, 7.04, ir1
 event_i "i", 18, 26.999999999999986, 0.9, 2.0, 6.04, ir1
 event_i "i", 18, 27.899999999999984, 0.9, 0.6666666666666666, 7.07, ir1
 event_i "i", 18, 28.799999999999983, 0.9, 2.0, 6.09, ir1
 event_i "i", 18, 29.69999999999998, 0.9, 1.0, 7.09, ir1
 event_i "i", 18, 30.59999999999998, 0.9, 0.6666666666666666, 6.11, ir1
 event_i "i", 18, 31.49999999999998, 0.9, 0.3333333333333333, 6.07, ir1
 event_i "i", 18, 32.39999999999998, 0.9, 2.0, 6.04, ir1
 event_i "i", 18, 33.299999999999976, 0.9, 0.3333333333333333, 7.04, ir1
 event_i "i", 18, 34.199999999999974, 0.9, 2.0, 6.04, ir1
 event_i "i", 18, 35.09999999999997, 0.9, 0.6666666666666666, 7.07, ir1
krl0 = 4.0
kr0 = krl0
S89 sprintf "alive_%d", ir1
 chnset kr0, S89
S92 sprintf "p1_%d", ir1
ar0 chnget S92
 chnclear S92
arl1 init 0.0
arl1 = ar0
ar0 = arl1
 out ar0
endin

instr 18
arl0 init 0.0
ir3 = 1.0
ir4 = p5
kr0 = cpspch(ir4)
ar0 upsamp kr0
kr1 = (kr0 * 1.005)
kr2 vco2ft kr1, 0
ar1 oscilikt ir3, kr1, kr2
kr1 = (kr0 * 0.495)
kr0 vco2ft kr1, 3
ar2 oscilikt ir3, kr1, kr0
ar3 = (ar1 + ar2)
ar1 = (ar3 / 2.0)
ar2 = (ar0 * 9.0)
kr0 = (p4 * 0.45)
kr1 = (1.0 / kr0)
kr0 = (kr1 / 1.0)
ir18 = 0.0
kr1 loopseg kr0, ir18, 0.0, ir18, ir3, ir3, ir3, ir18, ir18, ir18
ir20 = 1.0e-3
kr0 portk kr1, ir20
ar3 upsamp kr0
ar4 = (ar2 * ar3)
ar2 = (ar0 + ar4)
ir24 = 0.6
ar0 upsamp k(ir24)
ar3 moogladder ar1, ar2, ar0
arl0 = ar3
ar0 = arl0
S30 sprintf "p1_%d", p6
 chnmix ar0, S30
S33 sprintf "alive_%d", p6
kr0 chnget S33
if (kr0 < -10.0) then
     turnoff 
endif
kr1 = (kr0 - 1.0)
 chnset kr1, S33
endin

</CsInstruments>

<CsScore>



f0 604800.0

i 23 0.0 -1.0 
i 22 0.0 -1.0 
i 20 0.0 -1.0 

</CsScore>



</CsoundSynthesizer>
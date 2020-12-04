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
giPort init 1
opcode FreePort, i, 0
xout giPort
giPort = giPort + 1
endop




instr 21

endin

instr 20
 event_i "i", 19, 604800.0, 1.0e-2
endin

instr 19
ir1 = 18
ir2 = 0.0
 turnoff2 ir1, ir2, ir2
 exitnow 
endin

instr 18
arl0 init 0.0
ir3 = 10.0
ar0 upsamp k(ir3)
ir4 = 0.0
ar1 upsamp k(ir4)
ir5 = 1.0
ar2 upsamp k(ir5)
ir6 = 100.0
ir7 = 6
kr0 = ftlen(ir7)
kr1 = (kr0 / sr)
kr0 = (1.0 / kr1)
kr1 = (kr0 * 1.0)
ir12 = -1.0
ir13 filelen "Sounds/flutec.wav"
kr0 = (1.0 / ir13)
kr2 = (7.0e-2 * kr0)
ar3 upsamp kr2
ar4 partikkel ar0, ir4, 2, ar1, ir5, 4, -1.0, -1.0, ir4, ir4, ir6, ir5, -1.0, kr1, ir4, -1.0, -1.0, ar2, -1.0, ir12, 8, ir3, ir5, ir5, -1.0, ir4, ir7, ir7, ir7, ir7, -1.0, ar3, ar3, ar3, ar3, ir5, ir5, ir5, ir5, 1000.0
ar0 = (0.2 * ar4)
ar1 = (0.2 * ar0)
ir20 = 90.0
ar0 compress ar1, ar2, ir4, ir20, ir20, ir6, ir4, ir4, 0.0
ar1 = (ar0 * 0.8)
arl0 = ar1
ar0 = arl0
 out ar0
endin

</CsInstruments>

<CsScore>

f6 0 0 1 "Sounds/flutec.wav" 0.0 0.0 0.0
f4 0 4096 20  9.0 1.0
f8 0 8193 9  1.0 1.0 90.0
f2 0 32768 7  0.0 32768.0 1.0

f0 604800.0

i 21 0.0 -1.0 
i 20 0.0 -1.0 
i 18 0.0 -1.0 

</CsScore>



</CsoundSynthesizer>
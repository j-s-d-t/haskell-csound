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
ir3 = 1.0
ar0 upsamp k(ir3)
ir4 filelen "Sounds/flutec.wav"
ir5 = 0.0
ir6 = 0.1
ar1 granule ir3, 64.0, 1.0, 1.0, 0.0, 2, 4.0, 0.0, 50.0, ir4, ir5, 50.0, ir6, 50.0, 30.0, 30.0, 0.5, 0.75, 1.5, 1.2, 0.2
ar2 = (0.2 * ar1)
ir9 = 90.0
ir10 = 100.0
ar1 compress ar2, ar0, ir5, ir9, ir9, ir10, ir5, ir5, 0.0
ar0 = (ar1 * 0.8)
arl0 = ar0
ar0 = arl0
 out ar0
endin

</CsInstruments>

<CsScore>

f2 0 0 1 "Sounds/flutec.wav" 0.0 0.0 1.0

f0 604800.0

i 21 0.0 -1.0 
i 20 0.0 -1.0 
i 18 0.0 -1.0 

</CsScore>



</CsoundSynthesizer>
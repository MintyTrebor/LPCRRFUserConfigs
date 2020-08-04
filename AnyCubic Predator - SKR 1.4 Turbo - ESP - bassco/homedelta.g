; homedelta.g
; called to home all towers on a delta printer
;
; generated by RepRapFirmware Configuration Tool v3.1.3-LPC on Sat Jul 25 2020 21:42:14 GMT+0200 (Central European Summer Time)
G91                       ; relative positioning
;*** Slow homing has been configured. Change F180 to F1800 below when your configuration is working
G1 H1 X505 Y505 Z505 F2000 ; move all towers to the high end stopping at the endstops (first pass)
G1 H2 X-5 Y-5 Z-5 F2000   ; go down a few mm
;*** Slow homing has been configured. Change F180 to F360 below when your configuration is working
G1 H1 X10 Y10 Z10 F2000    ; move all towers up once more (second pass)
;;; DISABLE FOR Z HEIGHT DETERMINATION
G1 Z-5 F6000              ; move down a few mm so that the nozzle can be centered
G90                       ; absolute positioning
G1 X0 Y0 F6000            ; move X+Y to the centre
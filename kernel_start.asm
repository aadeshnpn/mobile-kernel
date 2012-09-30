;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Very simple bootloader just for testing.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[BITS 32]

[global start]
[extern _k_main] ; this is in the c file

start:
  call _k_main

  cli  ; stop interrupts
  hlt ; halt the CPU

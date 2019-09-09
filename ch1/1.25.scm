(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

; Unfortunately, Alyssa's procedure is going to run slower.
; The new procedure creates an intermediate big number, and
; operations with those are slow. Contrary, the original expmod
; keeps the numbers small by repeatedely taking remainders.
; Alyssa's expmod calculates the remainder only once.

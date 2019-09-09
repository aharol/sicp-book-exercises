(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (plus-rec a b)
  (if (= a 0)
      b
      (inc (plus-rec (dec a) b))))

; Execution:
; (plus-rec 4 5)
; (inc (plus-rec (dec 4) 5))
; (inc (inc (plus-rec (dec 3) 5)))
; (inc (inc (inc (plus-rec (dec 2) 5))))
; (inc (inc (inc (inc (plus-rec (dec 1) 5)))))
; (inc (inc (inc (inc (plus-rec 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9

(define (plus-iter a b)
  (if (= a 0)
      b
      (plus-iter (dec a) (inc b))))

; Execution:
; (plus-iter 4 5)
; (plus-iter (dec 4) (inc 5))
; (plus-iter (dec 3) (inc 6))
; (plus-iter (dec 2) (inc 7))
; (plus-iter (dec 1) (inc 8))
; (plus-iter 0 9)
; 9


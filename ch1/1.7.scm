; In the definition of the ``good-enough?'' procedure;
; the allowed tolearnce might be not accurate for either
; too small or too large numbers. For the former, the result
; might be not accurate, as the procedure quits early enough.
; In the later case, it may take too long to reach the correct
; value.

(define TOL 1e-3)

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (* TOL guess)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

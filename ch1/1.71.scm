(define (good-enough? guess next-guess)
  (< (abs (- next-guess guess)) (* 1.0e-20 guess)))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
		 x)))

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 16.0e-322)
(sqrt 81.0e-64)
(sqrt 4e-324) ; => 2.222e-162, should be 2e-162
(sqrt 6e-324) ; => 2.222e-162, should be 2.449e-162
(sqrt 1.7e+308) ; => 1.304e+154 is correct, but goes to infinite loop
; with larger numbers

(sqrt (+ (square 3) (square 4)))

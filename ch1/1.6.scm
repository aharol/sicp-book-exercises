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
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (new-sqrt-iter (improve guess x)
                         x)))
(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

; Upon execution of (new-sqrt-iter 9) the interpreter aborts the execution with
; a message ``Aborting!: maximum recursion depth exceeded''. This happens due to the fact that
; in the applicative-order evaluation (the one that Scheme is using by default), any sub-experssion
; is going to be evaluated. As a result, the ``else-clause'' in the definition will be recursively
; called over and over again.

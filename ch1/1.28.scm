(define (expmod base exp m)
  (define (test-non-trivial x n)
    (if (and (not (= x 1))
             (not (= x (- n 1)))
             (= (remainder (square x) n) 1))
        0
        x))
  (cond ((= exp 0) 1)
        ((even? exp) (remainder
                       (square
                         (test-non-trivial
                           (expmod base (/ exp 2) m) m)) m))
        (else
          (remainder (* base (expmod base (- exp 1) m)) m))))

(define (miller-rabin-test n)
  (define (go a)
    (= (expmod a (- n 1) n) 1) )
  (go (+ 1 (random (- n 1)))))

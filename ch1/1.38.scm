(load "1.37.scm")

(define (euler-e k)
  (+ 2
     (cont-frac-iter (lambda (i) 1.0)
                     (lambda (i) (if (= (remainder i 3) 2)
                                     (* 2 (/ (+ i 1) 3))
                                     1.0))
                     k)))

(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (get-factors x factor)
  (define (iter current acc)
    (if (= (remainder current factor) 0)
        (iter (/ current factor) (+ acc 1))
        acc))
  (iter x 0)
  )

;; making use of the Fundamental Theorem of Arithmetic
;; z = 2^a * 3^b is a unique factorization.
(define (car z)
  (get-factors z 2))

(define (cdr z)
  (get-factors z 3))

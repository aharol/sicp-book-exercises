(define (cont-frac-rec n d k)
  (define (iter i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (iter (+ i 1))))))
      (iter 1)
  )

(define (cont-frac-iter n d k)
  (define (iter i result)
    (if (= i 0)
        result
        (iter (- i 1)
              (/ (n i) (+ (d i) result)))))
  (iter k 0))

;; (/ 1. (cont-frac-rec (lambda (i) 1.0) (lambda (i) 1.0) 20)) ; returns ~ 1.6180
;; (/ 1. (cont-frac-iter (lambda (i) 1.0) (lambda (i) 1.0) 20)) ; returns ~ 1.618


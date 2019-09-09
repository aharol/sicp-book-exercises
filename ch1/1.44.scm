(load "1.43.scm")

(define dx 1e-5)

(define (smooth f)
  (lambda (x)
    (/ (+ (f (+ x dx))
          (f x)
          (f (- x dx)))
       3)))

(define (smooth-nfold f n)
  ((repeated smooth n) f))

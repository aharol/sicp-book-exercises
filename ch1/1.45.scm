(load "1.35.scm")
(load "1.43.scm")

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (roots-function x n)
  (lambda (y) (/ x (expt y (- n 1)))))

;; The number of damps is found to be
;; increasing by one for each next power of 2, i.e. equals floor(log2(n)).
;; To change to natural logarithms, use the lagarithm base change rule;
(define (damps n)
  (floor (/ (log n) (log 2))))

(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

(define (roots x n)
  (fixed-point-of-transform
   (roots-function x n)
   (repeated* average-damp (damps n))
   1.0))

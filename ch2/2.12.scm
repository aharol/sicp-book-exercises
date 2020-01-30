(load "2.7.scm")

(define (make-center-percent c p)
  (let ( (w (/ (* c p) 100)) )
    (make-center-width c w)))

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(define (percent i)
  (/ (* (width i) 100) (center i)))

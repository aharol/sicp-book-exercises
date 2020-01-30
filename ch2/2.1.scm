(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (> (* n d) 0)
        (cons (/ (abs n) g) (/ (abs d) g))
        (cons (* -1 (/ (abs n) g)) (/ (abs d) g))
        )))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (abs (* (denom x) (denom y)))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mult-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

;; (define one-half (make-rat 1 2))
(define minus-one-half (make-rat -1 2))
;; (define one-third (make-rat 1 3))

(print-rat (add-rat minus-one-half minus-one-half))

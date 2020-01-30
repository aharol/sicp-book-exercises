(load "2.11.scm")
(load "2.12.scm")

(define (par1 r1 r2)
   (div-interval (mul-interval r1 r2)
                 (add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1))) 
    (div-interval one
                  (add-interval (div-interval one r1)
                                (div-interval one r2)))))

(define R1 (make-interval 1 2))
(define R2 (make-interval 2 3))

(define (print-interval i)
  (newline)
  (display "Interval in raw form: [")
  (display (lower-bound i))
  (display ",")
  (display (upper-bound i))
  (display "]")
  )

(define (print-interval-center-percent i)
  (newline)
  (display "Interval in 'x ± %' form: ")
  (display (center i))
  (display " ± ")
  (display (percent i))
  (display "%")
  )

(newline)
(display "Using the first formula:")
(print-interval (par1 r1 r2))
(print-interval-center-percent (par1 r1 r2))

(newline)
(display "Using the second formula:")
(print-interval (par2 r1 r2))
(print-interval-center-percent (par2 r1 r2))

;; Indeed, Lem is right. The results using two foraulas are different.
;; The problem is when calculating the inverse of the interval while multiplying them
;; the get the division, which should return the identity, i.e. (1 . 1) and 1 ± 0%
(newline)
(display "Division for the first interval:")
(print-interval (div-interval r1 r1))
(print-interval-center-percent (div-interval r1 r1))

(newline)
(display "Division for the second interval:")
(print-interval (div-interval r2 r2))
(print-interval-center-percent (div-interval r2 r2))



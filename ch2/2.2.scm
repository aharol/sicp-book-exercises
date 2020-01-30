(define (make-segment point-1 point-2)
  (cons point-1 point-2))

(define (start-segment line-segment) (car line-segment))
(define (end-segment line-segment) (cdr line-segment))

(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (average x y) (/ (+ x y) 2))

(define (mid-point-segment line-segment)
  (let (
        (x-avg (average
                (x-point (start-segment line-segment))
                (x-point (end-segment line-segment)))
               )
        (y-avg (average
                (y-point (start-segment line-segment))
                (y-point (end-segment line-segment)))
               )
        )
    (make-point x-avg y-avg)))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
  )

(define p1 (make-point 1. 1.))
(define p2 (make-point 2. 2.))

(print-point (mid-point-segment (make-segment p1 p2)))

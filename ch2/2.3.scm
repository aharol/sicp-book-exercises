(load "../ch1/1.42.scm")
(load "2.2.scm")


(define (make-rectangle-v1 lower-left-point upper-right-point)
  (let (
        (x1 (x-point lower-left-point))
        (y1 (y-point lower-left-point))
        (x2 (x-point upper-right-point))
        (y2 (y-point upper-right-point))
        )
    (if (and (< x1 x2)
             (< y1 y2))
        (cons lower-left-point upper-right-point)
        (error "Please, specify lower-left and upper-right points"))
    ))

(define (make-rectangle-v2 point width height)
  (let ((lower-left-point point)
        (upper-right-point (make-point
                            (+ (x-point point) width)
                            (+ (y-point point) height)
                            )))
    (make-rectangle lower-left-point upper-right-point)))

(define (print-rectangle rectangle)
  (newline)
  (display "Width: (")
  (display (get-width rectangle))
  (display "), Height: (")
  (display (get-height rectangle))
  (display ")."))

(define (get-segment coordinate rectangle)
  (let ((x1 ((compose coordinate car) rectangle))
        (x2 ((compose coordinate cdr) rectangle))
        )
    (abs (- x1 x2))
    )
  )

(define (get-height rectangle)
  (get-segment y-point rectangle))

(define (get-width rectangle)
  (get-segment x-point rectangle))
      
(define (perimeter rectangle)
  (* 2
     (+ (get-height rectangle)
        (get-width rectangle))))

(define (area rectangle)
  (* (get-height rectangle)
     (get-width rectangle)))

(define p1 (make-point 1. 1.))
(define p2 (make-point 3. 2.))

(define rec1 (make-rectangle-v1 p1 p2))
(newline)
(display "Rectangle with points: ")
(display (print-rectangle rec1))

(define rec2 (make-rectangle-v2 p1 2. 1.))
(newline)
(display "Rectangle with points: ")
(display (print-rectangle rec2))

(newline)
(display "Area: ") 
(display (area rec1))

(newline)
(display "Perimeter: ") 
(display (perimeter rec1))

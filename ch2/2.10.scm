(load "2.7.scm")

(define (div-interval x y)
  (if (= (upper-bound y)
         (lower-bound y))
      (error "Division by zero error")
      (mul-interval x 
                    (make-interval (/ 1.0 (upper-bound y))
                                   (/ 1.0 (lower-bound y))))))


(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

;;; The golden ration satisfies phi^2 = phi + 1
;;; Deviding both sides by phi gives: phi = 1 + 1/phi
;;; (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)
;;; resulting in 1.6180327868852458

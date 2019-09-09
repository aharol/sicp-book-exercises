(define (cube x)
  (* x x x))

(define (inc x)
  (+ x 1))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))


(define (simpson-integral f a b n)
  (define (y k) (f (+ a (* k h))))
  (define h (/ (- b a) n))
  (define (coef k)
    (cond  ((or (= k 0) (= k n)) 1.0)
           ((even? k) 2.0)
           (else 4.0)))
  (define (term k)
    (* (coef k) (y k)))
  (* (sum term 0 inc n)
     (/ h 3.0)))

(define (identity x)
  x)

(define (inc n)
  (+ n 1))

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (factorial n)
  (if (= n 0)
      1
  (product identity 1 inc n)))

(define (approx-pi n)
  (define (term-pi n)
  (if (even? n)
      (/ (+ n 2) (+ n 1))
      (/ (+ n 1) (+ n 2))))
  (* 4.0 (product-iter term-pi 1 inc n)))

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))


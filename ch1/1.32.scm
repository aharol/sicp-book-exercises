(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (accumulate-rec combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
		(accumulate-rec combiner null-value term (next a) next b))))

(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner (term a) result))))
  (iter a null-value))

(define (product-via-accumulate-rec term a next b)
  (accumulate-rec * 1 term a next b))

(define (sum-via-accumulate-rec term a next b)
  (accumulate-rec + 0 term a next b))

(define (product-via-accumulate-iter term a next b)
  (accumulate-iter * 1 term a next b))

(define (sum-via-accumulate-iter term a next b)
  (accumulate-iter + 0 term a next b))

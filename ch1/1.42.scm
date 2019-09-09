(define (compose f g)
  (lambda (x) (f (g x))))

(define (inc n)
  (+ n 1))

((compose square inc) 6)

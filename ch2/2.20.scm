(define (same-parity x . xs)
  (define (iter items acc)
    (if (null? items)
        acc
        (iter (cdr items) 
              (if (even? (+ (car items) x))
                  (cons (car items) acc)
                  acc))))
  (cons x (reverse (iter xs '()))))


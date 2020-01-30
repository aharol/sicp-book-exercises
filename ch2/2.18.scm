(define (reverse a)
  (define (iter xs ys)
    (if (null? xs)
        ys
        (iter (cdr xs) (cons (car xs) ys))
        )
    )
  (iter a (list)))

(define (last-pair a)
  (if (null? (cdr a))
      a
      (last-pair1 (cdr a))))

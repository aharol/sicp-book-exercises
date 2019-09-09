(define (f-rec n)
  (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (* (f-rec (- n 2)) 2)
                 (* (f-rec (- n 3)) 3)
                 ))))

; (define (f-iter n)
;   (if (< n 3)
;       n
;       (f-iter-helper 2 1 0 (- n 2))))
;
; (define (f-iter-helper n-1 n-2 n-3 count)
;   (if (= count 0)
;       n-1
;       (f-iter-helper (+ n-1 (* n-2 2) (* n-3 3))
;                      n-1
;                      n-2
;                      (- count 1)
;                      )))

(define (f-iter n)
  (define (go n-3 n-2 n-1 count)
    (if (= count 0)
        n-3
        (go n-2
            n-1
            (+ n-1 (* n-2 2) (* n-3 3))
            (- count 1))))
  (go 0 1 2 n))

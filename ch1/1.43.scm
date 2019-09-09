(load "1.42.scm")

(define (repeated f n)
  (define (go g i)
    (if (= i 1)
        g
        (go (compose f f) (- n 1))))
  (go f n))

; a better version similar to exponentiation
(define (repeated* f n)
  (cond ((= n 1) f)
        ((even? n) (let ((ff (repeated* f (/ n 2))))
                     (compose ff ff)))
        (else (compose f (repeated* f (- n 1))))))

((repeated square 2) 5)
((repeated* square 2) 5)


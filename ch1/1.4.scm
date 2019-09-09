; Exercise 1.4.  Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The evaluating model first evaluates the expression in brackets, which returns an operator as value.
; For positive values of b the result is a (+) operator, and a (-) operator otherwise. The definition of the procedure returns a sum of 'a' and an absolute value of 'b'.


; Exercise 1.5.  Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; Then he evaluates the expression

; (test 0 (p))

; The definition of 'p' is recursive. The `applicative-order evaluation` process requires the interpreter to evaluate the operator and operands, applying the resulting procedure to the resulting arguments. This will end up in an infinite evaluation loop of the second parameter to the 'test' combination. In contrast, the `normal-order evaluation` process does not require evaluating all paramters. In this case, the evaluation of 'test' does not reach the second branch, immediately returning 0.

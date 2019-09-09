; Using induction and the definition of the Fibonacci numbers
; it is not difficult to show thta Fib(n) = (\phi^n - \psi^n)/\sqrt(5).
; It is suffice to notice that \psi^2 = \psi + 1 and \phi^n = \phi + 1.
; For the second part, one needs to show that |\phi^n/\sqrt(5) - Fib(n)| < 1/2.
; This follows from the difinition of Fib(n) = \phi^n/\sqrt(5) - \psi^n/\sqrt(5),
; and the following facts:
; 1. |\psi^(n+1)| = |\psi^n|*|\psi| = |\psi^n|* |(1 - \sqrt(5))/2| < |\psi^n|.
; 2. |\psi^0/\sqrt(5)|  < 1/2


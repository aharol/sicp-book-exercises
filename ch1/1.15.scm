; (sine 12.15)
; (p (sine (/ 12.15 3.0)))
; (p (sine 4.05))
; (p (p (sine (/ 4.05 3.0))))
; (p (p (sine 1.35)))
; (p (p (p (sine (/ 1.35 3.0)))))
; (p (p (p (sine 0.45))))
; (p (p (p (p (sine (/ 0.45 3.0))))))
; (p (p (p (p (sine 0.15)))))
; (p (p (p (p (p (sine (/ 0.15 3.0)))))))
; (p (p (p (p (p (sine 0.05))))))
;
; Hence, p is evaluated 5 times.
; Each evaluation of sine requires a fixed space to store the value
; it passes to the next evaluation and a fixed number of next steps.
; Thus, both orders of growth are the same. As we divide the value of angle by
; 3.0 on each evaluation step, the number of evaluations will vary logarithmically with a.
; Hence, O(log_3(a)).

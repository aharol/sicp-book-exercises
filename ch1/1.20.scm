; Normal order evaluation

(gcd 206 40)

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40)))

(if (= (remainder 206 40) 0)                            ; <-- evaluated x1
    40
    (gcd (remainder 206 40)
         (remainder 40 (remainder 206 40))))

(if (= (remainder 40 (remainder 206 40))                ; <-- evaluated x2
       0)
    (remainder 206 40)
    (gcd (remainder 40 (remainder 206 40))
         (remainder (remainder 206 40)
                    (remainder 40 (remainder 206 40)))))

(if (= (remainder (remainder 206 40)                    ; <-- evaluated x4
		  (remainder 40 (remainder 206 40)))
       0)
    (remainder 40 (remainder 206 40))
    (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
	 (remainder (remainder 40 (remainder 206 40))
		    (remainder (remainder 206 40)
			       (remainder 40 (remainder 206 40))))))

(if (= (remainder (remainder 40 (remainder 206 40))     ; <-- evaluated x7
		  (remainder (remainder 206 40)
			     (remainder 40 (remainder 206 40))))
       0)
    (remainder (remainder 206 40)                       ; <-- evaluated x4
	       (remainder 40 (remainder 206 40))) ;
    (gcd (remainder (remainder 40 (remainder 206 40))
		    (remainder (remainder 206 40)
			       (remainder 40 (remainder 206 40))))
	 (remainder (remainder (remainder 206 40)
			       (remainder 40 (remainder 206 40)))
		    (remainder (remainder 40 (remainder 206 40))
			       (remainder (remainder 206 40)
					  (remainder 40
						     (remainder 206 40)))))))

; (remainder a b) is called x18 times in total.

; Applicative order evaluation
(gcd 206 40)

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40)))                        ; <-- evaluated

(if (= 6 0)
    40
    (gcd 6 (remainder 40 6)))                           ; <-- evaluated

(if (= 4 0)
    6
    (gcd 4 (remainder 6 4)))                            ; <-- evaluated

(if (= 2 0)
    4
    (gcd 2 (remainder 4 2)))                            ; <-- evaluated

; (remainder a b) is called x4 times in total.

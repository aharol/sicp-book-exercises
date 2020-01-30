;; i1 = [l1, u1]
;; w1 = (u1 - l1) / 2
;;
;; i2 = [l2, u2]
;; w2 = (u2 - l2) / 2
;;
;; i1 + i2 = [l1 + l2, u1 + u2]
;; w_sum = ( (u1 + u2) - (l1 + l2) ) / 2
;;       = (u1 - l1) / 2 + (u2 - l2) /2
;;       = w1 + w2
;;
;; i1 - i2 = i1 + (- i2) = [l1 - l2, u1 - u2]
;; w_sub = ( (u1 - u2) - (l1 - l2) ) / 2
;;       = (u1 - l1) /2 - (u2 - l2) / 2
;;       = w1 - w2
;;
;; Let   i1 = [1,3]  and   i2 = [0,6]
;; where w1 = 1      and   w2 = 3
;; i1 * i2 = [0, 18] where w_mul = 9
;;
;; Alternatively, i1 = [3,5]  and   i2 = [4,10]
;; where again    w1 = 1      and   w2 = 3
;; i1 * i2 = [12,50]          where w_mul = 19
;;
;; showing the example where for different intervals sharing
;; the same widths the multiplication of the intervals produces
;; different values of the width for the resulting interval.
;; Same is true for the division.

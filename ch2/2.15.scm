;; Indeed, the `par2` is a better program.
;; This can be shown using the substitution model for calculating both
;; `par1` and `par2`:
;; (par1 x y) = (cons (/ (* lx ly) (+ ux uy)) (/ (* ux uy) (+ lx ly)))
;; (par2 x y) = (cons (/ (* lx ly) (+ lx ly)) (/ (* ux uy) (+ ux uy))).

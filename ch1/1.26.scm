; The new procedure evaluates expmod twice on each step,
; resulting in a process that grows O(2^n). This cancels
; the advantage of using the O(log(n)) algorithm, as
; O(2^(log(n))) = O(n).

; The full evaluation tree is
;
; cc(11, 5) = 4
; ├──cc(11, 4) = 4
; │  ├──cc(11, 3) = 4
; │  │  ├──cc(11, 2) = 3
; │  │  │  ├──cc(11, 1) = 1
; │  │  │  │  ├──cc(11, 0) = 0
; │  │  │  │  └──cc(10, 1) = 1
; │  │  │  │     ├──cc(10, 0) = 0
; │  │  │  │     └──cc(9, 1) = 1
; │  │  │  │        ├──cc(9, 0) = 0
; │  │  │  │        └──cc(8, 1) = 1
; │  │  │  │           ├──cc(8, 0) = 0
; │  │  │  │           └──cc(7, 1) = 1
; │  │  │  │              ├──cc(7, 0) = 0
; │  │  │  │              └──cc(6, 1) = 1
; │  │  │  │                 ├──cc(6, 0) = 0
; │  │  │  │                 └──cc(5, 1) = 1
; │  │  │  │                    ├──cc(5, 0) = 0
; │  │  │  │                    └──cc(4, 1) = 1
; │  │  │  │                       ├──cc(4, 0) = 0
; │  │  │  │                       └──cc(3, 1) = 1
; │  │  │  │                          ├──cc(3, 0) = 0
; │  │  │  │                          └──cc(2, 1) = 1
; │  │  │  │                             ├──cc(2, 0) = 0
; │  │  │  │                             └──cc(1, 1) = 1
; │  │  │  │                                ├──cc(1, 0) = 0
; │  │  │  │                                └──cc(0, 1) = 1
; │  │  │  │
; │  │  │  └──cc(6, 2) = 2
; │  │  │     ├──cc(6, 1) = 1
; │  │  │     │  ├──cc(6, 0) = 0
; │  │  │     │  └──cc(5, 1) = 1
; │  │  │     │     ├──cc(5, 0) = 0
; │  │  │     │     └──cc(4, 1) = 1
; │  │  │     │        ├──cc(4, 0) = 0
; │  │  │     │        └──cc(3, 1) = 1
; │  │  │     │           ├──cc(3, 0) = 0
; │  │  │     │           └──cc(2, 1) = 1
; │  │  │     │              ├──cc(2, 0) = 0
; │  │  │     │              └──cc(1, 1) = 1
; │  │  │     │                 ├──cc(1, 0) = 0
; │  │  │     │                 └──cc(0, 1) = 1
; │  │  │     │
; │  │  │     └──cc(1, 2) = 1
; │  │  │        ├──cc(1, 1) = 1
; │  │  │        │  ├──cc(1, 0) = 0
; │  │  │        │  └──cc(0, 1) = 1
; │  │  │        │
; │  │  │        └──cc(-4, 2) = 0
; │  │  │
; │  │  └──cc(1, 3) = 1
; │  │     ├──cc(1, 2) = 1
; │  │     │  ├──cc(1, 1) = 1
; │  │     │  │  ├──cc(1, 0) = 0
; │  │     │  │  └──cc(0, 1) = 1
; │  │     │  │
; │  │     │  └──cc(-4, 2) = 0
; │  │     │
; │  │     └──cc(-9, 3) = 0
; │  │
; │  └──cc(-14, 4) = 0
; │
; └──cc(-39, 5) = 0
;
; Which yields 4 possible coin combinations.

; The order of growth for the space used is O(n+m),
; The order of growth for the number of steps is O(n^m).

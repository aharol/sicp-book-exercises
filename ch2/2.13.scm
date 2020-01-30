;; Let a = [ca - wa, ca + wa] and b = [cb - wb, cb + wb],
;; with percentage tolearance ta = wa*100/ca and tb = wa*100/cb.
;; Then, a * b = [(ca - wa)*(cb - wb), (ca + wa)*(cb + wb)]
;;             = [(ca*cb - ca*wb - cb*wa + wa*wb), (ca*cb + ca*wb + cb*wa + wa*wb)].
;;             ~ [(ca*cb - (ca*wb + cb*wa)), (ca*cb + (ca*wb + cb*wa))].
;; The product wa*wb -> 0 for small tolerance.
;; Let cab = ca*cb and wab = (ca*wb + cb*wa).
;; Then tab = wab*100/cab by definition.
;; Hence, tab = ((ca*wb + cb*wa)*100) / (ca*cb)
;;            = (ca*wb*100)/(ca*cb) + (cb*wa*100)/(ca*cb)
;;            = (wb*100)/(cb) + (wa*100)/ca
;;            = tb + ta

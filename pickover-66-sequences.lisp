(load "util.lisp")

(mapcar #'factor '(2 12 360))
(factor 174636000)
;; oh, it's
;; (* 2)
;; (* 3 2 2)
;; (* 5 3 3 2 2)
;; ? (* 7 5 5 3 3 3 2 2 2 2) == 75600
;; (*  11 7 7 5 5 5 3 3 3 3 2 2 2 2 2) == 174636000


;; balden number sequence is pascal's triangle modulo 3
(defun balden (i)
  (loop for j from 0 to i collect (mod (choose i j) 3)))


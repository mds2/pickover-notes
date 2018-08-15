(defun mean-free-path (radius density)
  (/ 1.0 (* 4.0 pi (sqrt 2.0) density radius radius)))

;; I believe there is a typo in the figure for "typical bacteria radius"
;; it should be 0.0001 ft, not 0.00001 ft

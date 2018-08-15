(defun pow (a b)
  (apply #'* (loop for i from 1 to b collect a)))


;;; This section is for chapter 47 "Time in a bottle"

;; this is the formula given in the text for time to escape
;; a series of n connected bottles with 1 forward passage and
;; M backwards passages each
(defun formula-1 (n M)
  (/ (* 2 (pow (+ M 1) n)) (pow M 2)))


;; This is the same formula but with the bases and exponents swapped.
;; I have some doubts about the formula given in the book as I believe
;; it should yield the simpler case (n^2 or n(n+1)/2) if one sets M to 1,
;; but the formulat given doesn't do that.
(defun formula-2 (n M)
  (/ (* 2 (pow n (+ M 1))) (pow 2 M)))

;; In chapter 47 many time intervals are given in years, but some are in hours
(defun years (hours)
  (/ hours (* 365.0 24)))

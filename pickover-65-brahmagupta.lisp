(defun try-it (x y)
  (- (* x x) (* 92 y y)))

;; (try-it (/ 93 91) (/ 2 91)) yields 1

;; to solve
;; x^2 = 92y^2 + 1
;; let x = a+1
;; 92y^2 + 1 = a^2 + 2a + 1
;; solveable if y = a, and 92 = (/ (+ a 2) a)
;; so 92a = a + 2
;; 91a = 2
;; a = 2 / 91
;; y = a
;; x = (+ 1 (/ 2 91))
;; x = (/ 93 91)
;;
;; good thing common lisp treats rational numbers as first-class datatypes!
;;
;; Challenge : this problem is underdetermined, can you find more solutions?

;; now try x^2 - 157 = y^2 and x^2 + 157 = z^2
;; I think ... ...oh dang, that's not as obvious as I thought.

;; in these notes we investigate the weird 'vampire number'
;; mentioned towards the end of the chapter, we presents a repeating
;; 01 02 04 08 16 32 sequence

;; I know there is a better way to implement
;; "integer division with remainder" in common lisp
;; But this works.
(defun int-div (a b)
  (/ (- a (mod a b)) b))

;; to guess the numbers that you'd divide to get a parasite number
;; represent it as a decimal, and divide 1.0 by it
;; e.g.
;; ( / 1.0 0.01020408163265)
;; gives
;; 98.0

;; then to get the parasite number back, do
;; (int-div 10000000000000000 98)
;; (int-div 10000000000000 98)
;; 102040816326
;; CL-USER> (int-div 10000000000000000 98)
;; 102040816326530
;; CL-USER> (int-div 1000000000000000000 98)
;; 10204081632653061
;; CL-USER> (int-div 100000000000000000000 98)
;; 1020408163265306122
;; CL-USER> (int-div 10000000000000000000000000 98)
;; 102040816326530612244897
;; CL-USER> (int-div 100000000000000000000000000000000 98)
;; 1020408163265306122448979591836
;; CL-USER> (int-div 1000000000000000000000000000000000000000 98)
;; 10204081632653061224489795918367346938
;; CL-USER> (int-div 100000000000000000000000000000000000000000000000 98)
;; 1020408163265306122448979591836734693877551020
;;
;; until it starts to repeat, as above, and then back off
;;
;; CL-USER> (int-div 10000000000000000000000000000000000000000000 98)
;; 102040816326530612244897959183673469387755
;; CL-USER> 
;; CL-USER> (defparameter *my-vampire* (int-div 10000000000000000000000000000000000000000000 98))
;; *MY-VAMPIRE*
;; CL-USER> (* *my-vampire* 5)
;; 510204081632653061224489795918367346938775
;; CL-USER> *my-vampire*
;; 102040816326530612244897959183673469387755
;; CL-USER> (- (* *my-vampire* 5) (/ (- *my-vampire* 5) 10))
;; 500000000000000000000000000000000000000000
;; CL-USER> 

;; it works

;; it makes sense that (/ 1.0 98.0) would give a series of remainders that would
;; exhibit this pattern
;; after all, 98.0 divides into 1.0 once  with remainder 0.02
;;            98.0 divides into 2.0 twice with remainder 0.04
;;            98.0 divides into 4.0    4x with remainder 0.08
;; You get the idea.
;; it's not *that* mysterious

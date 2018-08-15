(defun factor (n)
  (labels ((helper (remaining d accum)
	     (cond ((> d remaining) accum)
		   ((eq (mod remaining d) 0) (helper (/ remaining d) d
						     (cons d accum)))
		   (t (helper remaining (+ d 1) accum)))))
    (helper n 2 '())))

(defun choose (n k)
  (reduce #'* (loop for i from 1 to k collect (/ (+ i (- n k)) i))))

	

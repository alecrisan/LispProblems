(defun getMin(l m)
  (cond
      ((null l) m)
      ((listp (car l)) (getMin (append (car l) (cdr l)) m))
      ((and (numberp (car l)) (< (car l) m)) (getMin (cdr l) (car l)))
      (t (getMin (cdr l) m))
  )
)

(defun getMin_final(l)
      (getMin l 2000)
)
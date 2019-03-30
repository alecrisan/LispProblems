(defun removeEl(l e)
  (cond
   ((null l) nil)
   ((and (atom (car l)) (equal (car l) e)) (removeEl (cdr l) e))
   ((listp (car l)) (cons (removeEl (car l) e) (removeEl (cdr l) e))) 
   (t (cons (car l) (removeEl (cdr l) e)))
  )
)
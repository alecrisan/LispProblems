(defun removeNth(l n p)
  (cond
   ((null l) nil)
   ((= p n) (removeNth (cdr l) n 1))
   ((< p n) (cons (car l) (removeNth (cdr l) n (+ 1 p))))
  )
)

(defun final(l n)
  (removeNth l n 1)
)
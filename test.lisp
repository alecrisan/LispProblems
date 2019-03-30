(defun add_last(l e)
   (append l (list e))
)
(defun invers(l)
  (cond
    ((null l) nil)
    (t (add_last (invers (cdr l)) (car l)))
  )
)

(defun succesor(l)
  (cond 
  ((null l) (list '1))
  ((=(+ (car (invers l)) 1 ) 10) (append (list '0) (succesor(invers(cdr (invers l))))))
  (t (append (list(+ (car(invers l)) 1)) (cdr (invers l))))
  )
)
(defun final(l)
 (invers(succesor l))
)


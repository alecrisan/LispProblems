(defun remove_all(l k)
	(cond
		((and (atom l) (equal l k)) nil)
		((atom l) (list l))
                (t (list (mapcan #'(lambda(l) (remove_all l k)) l)))
	)
) 

(defun remove_final(l k)
  (car (remove_all l k))
)
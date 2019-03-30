(defun valley(l)
	(cond
		((null l) nil)
		((> (car l) (cadr l)) (down l))
	)
)

(defun down(l)
	(cond
		((null (cdr l)) nil)
		((> (car l) (cadr l)) (down (cdr l)))
		((< (car l) (cadr l)) (up l))
	)
)

(defun up(l)
	(cond
		((null (cdr l)) t)
		((< (car l) (cadr l)) (up (cdr l)))
	)
)
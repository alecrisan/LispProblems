(defun deleteNtoN(l p n)
	(cond
		((null l) nil)
		((equal (mod p n) 0) (deleteNtoN (cdr l) (+ p 1) n))
		(t (cons (car l) (deleteNtoN (cdr l) (+ p 1) n))) 
	)
)

(defun delete_final(l n)
	(deleteNtoN l 1 n)
)

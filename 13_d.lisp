
(defun getMax(l m)
       (cond
                ((null l) m)
                ((and (numberp (car l)) (> (car l) m)) (getMax (cdr l) (car l)))
                (t (getMax (cdr l) m))
       )
)

(defun deleteMax(l k)
       (cond
                ((null l) nil)
                ((and (numberp (car l)) (= (car l) (getMax k -9999))) (deleteMax (cdr l) k))
                (t (cons (car l) (deleteMax (cdr l) k)))
       )
)

(defun deleteMax_final(l)
      (deleteMax l l)
)
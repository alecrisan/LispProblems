(defun maxOfTwo(a b)
  (cond
       ((>= a b) a)
       ((< a b) b)
  )
)


(defun left(l n m)
  (cond
       ((null l) nil)
       ((= n (+ 1 m)) nil)
       (t (append (list (car l)) (list (cadr l))
                  (left (cddr l) (+ 1 n) (+ m (cadr l)))))
  )
)

(defun right(l n m)
  (cond
       ((null l) nil)
       ((= n (+ 1 m)) l)
       (t (right (cddr l) (+ 1 n) (+ m (cadr l))))
  )
)

(defun level(l)
  (cond
       ((null l) 0)
       ((= (cadr l) '0) 1)
       (t (+ 1 (maxOfTwo (level (left (cddr l) 0 0))
                         (level (right (cddr l) 0 0)))))
  )
)
       
       
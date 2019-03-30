(defun replaceSuc(l)
  (cond
   ((null l) nil)
   ((and (numberp (car l)) (= (mod (car l) 2) 0)) (cons (+ 1 (car l))
                                                            (replaceSuc (cdr l))))
   ((and (numberp (car l)) (not (= (mod (car l) 2) 0))) (cons (car l) (replaceSuc (cdr l))))
   ((atom (car l)) (cons (car l) (replaceSuc (cdr l))))
   ((listp (car l)) (cons (replaceSuc (car l)) (replaceSuc (cdr l))))
   
  )
)
(defun munte(l)
	(cond 
		( (null l ) nil )
		( ( < ( car l ) ( cadr l ) ) ( urc l ) )
	)
)

(defun urc(l)
	(cond
		( ( null ( cdr l ) ) f )
		( ( < ( car l ) ( cadr l ) ) ( urc ( cdr l ) ) )
		( ( > ( car l ) ( cadr l ) ) ( cobor l ) )
	)
)

(defun cobor(l)
	(cond
		( (null ( cdr l ) ) t )
		( ( > ( car l ) ( cadr l ) ) ( cobor ( cdr l ) ) )
	)
)
(define tax_rate 0.065)
(define (start_pos) (pos -1 0))

(define (pos value subtotal)
  (cond
	((= value 0) 
	 (display "Subtotal: $") (display subtotal) (newline)
	 (display "Tax: $") (display (* tax_rate subtotal)) (newline)
	 (display "Total: $") (display (* (+ tax_rate 1) subtotal))
	 )
	(else
	  (let ((v (read))) ((pos v (+ subtotal v)))
		)
	  )
	)
  )

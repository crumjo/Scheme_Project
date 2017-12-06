(define tax_rate 0.065)
(define (start_pos)
  (display "Scheme Point-of-Sale") (newline)
  (display "Start transaction (exit with 0): ") (newline) (newline)
  (pos -1 0)  
  )

#|
 |This function was found on StackOverflow:
 |https://stackoverflow.com/questions/16302038/float-precision-and-removing-rounding-errors-in-scheme
 |#
(define (round-off z n)
  (let ((power (expt 10 n)))
    (/ (round (* power z)) power)))

(define (pos value subtotal)
  (cond
	((= value 0) 
	 (newline) (display "Subtotal: $") (display (round-off subtotal 2)) (newline)
	 (display "Tax: $") (display (round-off (* tax_rate subtotal) 2)) (newline)
	 (display "Total: $") (display (round-off (* (+ tax_rate 1) subtotal) 2))
	 #t)
	(else
	  (display "Enter value: ")
	  (let ((v (read))) (pos v (+ subtotal v))
		)
	  #t)
	)
  )

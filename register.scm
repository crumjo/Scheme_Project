(define tax_rate 0.065)
(define (sum_tax reg_list)
	(cond
		((null? reg_list) 0)
	(else (+ (car reg_list) (sum_tax (cdr reg_list))))
	)
)
(define value (sum_)


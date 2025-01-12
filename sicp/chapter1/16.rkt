#lang sicp

(#%require rackunit)

(define (solution row col) 
  (cond ((or (= col 1) (= row col)) 1)
        (else (+ (solution (- row 1) (- col 1))
                 (solution (- row 1) col)))))

(check-equal? (solution 1 1) 1)
(check-equal? (solution 3 2) 2)
(check-equal? (solution 4 3) 3)
(check-equal? (solution 5 2) 4)
(check-equal? (solution 5 3) 6)
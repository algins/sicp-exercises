#lang sicp

(#%require rackunit)

(define (f n)
  (cond ((< n 3) n)
        (else (+ (* 1 (f (- n 1)))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))
  
(define (f-iter n)
  (define (inner a b c count)
    (if (= n count)
        a
        (inner (+ (* 1 a) (* 2 b) (* 3 c)) a b (+ 1 count))))
  (if (< n 3)
      n
      (inner 2 1 0 2)))

(check-equal? (f 4) 11)
(check-equal? (f-iter 4) 11)
(check-equal? (f 3) 4)
(check-equal? (f-iter 1) 1)
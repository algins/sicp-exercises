#lang sicp

(#%require rackunit)

(define (fast-expt b n)
  (define (iter b counter a)
    (if (= counter 0)
        a
        (if (even? counter)
            (iter (* b b) (/ counter 2) a)
            (iter b (- counter 1) (* b a)))))
  (iter b n 1))     

(check-equal? (fast-expt 10 0) 1)
(check-equal? (fast-expt 3 20) (expt 3 20))
(check-equal? (fast-expt 2 10) (expt 2 10))
(check-equal? (fast-expt 0 5) 0)
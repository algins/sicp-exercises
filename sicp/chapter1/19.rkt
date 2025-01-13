#lang sicp

(#%require rackunit)

(define (fib n)
  (iter 1 0 0 1 n))
(define (iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (iter a
                   b
                   (+ (* p p) (* q q))
                   (+ (* 2 q p) (* q q))
                   (/ count 2)))
        (else (iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))    

(check-equal? (fib 1) 1)
(check-equal? (fib 2) 1)
(check-equal? (fib 7) 13)
(check-equal? (fib 8) 21)
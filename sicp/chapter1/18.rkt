#lang sicp

(#%require rackunit)

(define (mul-iter a b)
  (define (iter a b product)
    (if (= b 0)
        product
        (if (even? b)
            (iter (double a) (halve b) product)
            (iter a (- b 1) (+ a product)))))
  (iter a b 0))

(define (even? n)
  (= (remainder n 2) 0))

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))    

(check-equal? (mul-iter 1 1) 1)
(check-equal? (mul-iter 40 30) (* 40 30))
(check-equal? (mul-iter 5 0) 0)
(check-equal? (mul-iter 5 15) (* 5 15))
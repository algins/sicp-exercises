#lang sicp

(#%require rackunit)

(define (lower-bound interval)
  (car interval))

(define (upper-bound interval)
  (cdr interval))

(define (make-interval a b)
  (cons a b))

(define lower 5)
(define upper 10)
(define interval (make-interval lower upper))

(check-equal? (lower-bound interval) lower)
(check-equal? (upper-bound interval) upper)
#lang sicp

(define a 15)
(define b 10)
(define c 5)
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))

(cond
  ((and (> a b)(> b c)) (sum-of-squares a b))
  ((and (> a c)(> c b)) (sum-of-squares a c))
  ((and (> b c)(> c a)) (sum-of-squares b c)))
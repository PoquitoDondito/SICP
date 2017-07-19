#lang sicp

(define a 15)
(define b 10)
(define c 20)
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))

(cond
  ((and (> a b)(> b c)) (sum-of-squares a b))
  ((and (> b c)(> b c)) (sum-of-squares a b))
  ((and (> a c)(> c b)) (sum-of-squares a c))
  ((and (> c a)(> c b)) (sum-of-squares a c))
  ((and (> c b)(> c a)) (sum-of-squares b c))
  ((and (> b c)(> c a)) (sum-of-squares b c)))
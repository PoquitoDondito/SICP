#lang sicp

(define a 5)
(define b 10)
(define c 15)
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))

(cond
  ((and (or (> a b)(> a c))(or (> b a)(> b c))) (sum-of-squares a b))
  ((and (or (> a b)(> a c))(or (> c a)(> c b))) (sum-of-squares a c))
  ((and (or (> b a)(> b c))(or (> c a)(> c b))) (sum-of-squares b c)))
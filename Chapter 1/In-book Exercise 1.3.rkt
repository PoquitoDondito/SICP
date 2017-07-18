#lang sicp

(define a 5)
(define b 10)
(define c 15)
(define (square x) (* x x))


(if (not (and (< a b)(< a c))) #t #f)
(if (not (and (< b a)(< b c))) #t #f)
(if (not (and (< c a)(< c b))) #t #f)


#lang sicp

(define (square x) (* x x))
(define (average x y) 
  (/ (+ x y) 2))
(define (sqrt x) 
  (sqrt-iter 1.0 x))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (improve guess x)
  (average guess (/ x guess)))
(sqrt 4)

; This is inadequate for small numbers because if a number is smaller than .001, it will have too high a margin of error.
; For example, if we try to find the sqrt of .000001, it will only check until the guess is within < 0.001 difference.

; With larger numbers, however, it does not fully calculate the more precise decimal places.
; For example, the sqrt of 1000000 is 1000.0000000000118, even though it should be exactly 1000
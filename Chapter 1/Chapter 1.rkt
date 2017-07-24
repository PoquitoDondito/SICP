#lang sicp

; 1.1.1

486
(+ 137 349)
(- 1000 334)
(* 5 99)
(/ 10 5)
(+ 2.7 10)
(+ 21 35 12 7)
(* 25 4 12)
(+ (* 3 5) (- 10 6))
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

; 1.1.2

(define size 2)
size
(* 5 size)
(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))
(define circumference (* 2 pi radius))
circumference

; 1.1.3

(* (+ 2(* 4 6))
   (+ 3 5 7))

; 1.1.4

(define (square x) (* x x))
(square 21)
(square (+ 2 5))
(square (square 3))
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(f 5)

; 1.1.5

(f 5)
(sum-of-squares (+ 5 1) (* 5 2))
(+ (square (+ 5 1))(square (* 5 2)))

; 1.1.6

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

; Alternatively:
;(define (abs x)
;  (cond ((< x 0) (- x))
;        (else x)))

; Alternatively:
;(define (abs3 x)
;  (if (< x 0)
;      (- x)
;      x))

(define (>= x y)
  (or (> x y) (= x y)))

; Alternatively:
;(define (>= x y)
;  (not (< x y)))

; 1.1.7

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2)(sqrt 3)))
(square (sqrt 1000))

;1.1.8

;Considering only what these return, they are indistinguishable.
;(define (square x)(* x x))
;(define (square x)
; (exp (double (log x))))
;(define (double x) (+ x x))

;(define (square x)(* x x))
;(define (square y)(* y y))

;(define (sqrt x)
;  (define (good-enough? guess x)
;    (< (abs (- (square guess) x)) 0.001))
;  (define (improve guess x)
;    (average guess (/ x guess)))
;  (define (sqrt-iter guess x)
;    (if (good-enough? guess x)
;        guess
;        (sqrt-iter (improve guess x) x)))
;  (sqrt-iter 1.0 x))

;(define (sqrt x)
;  (define (good-enough? guess)
;    (< (abs (- (square guess) x)) 0.001))
;  (define (improve guess)
;    (average guess (/ x guess)))
;  (define (sqrt-iter guess)
;    (if (good-enough? guess)
;        guess
;        (sqrt-iter (improve guess))))
;  (sqrt-iter 1.0))
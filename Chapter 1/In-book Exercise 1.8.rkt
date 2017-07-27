#lang sicp
(define (square x) (* x x))
(define (cube-root x)
  (cube-root-iter 0.0 1.0 x))
(define (average3 a b c)
  (/ (+ a b c) 3))

(define (cube-root-iter lastGuess currentGuess x)
  (if (good-enough? lastGuess currentGuess)
      currentGuess
      (cube-root-iter currentGuess (improve currentGuess x) x)))

(define (good-enough? lastGuess currentGuess)
  (< (abs (- currentGuess lastGuess)) (abs (* currentGuess 0.001))))

; (x/y^2 +2y)/3
; a=x/y^2
(define (improve guess x)
  (define a (/ x (square guess)))
  (average3 a guess guess))

 (cube-root 1) 
 (cube-root -8) 
 (cube-root 27) 
 (cube-root -1000) 
 (cube-root 1e-30)
 (cube-root 1e60)
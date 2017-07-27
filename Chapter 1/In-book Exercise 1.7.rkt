#lang racket
(define (square x) (* x x))
(define (average x y) 
  (/ (+ x y) 2))
(define (sqrt x) 
  (sqrt-iter 1.0 x))

(define (sqrt-better x) 
  (sqrt-iter-better 0.0 1.0 x))

;Exercise 1.7: The good-enough? test used in computing square roots will not be very effective
;for finding the square roots of very small numbers. Also, in real computers, arithmetic operations
;are almost always performed with limited precision. This makes our test inadequate for very large
;numbers. Explain these statements, with examples showing how the test fails for small and large numbers.
;An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration
;to the next and to stop when the change is a very small fraction of the guess. Design a square-root
;procedure that uses this kind of end test. Does this work better for small and large numbers?

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt-iter-better lastGuess currentGuess x)
  (println (format "sqrt-iter-better lastGuess: ~s, currentGuess: ~s" lastGuess currentGuess))
  (if (good-enough-better? lastGuess currentGuess)
      currentGuess
      (sqrt-iter-better currentGuess (improve currentGuess x) x)))


(define (good-enough-better? lastGuess currentGuess)
  ;(println (format "good-enough-better lastGuess: ~s, currentGuess: ~s, difference: ~s" lastGuess currentGuess (- lastGuess currentGuess)))
  (< (abs (- lastGuess currentGuess)) 0.00001))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (improve guess x)
  (average guess (/ x guess)))

(define sqnum (square 0.0004))

(define (check x)
  (define sqrtval (sqrt x))
  (define sqbval (sqrt-better x))
  
  (define delta (- sqrtval sqbval))
  (println (format "sqrt: ~s, sqrt-better: ~s, delta: ~s" sqrtval sqbval delta))
  delta)
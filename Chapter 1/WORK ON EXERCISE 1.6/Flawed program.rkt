#lang sicp

(define (new-if predicate 
                then-clause 
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (square x) (* x x))

(define (average x y) 
  (/ (+ x y) 2))

(define (sqrt x) 
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(sqrt 4)

;The problem is that once it gets to sqrt-iter, sqrt-iter stays in the stack while adding improve to the stack.
;This is because in the definition of sqrt-iter, it calls on itself in the alternative, forcing it to constantly evaluate itself
;until it runs out of memory
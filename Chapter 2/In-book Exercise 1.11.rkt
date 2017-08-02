#lang sicp

; f(n) = n if n < 3
; f(n) = f(n-1)

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))
(f 3)
(define (f-iter n)
  (f-iter-helper 0 1 2 n))
(define (f-iter-helper a b c count)
  (if (= count 0)
      a
      (f-iter-helper b c (+ c (* 2 b) (* 3 a)) (- count 1))))
(f-iter 10)
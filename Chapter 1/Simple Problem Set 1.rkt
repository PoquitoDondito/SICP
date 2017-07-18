#lang sicp

; Exercise 1 (same with the first inbook one, I did these on paper before checking them in scheme)
(- 8 9)
;-1
(> 3.7 4.4)
;#f
(- (if (> 3 4) 7 10) (/ 16 10))
;8.4
(define b 13)
13
;13
b
;13
>
;#<procedure:>>
(define square (lambda (x) (* x x)))
square
;#<procedure:square>
(square 13)
;169
(square b)
;169
(square (square (/ b 1.3)))
;10000.0
(define multiply-by-itself square)
(multiply-by-itself b)
;169
(define a b)
(= a b)
;#t
(if (= (* b a) (square 13))
    (< a b)
    (- a b))
;#f
(cond ((>= a 2) b)
      ((< (square b) (multiply-by-itself a))(/ 1 0))
      (else (abs (- (square a) b))))
;13
#lang sicp
;midpoint finder
(define (average-X x1 x2) (/ (+ x1 x2) 2))
(define (average-Y y1 y2) (/ (+ y1 y2) 2))
(average-X -6 6)(average-Y 8 -7)

;find second point when given one and the midpoint
(define (find-x first-point-x mid-x) (- (* mid-x 2) first-point-x))
(define (find-y first-point-y mid-y) (- (* mid-y 2) first-point-y))
(find-x -7 7)(find-y 5 3)
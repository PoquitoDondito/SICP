#lang sicp

(define (p) (p))

(define (test x y) 
  (if (= x 0) 0 y))

(test 0 (p))

; Applicative-order evaluation returns nothing.
     ;With this method, the subexpressions in (test 0 (p)) are both evaluated first, and while 0 is valid,
     ;p calls for the definition, which is p, and is then stuck in a loop and does not progress.
; Normal-order evaluation returns 0
     ;In Normal-order evaluation, it does not evaluate the sub expressions first, and instead runs test calling on those subexpressions if needed.
     ;This means that it first evaluates (= x 0), and since it is true, it then ONLY evaluates the consequent of the expression.

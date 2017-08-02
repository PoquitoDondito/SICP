#lang sicp

(define (pascal row col)
  (if (or (= col row)(= col 1))
      1
      (+
       (pascal (- row 1)(- col 1))
       (pascal (- row 1) col))))
       
(pascal 1 1)
(pascal 3 3)
(pascal 3 2)
(pascal 4 2)
(pascal 5 3)
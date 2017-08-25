;; Exercise 1.21

(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b) (= (remainder b a) 0))

(smallest-divisor 199)   ; value 199
(smallest-divisor 1999)  ; value 1999
(smallest-divisor 19999) ; value 7
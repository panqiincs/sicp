;; Exercise 1.7
;  For very small numbers, the result will be very approximate to sqrt(0.001).
;  For very big numbers, the program will not end.
;
;  One practical solution: when the absolute change rate between two guesses 
;  is very small, then the guess is good enough.

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (change-rate old new)
  (abs (/ (- new old) old)))

(define (good-enough? old new)
  (< (change-rate old new) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 3)

(sqrt 0.000001)

(sqrt 10000000000000000000000)

;; Exercise 1.7
;  For very small numbers, the result will be very approximate to sqrt(0.001).
;  For very big numbers, the program will not end.
;
;  One practical solution: when the absolute change rate between two guesses 
;  is very small, then the guess is good enough.

(define (sqrt-iter old-guess new-guess x)
  (if (good-enough? old-guess new-guess)
      new-guess
      (sqrt-iter new-guess (improve new-guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (change-rate old new)
  (abs (/ (- new old) old)))

(define (good-enough? old-guess new-guess)
  (< (change-rate old-guess new-guess) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 0.9 1.0 x))

(sqrt 3)

(sqrt 0.000001)

(sqrt 10000000000000000000000)

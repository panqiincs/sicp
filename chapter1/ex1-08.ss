;; Exercise 1.8

(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (cbrt-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) 
        (* 2 guess)) 
     3))

(define (change-rate old new)
  (abs (/ (- new old) old)))

(define (good-enough? old new)
  (< (change-rate old new) 0.001))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(cbrt 3)

(cbrt 0.000001)

(cbrt 10000000000000000000000)

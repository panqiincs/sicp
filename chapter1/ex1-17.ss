;; Exercise 1.17

(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (mul x y) (mul-iter 0 x y))
(define (mul-iter s x y)
  (if (= x 1)
      (+ s y)
      (if (even? x)
          (mul-iter s (halve x) (double y))
          (mul-iter (+ s y) (halve (- x 1)) (double y)))))

(mul 31 5)
(mul 7 15)
(mul 1 1)

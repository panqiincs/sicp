;; Exercise 1.16

(define (exp b n)
  (exp-iter 1 b n))
(define (square x) (* x x))
(define (exp-iter a b n)
  (if (= n 0)
      a
      (if (even? n)
          (exp-iter a (square b) (/ n 2))
          (exp-iter (* b a) (square b) (/ (- n 1) 2)))))

(exp 2 0)
(exp 2 1)
(exp 2 2)
(exp 2 3)
(exp 2 10)
(exp 2 31)

;; Exercise 1.5
;
;  Normal-Order Evaluation:
;  it will not evaluate the operands until their values are needed.
;  The program returns 0.
;
;  Application-Order Evaluation:
;  all the arguments to procedures are evaluated when the procedure
;  is applied.
;  The program never ends until memory runs out.
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))


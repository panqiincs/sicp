;; Exercise 1.6
;  The program never ends until memory runs out.
;
;  Scheme uses Application-Order Evaluation, all the arguments are evaluated 
;  when the procedure is applied.
;
;  Unlike if, it is a built-in operator, one of then-clause and else-clause will
;  be ignored according to the value of predicate. 
;
;  New-if is a compound procedure, so sqrt-iter will be evaluated recursively 
;  until memory runs out.
;
;  For example, below gives 0
(if (= 0 0) 0 (/ 2 0))

;  and below reports an error
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 0 0) 0 (/ 2 0))


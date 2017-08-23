;; Exercise 1.1
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
  b
  a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))


;; Exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))


;; Exercise 1.3
(define (smaller a b) 
  (if (< a b) 
    a 
    b))

(define (smallest a b c) 
  (smaller a (smaller b c)))

(define (sum a b c) 
  (+ a b c))

(define (sum-of-bigger-two a b c)
  (- (sum a b c) 
     (smallest a b c)))

(sum-of-bigger-two 1 8 3)
(sum-of-bigger-two 2 2 2)
(sum-of-bigger-two -1 0 3)

; This answer I found on the Internet may be more elegant:
(define (sum-of-greater-two a b c)
    (if (and (<= a b) (<= a c))
    (+ b c)
    (sum-of-greater-two b c a)))

(sum-of-greater-two 1 8 3)
(sum-of-greater-two 2 2 2)
(sum-of-greater-two -1 0 3)


;; Exercise 1.4
;  the behavior of the combination below is: a + |b|
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


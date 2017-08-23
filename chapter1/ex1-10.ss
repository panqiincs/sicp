;; Exercise 1.10

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

(A 1 10)
; value 1024
(A 2 4)
; value 65536
(A 3 3)
; value 65536


(define (f n) (A 0 n))    ; = 2n
(define (g n) (A 1 n))    ; = 2^n
(define (h n) (A 2 n))    ; (h 1) = 2, (h, 2) = 2^2, (h, 3) = 2^2^2 ...
(define (k n) (* 5 n n))  ; 5n^2

(f 5)
(g 1)
(g 2)
(g 3)
(g 4)
(h 1)
(h 2)
(h 3)
(h 4)


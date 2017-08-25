;; Exercise 1.22
(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b) (= (remainder b a) 0))
(define (square x) (* x x))
(define (prime? n)
  (and (> n 1) (= n (smallest-divisor n))))

(define (next-check n)
  (cond ((< n 2) 2)
        ((even? n) (+ n 1))
        (else (+ n 2))))

; print version, print all prime numbers found
(define (search-for-primes start count)
  (cond ((= count 0) (display " are primes."))
        ((prime? start)
         (newline)
         (display start)
         (search-for-primes (next-check start) (- count 1)))
        (else (search-for-primes (next-check start) count))))

; no print version, used for measure time
(define (search-for-primes-no-print start count)
  (cond ((= count 0) (display start))
        ((prime? start) 
         (search-for-primes-no-print (next-check start) (- count 1)))
        (else (search-for-primes-no-print (next-check start) count))))

; By running the following code, we can get the elapsed time of each step and
; the last prime each step found, thus we can get the average time of each 
; test, and the ratio between them are:
; 2.41, 2.60, 2.51, 2.75, 2.61, 2.57, 3.31, 2.53 
; not too far from sqrt(10) = 3.16.
;
; So according to my result, it obey the O(sqrt(10)) rule.
(real-time-clock)
(search-for-primes-no-print 10000 100)
(real-time-clock)
(search-for-primes-no-print 100000 100)
(real-time-clock)
(search-for-primes-no-print 1000000 100)
(real-time-clock)
(search-for-primes-no-print 10000000 100)
(real-time-clock)
(search-for-primes-no-print 100000000 100)
(real-time-clock)
(search-for-primes-no-print 1000000000 100)
(real-time-clock)
(search-for-primes-no-print 10000000000 100)
(real-time-clock)
(search-for-primes-no-print 100000000000 100)
(real-time-clock)
(search-for-primes-no-print 1000000000000 100)
(real-time-clock)


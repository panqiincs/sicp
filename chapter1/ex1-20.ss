;; Exercise 1.20

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))


; Normal-Order Evaluation:
;
; (if (= 40 0)
;   206
;   (gcd 40 (remainder 206 40)))
; value:
; (gcd 40 (remainder 206 40))
; 
; (if (= (remainder 206 40) 0)                 ;; 1
;   40
;   (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))
; value:
; (gcd (remainder 206 40) (remainder 40 (remainder 206 40)))
;
; (if (= (remainder 40 (remainder 206 40)) 0)  ;; 2
;   (remainder 206 40)
;   (gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
; value:
; (gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
;                      ||                                              ||
; let                  aa -- 2                                         bb -- 4
;
; (if (= bb 0)                                 ;; 4
;   aa
;   (gcd bb (remainder aa bb)))
; (gcd bb (remainder aa bb))
;
; (if (= (remainder aa bb) 0)                  ;; 1 + 2 + 4 = 7
;   bb
;   (gcd (remainder aa bb) (remainder bb (remainder aa bb))))
; value:
; bb                                           ;; 4
; 
; 1 + 2 + 4 + 7 + 4 = 18 times in total
;
;
; Application-Order Evaluation:
;
; (gcd 206 40)
; (if (= 40 0)
;   206
;   (gcd 40 (remainder 206 40)))
; value: (gcd 40 6)
; (if (= 6 0)
;   40
;   (gcd 6 (remainder 40 6)))
; value: (gcd 6 4)
; (if (= 4 0)
;   6
;   (gcd 4 (remainder 6 4)))
; value: (gcd 4 2)
; (if (= 2 0)
;   4
;   (gcd 2 (remainder 4 2)))
; value: (gcd 2 0)
; (if (= 0 0)
;   2
;   ...)
; value: 2
;
; 4 times in total

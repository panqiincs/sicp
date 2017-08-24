;; Exercise 1.12
; (pascal n r) is the nth(1<n<=r) element of rth row
(define (pascal n r)
  (if (or (= n 1) (= n r))
      1
      (+ (pascal (- n 1) (- r 1)) (pascal n (- r 1)))))

(pascal 1 1)
(pascal 1 2)
(pascal 2 2)
(pascal 1 3)
(pascal 2 3)
(pascal 3 3)
(pascal 1 4)
(pascal 2 4)
(pascal 3 4)
(pascal 4 4)
(pascal 1 5)
(pascal 2 5)
(pascal 3 5)
(pascal 4 5)
(pascal 5 5)


;; Exercise 1.15
(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sin (/ angle 3.0)))))

(sine 12.15)

; 12.15 / 3 = 4.05
;  4.05 / 3 = 1.35
;  1.35 / 3 = 0.45
;  0.45 / 3 = 0.15
;  0.15 / 3 = 0.05 < 0.1
;
;  So procedure p is applied 5 times when (sine 12.15) is evaluated.
;
;  The order of growth in space and time is O(log(a)).


(define (make-segment segment start-point end-point)
  (cons start-point end-point))
  
(define (start-segment x)
  (car x))
  
(define (end-segment x)
  (cdr x))
  
(define (make-point x y)
  (cons x y))
  
(define (x-point x)
  (car x))
  
(define (y-point x)
  (cdr x))
  
1 ]=> (define a (make-segment (make-point 1 3) (make-point 4 5)))
;Value: a
1 ]=> a
;Value 3: ((1 . 3) 4 . 5)
1 ]=> (start-segment a)
;Value 4: (1 . 3)
1 ]=> (end-segment a)
;Value 5: (4 . 5)
1 ]=> (x-point (start-segment a))
;Value: 1

(define (midpoint-segment x)
  (let ((a (start-segment x))
        (b (end-segment x)))
  (make-point (/ (+ (x-point a)
                    (x-point b))
                 2)
              (/ (+ (y-point a)
                    (y-point b))
                 2))))
                 
  1 ]=> (midpoint-segment a)
  ;Value 6: (5/2 . 4)

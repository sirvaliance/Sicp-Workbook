(define (square x) (* x x))

(define (sum-sqr x y ) 
  (+ (square x) (square y)))

(define (foo x y z)
  (cond ((and (>= x y) (>= z y)) (sum-sqr x z))
        ((and (>= y x) (>= z x)) (sum-sqr y z))
        ((and (>= x z) (>= y z)) (sum-sqr x y))))
        
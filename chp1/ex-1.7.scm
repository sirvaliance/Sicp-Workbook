(define (square x) 
  (* x x))

(define (average x y) 
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (good-enough-v2? guess x)
  (< (abs (- (square guess) x)) (* guess .001)))

(define (sqrt-iter guess x)
  (if (good-enough-v2? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

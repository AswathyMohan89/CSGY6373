; function within a function
(define (sum-of-squares x y)
    (define (square a)
        (* a a))
    (define (sum b c)
        (+ b c))
    (sum (square x) (square y)))

; using outer symbols
(define (assert-equal a b)
    (define (print-error)
        (display a)
        (display " is not equal to ")
        (display b)
        (newline))
    ; if a != b, then print error else null
    (if (not (equal? a b)) (print-error) null))

; create a list containing the area and circumference
; given a certain radius r
(define (circle-details r)
    (define pi 3.14)
    (define (area) (round (* pi r r)))
    (define (circum) (round (* 2 pi r)))
    (list (area) (circum)))

; returning functions
(define (make-add-one)
    (define (inc x) (+ 1 x))
    inc)
; to call the function, we do the following
(define myfn (make-add-one))
(myfn 2) ; this outputs 3

; closures
(define (make-add-x x)
    (define (add-x y) (+ x y))
    add-x)

(define add-3 (make-add-x 3))
(add-3 4) ; should output 7

; uses of closures
(define (make-counter)
    (define value 0)
    (define (counter)
        (set! value (+ value 1))
        value)
    counter)

; uses of closures to create a class
(define (make-balance)
    (define value 0)
    (define (bal method)
        (define (add-method x)
            (set! value (+ value x)))
        (define (get-method) value)
        (if (equal? method "add")
            add-method
            get-method))
    bal)

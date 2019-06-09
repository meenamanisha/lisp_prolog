;   Name: Manisha Meena
;   ID:2015KUCP1046
;   Swapping in 1d array


(defvar i)
(defvar c)
(defvar n)
(defvar ar)

(setq ar(make-array '(5) 
    :initial-contents '(0 1 2 3 4))
)
(princ "Original array : ") (princ ar) 
(setq n(length ar))

(loop for i from 0 to (- (/ n 2) 1)
    do(progn        
        (setq c (aref ar (- n i 1)))         
        (setf (aref ar (- n i 1)) (aref ar i))
        (setf (aref ar i) c )
    )
)
(format t "~%Reversed array : ") (princ ar)

(loop for i from 0 to (- n 2)
    do(progn 
        (setq c (aref ar (+ i 1)))        
        (setf (aref ar (+ i 1)) (aref ar i))
        (setf (aref ar i) c )
        (setf i (+ i 1))
    )
)
(format t "~%Swapped array  : ") (princ ar) 




(setq ar( make-array '(10) 
    :initial-contents '(34 1 56 8 2 1 5 7 8 0))
)

(princ "Original array : ") (princ ar) 

(setq n (length ar) )
(loop for i from 0 to (- n 1)
    do(loop for j from 0 to i
          do(progn                                
             (setq c (aref ar j))
             (if (< (aref ar i) c) 
                (progn
                   (setf (aref ar j) (aref ar i))
                   (setf (aref ar i) c)
                 )  
            )
          )       
    )
)
(format t "~%Sorted array  :  ") (princ ar) 

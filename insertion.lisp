(setq ar( make-array '(10) 
    :initial-contents '(34 1 56 8 2 1 5 7 8 0))
)
(princ "Original array : ") (princ ar) 

(setq n (length ar) )

(loop for i from 1 to (- n 1)
    do(progn
        (setq j (- i 1))                  
        (setq c (aref ar i))        
        (loop while (and (>= j 0) (> (aref ar j) c) )
            do(progn                            
              (setf (aref ar ( + j 1)) (aref ar j))
              (setq j (- j 1))              
            )                                
         )
         (setf (aref ar (+ j 1)) c)          
    )
)

(format t "~%Sorted array  :  ") (princ ar) 

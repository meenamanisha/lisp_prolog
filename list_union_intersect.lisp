(setq x'())
(setq y'())

(defun intersect (a b)
    (if (eq a () )
            (print x)            
        (if(member (car a) b)
            (progn
                (push (car a) x)                
               (intersect (cdr a) b)
            )                                       
            (intersect (cdr a) b ) )  
     )                
)                       


(defun diff(a b)
    (if (eq a())
        (print y)
       (progn
          (push  (- (car a) (car b)) y)   
          (diff (cdr a) (cdr b))
        )  
     )   
)




(defun union1 (a b)
    (setq z (remove-duplicates ( append a b))   )
    (print z)
)




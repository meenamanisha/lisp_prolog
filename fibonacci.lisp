( defun fib(n)
    (let ((a 0) (b 1))
        ( if(= n 0)
            (format t "no output")
            (progn 
                (if (< n 3)
                    (progn                        
                        (format t "~d~%" a)
                        (if(= n 2)  (format t "~d~%" b) )
                    )
                  (loop for i from 1 to n
                    do(progn
                        (format t "~d~%" a)
                        (setq b (+ a b))                        
                        (setq a (- b a))
                    )
                  )
                )
            )
         )
    )
)
;(fib 10)

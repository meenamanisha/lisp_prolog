;Name : Vinita Kumari
;Id   : 2015kucp1010


;**********Record operations***************

(defvar n)
(setq i 0)
(princ "Do you want to add any data (y or n) :")
(setq check(read-line))
(if (string= check "y")
    (progn
(princ "Enter how many record you want to add : ") 
(setq n(read))

;************INSERTION**************

(with-open-file (stream "studentRecord.txt" :direction :output )
	(format stream "~s" (list 0 "NAME" "ROLL NUMBER" "COLLEGE NAME" "BRANCH"))
	(terpri stream)
	(loop 
	    (setq i (+ i 1))
		(princ "Enter name: ")
		(setq name (read-line))
		
		(princ "Enter Roll number: ")
		(setq roll (read-line))
		
		(princ "Enter college name: ")
		(setq college (read-line))				
		
		(princ "Enter Branch: ")
		(setq branch (read-line))
		
		(format stream "~s" (list i name roll college branch))
		(terpri stream)
		(terpri)        
	   (when (>= i n) (return i))
	)
)
))

;***********DELETION***************

;here primary key is roll_no  and it should be number
(princ "Do you want to delete any data (y or n) :")
(setq check(read-line))
(if (string= check "y")
    (progn
      (princ "Enter roll number to be deleted: ")
      (setq roll_no (read-line))
      (setq flag 0)
      (with-open-file (stream "temp.txt" :direction :output :if-exists :overwrite :if-does-not-exist :create)
	    (let ((in (open "studentRecord.txt" :if-does-not-exist nil)))
	    (when in
		    (loop for line = (read in nil)		  
		       while line do (setq x line)
						(cond ((string= roll_no (nth 2 x))
								(setq flag 1)
								(princ "The values deleted are: ")
								(write x)
								(terpri)
							)
							((string/= roll_no (nth 2 x))
								(format stream "~s" x)
								(terpri stream)
							)
						)
		    )
		  (cond ((= flag 0)
				(write "No such roll number in the record")
				(terpri)))
		(delete-file in)
		(close in))		
	    )	 
      )
      (rename-file "temp.txt" "studentRecord.txt")
    )
)

;**************MODIFICATION***************

(princ "Do you want to modify any data (y or n) :")
(setq check(read-line))
(if (string= check "y")
    (progn
       (princ "Enter roll number to be modified: ")
       (setq roll_no (read-line))
       (setq flag 0)
       (with-open-file (stream "temp.txt" :direction :output :if-exists :overwrite :if-does-not-exist :create)
	        
	        (let ((in (open "studentRecord.txt" :if-does-not-exist nil)))
 	          (when in
		        (loop for line = (read in nil)
	           
		           while line do (setq x line)		                    
						(cond ((string= roll_no (nth 2 x))
								(setq flag 1)
								(princ "The values to be modified are: ")
								(write x)
								(terpri)
								
								(princ "Enter name: ")
								(setq name (read-line))
								
								(princ "Enter Roll number: ")
								(setq roll (read-line))
								
								(princ "Enter college name: ")
								(setq college (read-line))
								
								(princ "Enter Branch: ")
								(setq branch (read-line))
								
								(format stream "~s" (list (nth 0 x) name roll college branch))
								(terpri stream)
								(terpri)
							)
							((string/= roll_no (nth 2 x))
							(format stream "~s" x)
							(terpri stream))
						)
		       )
		       (cond ((= flag 0)
			   (write "No such roll number in the record")
			   (terpri)))
		       (delete-file stream)
		       (close in))
	        )	
        )
     (rename-file "temp.txt" "studentRecord.txt")
    )
)    
  
	        (let ((in (open "studentRecord.txt" :if-does-not-exist nil)))
 	          (when in
		        (loop for line = (read in nil)
	           
		           while line do (setq x line)
		           (print x)
		         )
		        )  
		      )
		        

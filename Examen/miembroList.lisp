(defun miembroL (elem lista)
  (if (not lista)
   nil
   (if (equalp (car lista) elem)
      t
     (miembroL elem (cdr lista))
   )
  )    
)

(print (miembroL (read) (read) ) )
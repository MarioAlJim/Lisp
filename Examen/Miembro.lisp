(defun miembro ( elemento lista)
  (if (not lista)
   NIL
   (if (= (car lista) elemento)
      T
     (miembro elemento (cdr lista))
   )
  )    
)

;(print (miembro (read) (read) ) )
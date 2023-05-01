(defun palindromo (lista) 
 (setq lista2 (reverse lista))
 (if (equal lista lista2)
   T
   NIL
 )
)


(print (palindromo (read)))
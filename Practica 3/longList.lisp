(defun longitudList (lista &optional (l 0))
  (if(null lista)
   l
   (longitudList (cdr lista) (1+ l))
  )
)


;(print (longitudList (read)))
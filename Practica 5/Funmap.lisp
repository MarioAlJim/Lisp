(defun Funmapcar (fun list)
  (if (not list) '() 
     (cons (funcall fun (car list)) (Funmapcar fun (cdr list)))
   )
)


(defun mimapcar (funcion lista &resultado)
  (if (not lista)
      resultado
      (mimapcar funcion (cdr lista) (append resultado (list (funcall funcion (car lista)))))
  )

)

(print (Funmapcar (eval (read)) (read)))
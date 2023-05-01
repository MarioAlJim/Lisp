(defun FunReduce (funcion list &optional (result (funcall funcion)))
  (if (not list) 
      result
     (FunReduce funcion (cdr list) (funcall funcion result (car list)))
  )
)

(print (FunReduce (eval (read)) (read)))
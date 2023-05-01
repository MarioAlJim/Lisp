(defun funMapear (funBool lista)
  (mapcar funBool lista)
)

(print (funMapear (eval (read)) (read)))


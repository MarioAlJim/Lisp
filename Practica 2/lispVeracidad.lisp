(defun lispVeracidad (a b c)
  (list 
   `(,(equal a b) ,(equal a c)) 
   `(,(equal b a) ,(equal b c)) 
   `(,(equal c a) ,(equal c b))
   ) 
)
(defun lispVer (a b c)
  (list 
   (list (equal a b) (equal a c))
   (list (equal b a) (equal b c))
   (list (equal c a) (equal c b))
   )
)



;(defun lispVeracidad2 (a b c)
  ;(list `(,(equal a b) ,(equal a c)))
;)

(print (lispVeracidad (read) (read) (read)))

(defun comparaString (a b c)
  (if (equal c T)
      (equalp a b)
      (equal a b)
  )
)

(defun comparaString (a b c)
  (if c
      (equalp a b)
      (equal a b)
  )
)


(print (comparaString (read) (read) (read)))


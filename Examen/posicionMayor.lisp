(defun posicionMayor (a b c)
  (setq p1 1)
  (setq p2 2)
  (setq p3 3)
  (cond 
   ((and (> a b) (> a c)) p1)
   ((and (> b a) (> b c)) p2)
   ((and (> c a) (> c b)) p3)
   ((= a b) p1)
   ((= a c) p1)
   ((= b c) p2)
  )
)



(print (posicionMayor (read) (read) (read) ) )
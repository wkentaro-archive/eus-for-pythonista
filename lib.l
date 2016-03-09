;; vim: set ft=lisp:


(defun zip (a b) (pairlis a b))


(defun dict (zipped)
  (let ((table (make-hash-table :test #'equal)))
    (dolist (pair zipped)
      (sethash (car pair) table (cdr pair))
      )
    table))


(defmacro pushback (el lst)
  `(if (null ,lst)
       (setf ,lst (list ,el))
     (nconc ,lst (list ,el))))

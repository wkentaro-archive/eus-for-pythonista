======================
Euslisp for Pythonista
======================


* `map <#map>`_
* `zip <#zip>`_
* `dict <#dict>`_
* `list.append <#listappend>`_
* `list.extend <#listextend>`_
* `dict.items <#dictitems>`_


map
===

**Euslisp**

::

  lst = (list 1 2 3)
  (mapcar #'(lambda (x) (+ x 1)) lst)
  > (2 3 4)


zip
===

**Euslisp**

::

  (setq lst1 (list "a" "b" "c"))
  (setq lst2 (list 1 2 3))
  (pairlis lst1 lst2)
  > (("a" . 1) ("b" . 2) ("c" . 3))


dict
====

**Euslisp**

::

  (setq zipped (("a" . 1) ("b" . 2) ("c" . 3)))
  (setq table (make-hash-table :test #'equal))
  (dolist (pair zipped)
    (sethash (car pair) table (cdr pair))
    )
  (send table :list)
  > (("a" . 1) ("b" . 2) ("c" . 3)))
  (gethash "a")
  > 1


list.extend
===========

**Euslisp**

::

  (setq lst1 (list 1 2))
  (setq lst2 (list 3 4))
  (append lst1 lst2)
  > (1 2 3 4)


list.append
===========

**Euslisp**

::

  (defmacro pushback (el lst)
    `(if (null ,lst)
        (setf ,lst (list ,el))
      (nconc ,lst (list ,el))))
  (setq a)
  (pushback 1 a)
  (pushback 2 a)
  a
  > (1 2)


dict.items
==========

**Euslisp**

::

  (setq table (make-hash-table))
  (sethash :a table 1)
  (sethash :b table 2)
  (sethash :c table 3)
  (send table :list)
  > ((:a . 1) (:b . 2) (:c . 3))

;;;; main.lisp

(uiop:define-package #:scripts/src/main
  (:use #:cl))

(in-package #:scripts/src/main)

(defun main (argv)
  (declare (ignore argv))
  (success))

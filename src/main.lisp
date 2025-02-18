;;;; -*- mode: lisp; syntax: common-lisp; base: 10 -*-
;;;; main.lisp --- main entry point

(uiop:define-package #:miera/src/main
  (:use #:cl))

(in-package #:miera/src/main)

(defun main (argv)
  (declare (ignore argv))
  (success))

;;;; -*- mode: lisp; syntax: common-lisp; base: 10 -*-
;;;; ext.lisp --- extras

(uiop:define-package #:nur/src/ext
  (:use #:cl
        #:inferior-shell
        #:cl-scripting
        #:cl-launch/dispatch
        #:marie))

(in-package #:nur/src/ext)

(def create-symlinks (src)
  (let* ((directory (or (uiop:getenv "DEST") "~/bin"))
         (destination (uiop:truenamize directory)))
    (uiop:with-current-directory (destination)
      (dolist (i (all-entry-names))
        (run `(ln -sf ,src ,i)))))
  (success))

(def help ()
  (format t "~A commands: ~{~A~^ ~}~%" (get-name) (all-entry-names))
  (success))

(register-commands :nur/src/ext)

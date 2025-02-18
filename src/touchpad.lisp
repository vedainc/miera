;;;; -*- mode: lisp; syntax: common-lisp; base: 10 -*-
;;;; touchpad.lisp --- touchpad stuff

(uiop:define-package #:miera/src/touchpad
  (:use #:cl
        #:inferior-shell
        #:cl-scripting
        #:optima
        #:optima.ppcre
        #:marie))

(in-package #:miera/src/touchpad)

(def get-id ()
  (dolist (line (run/lines '(xinput list)))
    (match line
      ((ppcre "(TouchPad|\\sSYNA.*)\\s+id\=([0-9]{1,2})\\s+" _ x)
       (return (values (parse-integer x)))))))

(def id (&rest args) (apply #'get-id args))

(defun enabledp (&optional (id (get-id)))
  (dolist (line (run/lines `(xinput list-props ,id)))
    (match line
      ((ppcre "Device Enabled\\s+[():0-9]+\\s+([01])" x) (return (equal x "1"))))))

(def toggle (&optional (id (get-id)) (on :toggle))
  (let ((state (ecase on
                 ((:toggle) (not (enabledp id)))
                 ((nil t) on))))
    (run `(xinput ,(if state 'enable 'disable) ,id)))
  (success))

(def disable (&optional (id (get-id)))
  (toggle id nil))

(def enable (&optional (id (get-id)))
  (toggle id t))

(defun main (argv) ;; TODO: use command-line-arguments, or CLON
  (cond
    ((null argv) (toggle))
    ((eql (first-char (first argv)) #\() (eval (first argv)))
    (t (if-let (fun (package-function :miera/src/touchpad (standard-case-symbol-name (first argv))))
               (apply 'run-command fun (rest argv))
               (progn
                 (format *error-output* "Bad touchpad command: ~A~%" (first argv))
                 (help *error-output*)
                 (quit 2))))))

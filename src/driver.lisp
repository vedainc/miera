;;;; -*- mode: lisp; syntax: common-lisp; base: 10 -*-
;;;; driver.lisp --- symbol driver

(uiop:define-package :nur/src/driver
  (:nicknames :nur)
  (:use :uiop/common-lisp)
  (:use-reexport #:nur/src/common
                 #:nur/src/ext
                 #:nur/src/touchpad
                 #:nur/src/general
                 #:nur/src/apps
                 #:nur/src/unix
                 #:nur/src/mksum
                 #:nur/src/webcam
                 #:nur/src/touchring
                 #:nur/src/smallcaps
                 #:nur/src/main))

(provide "nur")
(provide "NUR")

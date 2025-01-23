;;;; -*- mode: lisp; syntax: common-lisp; base: 10; coding: utf-8-unix; external-format: (:utf-8 :eol-style :lf); -*-
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
                 #:nur/src/dev
                 #:nur/src/main))

(provide "nur")
(provide "SCRIPTS")

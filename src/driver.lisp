;;;; -*- mode: lisp; syntax: common-lisp; base: 10; coding: utf-8-unix; external-format: (:utf-8 :eol-style :lf); -*-
;;;; driver.lisp --- symbol driver

(uiop:define-package :scripts/src/driver
  (:nicknames :scripts)
  (:use :uiop/common-lisp)
  (:use-reexport #:scripts/src/common
                 #:scripts/src/ext
                 #:scripts/src/touchpad
                 #:scripts/src/general
                 #:scripts/src/apps
                 #:scripts/src/unix
                 #:scripts/src/mksum
                 #:scripts/src/webcam
                 #:scripts/src/touchring
                 #:scripts/src/smallcaps
                 #:scripts/src/dev
                 #:scripts/src/main))

(provide "scripts")
(provide "SCRIPTS")

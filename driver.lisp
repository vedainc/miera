;;;; -*- mode: lisp; syntax: common-lisp; base: 10; coding: utf-8-unix; external-format: (:utf-8 :eol-style :lf); -*-
;;;; driver.lisp --- symbol driver

(uiop:define-package :scripts/driver
  (:nicknames :scripts)
  (:use :uiop/common-lisp)
  (:use-reexport #:scripts/common
                 #:scripts/ext
                 #:scripts/touchpad
                 #:scripts/general
                 #:scripts/apps
                 #:scripts/unix
                 #:scripts/mksum
                 #:scripts/webcam
                 #:scripts/touchring
                 #:scripts/smallcaps
                 #:scripts/dev
                 #:scripts/main))

(provide "scripts")
(provide "SCRIPTS")

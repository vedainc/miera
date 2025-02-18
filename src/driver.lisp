;;;; -*- mode: lisp; syntax: common-lisp; base: 10 -*-
;;;; driver.lisp --- symbol driver

(uiop:define-package :ebzzry-scripts/src/driver
  (:nicknames :ebzzry-scripts)
  (:use :uiop/common-lisp)
  (:use-reexport #:ebzzry-scripts/src/common
                 #:ebzzry-scripts/src/ext
                 #:ebzzry-scripts/src/touchpad
                 #:ebzzry-scripts/src/general
                 #:ebzzry-scripts/src/apps
                 #:ebzzry-scripts/src/unix
                 #:ebzzry-scripts/src/mksum
                 #:ebzzry-scripts/src/webcam
                 #:ebzzry-scripts/src/touchring
                 #:ebzzry-scripts/src/smallcaps
                 #:ebzzry-scripts/src/main))

(provide "ebzzry-scripts")
(provide "EBZZRY-SCRIPTS")

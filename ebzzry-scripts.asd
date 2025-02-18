;;;; -*- mode: lisp; syntax: common-lisp; base: 10 -*-
;;;; ebzzry-scripts.asd --- main asdf file

(uiop:define-package :ebzzry-scripts-system
  (:use #:cl #:asdf))

(in-package #:ebzzry-scripts-system)

(defsystem :ebzzry-scripts
    :name "ebzzry-scripts"
    :version "1.5.0"
    :author "Rommel Martínez <ebzzry@icloud.com>"
    :class :package-inferred-system
    :depends-on (#:cl-ppcre
                 #:local-time
                 #:ironclad
                 #:inferior-shell
                 #:ebzzry-scripts/src/common
                 #:ebzzry-scripts/src/ext
                 #:ebzzry-scripts/src/touchpad
                 #:ebzzry-scripts/src/general
                 #:ebzzry-scripts/src/webcam
                 #:ebzzry-scripts/src/apps
                 #:ebzzry-scripts/src/unix
                 #:ebzzry-scripts/src/mksum
                 #:ebzzry-scripts/src/touchring
                 #:ebzzry-scripts/src/smallcaps
                 #:ebzzry-scripts/src/main
                 #:ebzzry-scripts/src/driver))

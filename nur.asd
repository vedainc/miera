;;;; -*- mode: lisp; syntax: common-lisp; base: 10 -*-
;;;; nur.asd --- main asdf file

(uiop:define-package :nur-system
  (:use #:cl #:asdf))

(in-package #:nur-system)

(defsystem :nur
    :name "nur"
    :version "1.4.1"
    :author "Rommel Martínez <ebzzry@icloud.com>"
    :class :package-inferred-system
    :depends-on (#:cl-ppcre
                 #:local-time
                 #:ironclad
                 #:inferior-shell
                 #:nur/src/common
                 #:nur/src/ext
                 #:nur/src/touchpad
                 #:nur/src/general
                 #:nur/src/webcam
                 #:nur/src/apps
                 #:nur/src/unix
                 #:nur/src/mksum
                 #:nur/src/touchring
                 #:nur/src/smallcaps
                 #:nur/src/main
                 #:nur/src/driver))

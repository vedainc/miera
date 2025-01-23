;;;; -*- mode: lisp; syntax: common-lisp; base: 10; coding: utf-8-unix; external-format: (:utf-8 :eol-style :lf); -*-
;;; nur.asd --- main asdf file

#-ASDF3.1 (error "ASDF 3.1 or bust!")

(uiop:define-package :nur-system
  (:use #:cl #:asdf))

(in-package #:nur-system)

(defsystem :nur
    :name "nur"
    :version "1.3.0"
    :author "Rommel Martínez <rommel.martinez@valmiz.com>"
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
                 #:nur/src/dev
                 #:nur/src/main
                 #:nur/src/driver))

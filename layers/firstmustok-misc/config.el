;;; config.el --- firstmustok Layer packages File for Spacemacs
;;
;; Copyright (c) 2014-2016 firstmustok
;;
;; Author: firstmustok <guanghui8827@gmail.com>
;; URL: https://github.com/firstmustok/spacemacs-private
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(define-abbrev-table 'global-abbrev-table '(

                                            ;; math/unicode symbols
                                            ("8in" "∈")
                                            ("8nin" "∉")
                                            ("8inf" "∞")
                                            ("8luv" "♥")
                                            ("8smly" "☺")
                                            ("8en" "@~english")
                                            ("8zh" "@~chinese")
                                            ("8sp" "spacemacs")
                                            ;; email
                                            ("8me" "guanghui8827@gmail.com")

                                            ;; computing tech
                                            ("8wp" "Wikipedia")
                                            ("8ms" "Microsoft")
                                            ("8g" "Google")
                                            ("8it" "IntelliType")
                                            ("8msw" "Microsoft Windows")
                                            ("8win" "Windows")
                                            ("8ie" "Internet Explorer")
                                            ("8ahk" "AutoHotkey")
                                            ("82dx" "Cocos2D-X")

                                            ;; signature
                                            ("8zl" "firstmustok")
                                            ;; emacs regex
                                            ("8d" "\\([0-9]+?\\)")
                                            ("8str" "\\([^\"]+?\\)\"")))


(setq user-mail-address "linux.whu@gmail.com")

(defvar add-node-modules-path-debug nil
  "Enable verbose output when non nil.")

;;; packages.el --- firstmustok Layer packages File for Spacemacs
;;
;; Copyright (c) 2014-2016 firstmustok
;;
;; Author: firstmustok <linux.whu@gmail.com>
;; URL: https://github.com/firstmustok/spacemacs-private
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.

(setq firstmustok-programming-packages
      '(
        (dart-mode :location (recipe :fetcher github :repo "nex3/dart-mode"))
        (smali-mode :location (recipe :fetcher github :repo "strazzere/Emacs-Smali"))
        (google-c-style)
        ))

(defun firstmustok-programming/init-dart-mode ()
  (use-package dart-mode
    :defer t
    :init
    (progn
      (add-hook 'dart-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
      (add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode))

      (spacemacs/declare-prefix-for-mode 'dart-mode "mc" "compile")
      (spacemacs/declare-prefix-for-mode 'dart-mode "mg" "find-symbol")
      (spacemacs/set-leader-keys
      ;; (spacemacs/set-leader-keys-for-major-mode 'dart-mode
          "mj" 'dart-jump-to-defn
          "mf" 'dartfmt
          "mi" 'dart-imports
          "ms" 'dart-sort-members
          "mg" 'dart-goto))))

(defun firstmustok-programming/init-smali-mode ()
  (use-package smali-mode
    :config
    (progn
      (autoload 'smali-mode "smali-mode" "Major mode for editing and viewing smali issues" t)
      (add-to-list 'auto-mode-alist '(".smali$" . smali-mode))
      )
    ))

(defun firstmustok-programming/post-init-google-c-style ()
  (use-package google-c-style
    :init (add-hook 'c-mode-common-hook 'google-set-c-style)))

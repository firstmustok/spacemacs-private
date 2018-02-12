;;; config.el --- firstmustok Layer packages File for Spacemacs
;;
;; Copyright (c) 2014-2016 firstmustok
;;
;; Author: firstmustok <linux.whu@gmail.com>
;; URL: https://github.com/firstmustok/spacemacs-private
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun firstmustok/org-ispell ()
  "Configure `ispell-skip-region-alist' for `org-mode'."
  (make-local-variable 'ispell-skip-region-alist)
  (add-to-list 'ispell-skip-region-alist '(org-property-drawer-re))
  (add-to-list 'ispell-skip-region-alist '("~" "~"))
  (add-to-list 'ispell-skip-region-alist '("=" "="))
  (add-to-list 'ispell-skip-region-alist '("^#\\+BEGIN_SRC" . "^#\\+END_SRC")))

(add-hook 'org-mode-hook #'firstmustok/org-ispell)

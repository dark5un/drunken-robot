(setq backup-directory-alist `(("." . "~/.saves")))

(menu-bar-mode -1)

(push "/usr/local/bin" exec-path)
(add-to-list 'load-path "~/.emacs.d")

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)
(setq rinari-tags-file-name "TAGS")
(setq-default fill-column 75)
(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(set-fringe-style -1)
(tooltip-mode -1)

(global-auto-revert-mode t)
(global-whitespace-mode t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; for going back in the projects
;;(global-set-key (kbd "C-.") 'pop-tag-mark)

;;(set-frame-font "Menlo-16")
(load-theme 'misterioso)

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8) (whitespace-line-column . 80) (lexical-binding . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path (expand-file-name "/home/pxinos/.emacs.d/helm"))
(require 'helm-config)
(helm-mode 1)


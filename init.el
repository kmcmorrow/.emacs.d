;; move emacs customizations to a separate file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; size and position
(set-frame-height (selected-frame) 49) ; desktop
;;(set-frame-height (selected-frame) 34) ; laptop
(set-frame-position (selected-frame) 80 0)

(setq visible-bell t)
(setq inhibit-startup-screen t)
(setq default-tab-width 2)
(setq column-number-mode t)
(setq scroll-error-top-bottom t)
(setq-default indent-tabs-mode nil)

;(setq py-python-command "c:/Python27/python.exe")
;(setenv "PATH" (concat "~/npm/node_modules" (getenv "PATH")))

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; tell emacs where to look
; (add-to-list 'load-path "~/.emacs.d/")

;(require 'yaml-mode)
;(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(auto-fill-mode -1)

(load "~/.emacs.d/setup-company.el")
(load "~/.emacs.d/setup-js.el")
(load "~/.emacs.d/setup-ruby.el")
(load "~/.emacs.d/setup-ace-jump-mode.el")
(load "~/.emacs.d/setup-web-mode.el")
(load "~/.emacs.d/setup-yasnippet.el")
(load "~/.emacs.d/setup-haskell.el")
;;(load "~/.emacs.d/setup-smartparens.el")

;; smartparens
(require 'smartparens-config)
;(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)

(global-set-key [f5] 'revert-buffer)
(global-set-key [f7] 'comment-region)
(global-set-key [f8] 'uncomment-region)

(global-whitespace-cleanup-mode t)

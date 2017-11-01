(require 'flymake-easy)
(require 'flymake-jshint)
(global-set-key [f10] 'flymake-goto-prev-error)
(global-set-key [f11] 'flymake-goto-next-error)
(setq-default js2-basic-offset 2)
(setq-default js2-global-externs '("$" "setTimeout" "clearTimeout" "setInterval" "clearInterval"))
(setq js-indent-level 2)

(add-hook 'js2-mode-hook 'company-mode)

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook
    (lambda ()
      (define-key js2-mode-map (kbd "<f9>") 'js2-next-error)
      (flymake-mode 1)))

;; nodejs
(setq exec-path (append exec-path '("~/.emacs.d")))
(require 'js-comint)
(setq inferior-js-program-command "node_emacs.bat")
(add-hook 'js2-mode-hook
    '(lambda ()
       (local-set-key "\C-x\C-e" 'js-send-last-sexp)
       (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
       (local-set-key "\C-cb" 'js-send-buffer)
       (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
       (local-set-key "\C-cl" 'js-load-file-and-go)
       ))

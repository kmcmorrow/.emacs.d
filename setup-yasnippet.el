(require 'dropdown-list)
(require 'yasnippet)
(add-hook 'web-mode-hook #'(lambda () (yas-activate-extra-mode 'html-mode)))
(setq yas-prompt-functions '(yas-dropdown-prompt
                             yas-ido-prompt
                             yas-x-prompt
                             yas-completing-prompt
                             yas-no-prompt))
(yas-global-mode 1)

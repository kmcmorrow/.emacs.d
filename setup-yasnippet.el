(require 'dropdown-list)
(require 'yasnippet)
(add-hook 'web-mode-hook #'(lambda () (yas-activate-extra-mode 'html-mode)))
(yas-global-mode 1)
(setq yas-prompt-functions '(yas-dropdown-prompt
														 yas-ido-prompt
														 yas-x-prompt
														 yas-completing-prompt
														 yas-no-prompt))

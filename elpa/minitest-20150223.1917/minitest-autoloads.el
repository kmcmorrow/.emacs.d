;;; minitest-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (minitest-enable-appropriate-mode minitest-mode)
;;;;;;  "minitest" "minitest.el" (21984 58208 0 0))
;;; Generated autoloads from minitest.el

(autoload 'minitest-mode "minitest" "\
Minor mode for *_test (minitest) files

\(fn &optional ARG)" t nil)

(autoload 'minitest-enable-appropriate-mode "minitest" "\


\(fn)" nil nil)

(dolist (hook '(ruby-mode-hook enh-ruby-mode-hook)) (add-hook hook 'minitest-enable-appropriate-mode))

;;;***

;;;### (autoloads nil nil ("minitest-pkg.el") (21984 58212 897000
;;;;;;  0))

;;;***

(provide 'minitest-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; minitest-autoloads.el ends here

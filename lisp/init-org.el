;; flyspell
;; (add-hook 'org-mode-hook 'flyspell-mode)
(eval-when-compile
  (require 'init-const))

;; (use-package ob-ipython
;;     :if (executable-find "jupyter")     ; DO NOT remove
;;     :init (cl-pushnew '(ipython . t) load-language-list))

(provide 'init-org)

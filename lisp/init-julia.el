(add-to-list '/home/ketchup/.emacs.d/elpa/julia-repl-20210124.923)
(require 'julia-repl)
(add-hook 'julia-mode-hook 'julia-repl-mode) ;; always use minor mode
(provide 'init-julia)

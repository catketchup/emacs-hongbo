(use-package python
  :ensure nil
  :defines gud-pdb-command-name pdb-path
  :config
  ;; Disable readline based native completion
  (setq python-shell-completion-native-enable nil)

  (add-hook 'inferior-python-mode-hook
            (lambda ()
              ;; (bind-key "C-c C-z" #'kill-buffer-and-window inferior-python-mode-map)
              (process-query-on-exit-flag (get-process "Python"))))

  ;; Live Coding in Python
  (use-package live-py-mode)

  ;; Format using YAPF
  ;; Install: pip install yapf
  ;; (use-package yapfify
  ;;   :diminish yapf-mode
  ;;   ;; do not turn on unless told to do so
  ;;   :hook (python-mode . yapf-mode)
  ;;   )
  )

;; Add hylang support
(use-package hy-mode
  :init
  ;; FIXME: not sure why this is needed to get hy-mode loaded properly for .hy files
  (add-to-list 'auto-mode-alist '("\\.hy\\'" . hy-mode))
  )

;;; Hongbo's addings
;; py-autopep8
;; (use-package py-autopep8
;;   :hook (python-mode . py-autopep8-enable-on-save)
;;   )

;; (require 'py-autopep8)
;; (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
;; (setq exec-path (append '("/home/ketchup/tools/anaconda3/bin") exec-path))
;; (setq python-shell-virtualenv-path "/home/ketchup/tools/anaconda3/bin/python")
;; (require 'lpy)

;;; initialization of anaconda-mode by Hongbo
;; (use-package anaconda-mode
;;   :hook (python-mode . anaconda-mode))
;; (setq exec-path (append '("/home/ketchup/tools/anaconda3/bin") exec-path))
;; (setq python-shell-virtualenv-path "/home/ketchup/tools/anaconda3/bin/python")

(use-package elpy
  :ensure t
  :init
  (elpy-enable)
  )
(setq elpy-rpc-virtualenv-path 'system) 
;; (setq exec-path (append '("/home/ketchup/tools/anaconda3/bin") exec-path))
;; (setq python-shell-virtualenv-path "/home/ketchup/tools/anaconda3/bin/python")


(provide 'init-python)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-python.el ends here

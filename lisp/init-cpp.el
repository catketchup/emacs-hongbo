;; (defun my+c++-mode-hook ()
;;   (require 'irony)
;;   (require 'company-irony-c-headers)
;;   ;; Load with `irony-mode` as a grouped backend
;;   (eval-after-load 'company
;;     '(add-to-list
;;       'company-backends '(company-irony-c-headers company-irony))
;;     (add-to-list 'company-backends 'company-c-headers))
;;   )


;; (require 'irony)
;; (require 'company-irony-c-headers)

;; (eval-after-load 'company
;;     '(add-to-list
;;       'company-backends '(company-irony-c-headers company-irony))
;;     )
(eval-when-compile
  (require 'init-custom))

;; C/C++ Mode
(use-package cc-mode
  :ensure nil
  :bind (:map c-mode-base-map
         ("C-c c" . compile))
  :hook (c-mode-common . (lambda ()
                           (c-set-style "bsd")
                           (setq tab-width 4)
                           (setq c-basic-offset 4)))
  :config
  (use-package modern-cpp-font-lock
    :diminish
    :init (modern-c++-font-lock-global-mode t))
  )


(require 'irony)
(require 'company-c-headers)

(add-hook 'c-mode-common-hook 'irony-mode)
(add-hook 'c-mode-common-hook 'linum-mode)

(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/7.5.0/")

(provide 'init-cpp)

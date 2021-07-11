(when (version< emacs-version "25.1")
  (error "This requires Emacs 25.1 and above!"))


;; load path
(defun update-load-path (&rest _)
  "Update `load-path'."
  (push (expand-file-name "site-lisp" user-emacs-directory) load-path)
  (push (expand-file-name "lisp" user-emacs-directory) load-path))

(defun add-subdirs-to-load-path (&rest _)
  "Add subdirectories to `load-path'."
  (let ((default-directory
          (expand-file-name "site-lisp" user-emacs-directory)))
    (normal-top-level-add-subdirs-to-load-path)))


(advice-add #'package-initialize :after #'update-load-path)
(advice-add #'package-initialize :after #'add-subdirs-to-load-path)

(update-load-path)



;; Load `custom-file'
;; If it doesn't exist, copy from the template, then load it.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(if (file-exists-p custom-file)
    (load custom-file))

;; Packages
;; Without this comment Emacs25 adds (package-initialize) here
(setq package-archives
      '(("melpa" . "http://melpa.org/packages/")
        ("gnu" . "http://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")
        ("melpa-stable" . "http://stable.melpa.org/packages/")))

(unless (bound-and-true-p package--initialized) ; To avoid warnings in 27
  (setq package-enable-at-startup nil)          ; To prevent initializing twice
  (package-initialize))

;; Setup `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Should set before loading `use-package'
(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-expand-minimally t)
  (setq use-package-enable-imenu-support t))

;; Required by `use-package'
(use-package diminish)
(use-package bind-key)

;; org
(require 'init-org)

;; tools
(require 'init-helm)
(require 'init-auto-save)
(require 'init-swiper)
(require 'init-company)

;; coding
(require 'init-python)

;; shell
(require 'init-shell)

;; utils
(require 'init-utils)

;; tex
(require 'init-tex)

;; snippets
(require 'init-yasnippet)

;; equation, by Yilun
(require 'org-elp)

;; undo-tree
(require 'init-undo-tree)

;; smartparens
(require 'init-smartparens)

;; julia
;; (require 'init-julia)

;;c/cpp
(require 'init-cpp)
(require 'init-helm-gtags)
;; cython
;; (require 'init-cython)

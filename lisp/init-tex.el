;; (use-package auctex
;;   :config
;;   ;; default preview-scale
;;   (set-default 'preview-scale-function 1.2)
;;   )

;; (use-package ox-latex
;;   :ensure nil
;;   :init
;;   (setq org-highlight-latex-and-related '(entities))
;;   :config
;;   ;; to get the citation right
;;   (setq org-latex-pdf-process
;;         '("pdflatex -shell-escape -interaction nonstopmode -f %f"
;;           "bibtex %b"
;;           "pdflatex -shell-escape -interaction nonstopmode -f %f"
;;           "pdflatex -shell-escape -interaction nonstopmode -f %f"))

;;   ;; add revtex4-1 to latex export document class
;;   (add-to-list 'org-latex-classes
;;                '("revtex4-1"
;;                  "\\documentclass{revtex4-1}"
;;                  ("\\section{%s}" . "\\section*{%s}")
;;                  ("\\subsection{%s}" . "\\subsection*{%s}")
;;                  ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;                  ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;                  ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
;;   )

;; ;; show lines after opening .tex files
;; (add-hook 'LaTeX-mode-hook 'linum-mode)

;; ;; flyspell
;; ;; (add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; (use-package cdlatex
;;   :hook (org-mode . turn-on-org-cdlatex))
;; (provide 'init-tex)

(use-package auctex
  :init
  (add-hook 'bibtex-mode-hook 'turn-on-auto-revert-mode)
  ;; Activate nice interface between RefTeX and AUCTeX
  (setq reftex-plug-into-AUCTeX t)
  :hook
  ((TeX-mode-hook . turn-on-reftex)
   (TeX-mode-hook . flyspell-mode)
   ;; for synctex integration
   (LaTeX-mode-hook . TeX-PDF-mode)
   (LaTeX-mode-hook . TeX-source-correlate-mode))
  :config
  ;; default preview-scale
  (setq TeX-source-correlate-method 'synctex
        TeX-source-correlate-start-server t)
  )

(provide 'init-tex)

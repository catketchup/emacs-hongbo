(use-package auctex
  :config
  ;; default preview-scale
  (set-default 'preview-scale-function 1.2)
  )

(use-package ox-latex
  :ensure nil
  :init
  (setq org-highlight-latex-and-related '(entities))
  :config
  ;; to get the citation right
  (setq org-latex-pdf-process
        '("pdflatex -shell-escape -interaction nonstopmode -f %f"
          "bibtex %b"
          "pdflatex -shell-escape -interaction nonstopmode -f %f"
          "pdflatex -shell-escape -interaction nonstopmode -f %f"))

  ;; add revtex4-1 to latex export document class
  (add-to-list 'org-latex-classes
               '("revtex4-1"
                 "\\documentclass{revtex4-1}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  )

;; show lines after opening .tex files
(add-hook 'LaTeX-mode-hook 'linum-mode)

;; flyspell
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

(use-package cdlatex
  :hook (org-mode . turn-on-org-cdlatex))
(provide 'init-tex)

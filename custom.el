
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(company-box-color-icon nil)
 '(company-box-max-candidates 50)
 '(company-box-show-single-candidate t)
 '(custom-safe-themes
   (quote
    ("08a27c4cde8fcbb2869d71fdc9fa47ab7e4d31c27d40d59bf05729c4640ce834" "93ed23c504b202cf96ee591138b0012c295338f38046a1f3c14522d4a64d7308" "e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "3c2f28c6ba2ad7373ea4c43f28fcf2eed14818ec9f0659b1c97d4e89c99e091e" "bf387180109d222aee6bb089db48ed38403a1e330c9ec69fe1f52460a8936b66" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "d6603a129c32b716b3d3541fc0b6bfe83d0e07f1954ee64517aa62c9405a3441" "4a8d4375d90a7051115db94ed40e9abb2c0766e80e228ecad60e06b3b397acab" "6c9cbcdfd0e373dc30197c5059f79c25c07035ff5d0cc42aa045614d3919dab4" "3df5335c36b40e417fec0392532c1b82b79114a05d5ade62cfe3de63a59bc5c6" "188fed85e53a774ae62e09ec95d58bb8f54932b3fd77223101d036e3564f9206" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "a3b6a3708c6692674196266aad1cb19188a6da7b4f961e1369a68f06577afa16" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "56a0cfe215136f5f708244424cafbe6adad167eb5668d6b46110d6d2520b58c3" "060f89f87be566c28649bed12079bea0b46525649f6e6ccaa9fd4f5888267a07" "5387f69682cb5aca67adbd86c78ae8f9e10e4d7b235e3cdd45623f26f834cbd1" "a7bcce57878465c1d0dec75f4f068fbd358f146d511ab99c636307af42f9688a" default)))
 '(ein:output-area-inlined-images t)
 '(elpy-rpc-virtualenv-path (quote current))
 '(magic-latex-enable-inline-image nil)
 '(org-elp-split-size 40)
 '(package-selected-packages
   (quote
    (smooth-scroll smooth-scrolling pretty-hydra symbol-overlay doom-themes doom-modeline company-box elpy magit beacon undo-tree smartparens yasnippet-snippets iedit org-roam org-sidebar cdlatex auctex pdf-view-restore bongo olivetti nov youdao-dictionary shell-pop vterm xterm-color pdf-tools py-yapf projectile linum-off company-prescient swiper magic-latex-buffer ein live-py-mode hy-mode company use-package helm)))
 '(pdf-view-continuous nil)
 '(pdf-view-display-size 1.35)
 '(pdf-view-resize-factor 1.25)
 '(pdf-view-use-scaling t)
 '(smooth-scroll-margin 0)
 '(smooth-scroll-strict-margins t)
 '(smooth-scrolling-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; load theme on startup
;; (with-eval-after-load 'doom-theme (load-theme 'doom-city-lights))
;; (load-theme 'doom-city-lights)
;; (setq doom-theme 'doom-city-lights)

;; parenthesis
;; show pairing
(show-paren-mode 1)

; show line numbers
(global-linum-mode 0)

;; get rid of backup files with "~"
(setq make-backup-files nil)

;; open emacs server for emacsclient
(server-start)

;; youdao dictionary
;; Enable Cache
(setq url-automatic-caching t)

;; Example Key binding
(global-set-key (kbd "C-c C-y") 'youdao-dictionary-search-at-point)
(global-set-key (kbd "C-c y") 'youdao-dictionary-search-from-input)

;; set org image size
(setq org-image-actual-width 600)

;; wrap lines automatically
(global-visual-line-mode)

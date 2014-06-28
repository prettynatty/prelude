;;; haskell-mode and ghc-mod customizations

(eval-after-load "which-func"
  '(add-to-list 'which-func-modes 'haskell-mode))

(custom-set-variables
 '(haskell-font-lock-symbols t)
)

;(setq ghc-debug t)
(autoload 'ghc-init "ghc" nil t)
;(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

;(eval-after-load "haskell-mode"
;  '(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile))

;(eval-after-load "haskell-cabal"
;  '(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-compile))

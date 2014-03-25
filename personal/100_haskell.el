;;; haskell-mode and ghc-mod customizations

(autoload 'ghc-init "ghc" nil t) ;; Init ghc-mod
(add-hook 'haskell-mode-hook (lambda () (ghc-init) (flymake-mode))) ;; Enable ghc-mod with flymake on haskell-mode

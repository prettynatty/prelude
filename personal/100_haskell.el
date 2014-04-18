;;; haskell-mode and ghc-mod customizations

(eval-after-load "which-func"
  '(add-to-list 'which-func-modes 'haskell-mode))
(autoload 'ghc-init "ghc" nil t) ;; Init ghc-mod
(add-hook 'haskell-mode-hook (lambda () (ghc-init) (flymake-mode))) ;; Enable ghc-mod with flymake on haskell-mode

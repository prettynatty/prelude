;; load the ensime lisp code...
;(add-to-list 'load-path "~/.emacs.d/vendor/ensime/")
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(add-hook 'scala-mode-hook '(lambda ()
                              (local-set-key (kbd "RET") '(lambda ()
                                                            (interactive)
                                                            (newline-and-indent)
                                                            (scala-indent:insert-asterisk-on-multiline-comment)))

                              (local-set-key (kbd "<backtab>") 'scala-indent:indent-with-reluctant-strategy)

))

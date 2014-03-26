;;; frame constraints

;; if in gui mode on osx
(if (fboundp 'toggle-frame-maximized)
    (toggle-frame-maximized))

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

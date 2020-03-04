(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (junglist)))
 '(custom-safe-themes
   (quote
    ("6345cdec06b37c3c86dca354f5527598d68d3f9aa82db14d6fc86b8a19ed9def" default)))
 '(font-use-system-font t)
 '(safe-local-variable-values (quote ((Base . 10) (Syntax . ANSI-Common-Lisp)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "dark olive green"))))
 '(font-lock-builtin-face ((t (:foreground "#c49a17"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face))))
 '(font-lock-function-name-face ((t (:foreground "#b79d00"))))
 '(font-lock-keyword-face ((t (:foreground "#839f21"))))
 '(show-paren-match ((t (:background "yellow green")))))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(set-frame-parameter (selected-frame) 'alpha '(97 . 92))
 (add-to-list 'default-frame-alist '(alpha . (97 . 92)))

(require 'evil)
(evil-mode 1)

(setq inferior-lisp-program "/bin/sbcl")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup '(slime-asdf slime-repl slime-scratch slime-presentations slime-media)) 

(tool-bar-mode -1)
(toggle-scroll-bar -1)
(set-face-attribute 'fringe nil :background nil)

(defun tear-off-window-if-not-alone ()
  "Move selected window to a new frame, unless it is alone in its frame.
If it is alone, do nothing.  Otherwise, delete it and create a new
frame showing the same buffer."
  (interactive)
  (if (one-window-p 'NOMINI)
      (message "Sole window in frame")
    (tear-off-window)))

(show-paren-mode 1)

;(setq linum-relative-backend 'display-line-numbers-mode)
;(global-linum-mode)


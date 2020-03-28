(load "~/.emacs.d/init-packages")

;; (load-theme 'base16-default-dark t)
(load-theme 'base16-atelier-dune t)

(setq inhibit-startup-screen t)
(line-number-mode 1)
(column-number-mode 1)

(blink-cursor-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; prevent Emacs from losing undo information
(setq undo-limit 2000000)
(setq undo-strong-limit 4000000)

;; turn on highlight matching brackets when cursor is on one
(show-paren-mode t)

;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)

;; Prevent emacs from creating a backup file filename~
(setq make-backup-files nil)

;; highlight current line
(global-hl-line-mode t)

;; trim trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; paste clipboard with middle mouse button
(global-set-key (kbd "<mouse-2>") 'clipboard-yank)

;; (set-face-font 'default "Inconsolata-14")

;; BEGIN: ORG MODE

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; END: ORG MODE

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("cabc32838ccceea97404f6fcb7ce791c6e38491fd19baa0fcfb336dcc5f6e23c" default)))
 '(package-selected-packages (quote (base16-theme org))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

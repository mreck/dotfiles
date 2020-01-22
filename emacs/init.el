;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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


;; Prevent emacs from creating a backup file filename~
(setq make-backup-files nil)

;; highlight current line
(global-hl-line-mode t)

;; trim trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)










; (set-face-font 'default "Inconsolata-14")

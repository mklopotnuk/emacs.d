;; (add-to-list 'load-path "/home/merlin/soft/emacs-jabber/")
;; (require 'jabber-autoloads)

(add-to-list 'load-path "~/elisp/org-mode/lisp")

(add-to-list 'auto-mode-alist '("/mutt" . mail-mode))

(setq org-agenda-files (list "~/org/assembly&repairs.org"
                             "~/org/enforta.org"
                             "~/org/home.org"
                             "~/org/sutel.org"
                             "~/org/flk.org"
                             "~/org/anvik.org"
                             "~/org/cvetochka.org"
                             "~/org/copy74.org"
                             "~/org/ipserver.org"
                             "~/org/weblancer.org"
                             "~/org/kipriyanov.org"                              
                             "~/org/personal.org"
                             "~/org/zetus.org"
                             "~/org/vdc.org"))

;(setq org-mobile-inbox-for-pull "~/org/sutel.org")
(setq org-mobile-directory "~/Dropbox/MobileOrg")

(setq org-todo-keywords
      '((sequence "TODO" "WAITING" "VERIFY" "|" "DONE" "DELEGATED" "CANCELED")))

(setq org-todo-keyword-faces
      '(("TODO" . org-warning) ("STARTED" . "yellow")
        ("CANCELED" . (:foreground "blue" :weight bold))))



(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

(add-hook 'lua-mode-hook 'turn-on-font-lock)
(add-hook 'lua-mode-hook 'hs-minor-mode)
;;--------------------------------------------------------------------
;; Lines enabling gnuplot-mode

;; move the files gnuplot.el to someplace in your lisp load-path or
;; use a line like
;;  (setq load-path (append (list "/path/to/gnuplot") load-path))

;; these lines enable the use of gnuplot mode
  (autoload 'gnuplot-mode "gnuplot" "gnuplot major mode" t)
  (autoload 'gnuplot-make-buffer "gnuplot" "open a buffer in gnuplot mode" t)

;; this line automatically causes all files with the .gp extension to
;; be loaded into gnuplot mode
  (setq auto-mode-alist (append '(("\\.gp$" . gnuplot-mode)) auto-mode-alist))

;; This line binds the function-9 key so that it opens a buffer into
;; gnuplot mode 
  (global-set-key [(f9)] 'gnuplot-make-buffer)

;; end of line for gnuplot-mode
;;--------------------------------------------------------------------

(defun sudo-edit-current-file ()
  (interactive)
  (find-alternate-file (concat "/sudo:root@localhost:" (buffer-file-name (current-buffer)))))
    (global-set-key (kbd "C-c C-r") 'sudo-edit-current-file)

;;(global-unset-key [(control v)])

;; (setq dokuwiki-username "support2"
;;       dokuwiki-password "DGbaHPCK5x"
;;       dokuwiki-base-url "https://www.ipserver.su/dokuwiki")

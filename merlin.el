(add-to-list ' load-path "~/elisp/org-mode/lisp")

(setq org-agenda-files (list "~/org/assembly&repairs.org"
                             "~/org/enforta.org"
                             "~/org/home.org"
                             "~/org/sutel.org"
                             "~/org/flk.org"
                             "~/org/personal.org"))

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

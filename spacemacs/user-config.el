;; Additional web-mode configuration
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))

(setq
  css-indent-offset 2
  web-mode-markup-indent-offset 2
  web-mode-css-indent-offset 2
  web-mode-code-indent-offset 2
  web-mode-attr-indent-offset 2)

(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
;; Make underscore part of the word
(add-hook 'python-mode-hook
          (lambda () (modify-syntax-entry ?_ "w")))
(add-hook 'jinja2-mode-hook
          (lambda () (modify-syntax-entry ?_ "w")))
(add-hook 'yaml-mode-hook
          (lambda () (modify-syntax-entry ?_ "w")))
(add-hook 'web-mode-hook
          (lambda () (modify-syntax-entry ?_ "w")))
(add-hook 'rjsx-mode-hook
          (lambda () (modify-syntax-entry ?_ "w")))

;; Remap expanding of snippet
(evil-define-key 'insert global-map (kbd "C-y") 'yas-expand)

;; rebind tab to do persistent action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

;; Set default column view headings: Task Total-Time Time-Stamp
(setq org-columns-default-format "%50ITEM(Task) %10CLOCKSUM %16TIMESTAMP_IA")

;; always follow the symlink (and edit the "actual" file directly)
(setq vc-follow-symlinks t)

(setq projectile-enable-caching t)


(defun web/django ()
  (if (projectile-project-p)
    (when (file-exists-p (concat (projectile-project-root) "manage.py"))
      (web-mode-set-engine "django")
      (setq web-mode-code-indent-offset 4
            web-mode-markup-indent-offset 4)
    )
  )
)
(add-hook 'web-mode-hook 'web/django)

(add-hook 'rjsx-mode-hook
          (lambda ()
            (flycheck-mode 1)
            (emmet-mode 1)
          ))

(defun my-babel-to-buffer ()
  "A function to efficiently feed babel code block result to a separate buffer"
  (interactive)
  (org-open-at-point)
  (org-babel-remove-result)
  )
(defun my-org-mode-config ()
  (local-set-key (kbd "C-c n") 'my-babel-to-buffer)
  ;; Follow link on enter
  (setq org-return-follows-link t)
  )
(add-hook 'org-mode-hook 'my-org-mode-config)

(load "~/Projects/config/spacemacs/agenda.el")

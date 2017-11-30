(setq org-agenda-files '("~/Google Drive File Stream/My Drive/org/agenda/"))

;; Todo list with schedule and deadline http://pragmaticemacs.com/emacs/org-mode-basics-vii-a-todo-list-with-schedules-and-deadlines/
(setq org-capture-templates
      '(("t" "todo" entry (file+headline "~/Google Drive File Stream/My Drive/org/agenda/gtd.org" "Tasks")
         "* TODO [#C] %?\nSCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")))

(setq org-outline-path-complete-in-steps nil)
(setq org-refile-targets '((org-agenda-files :maxlevel . 3)))

;; Making org level headers the same size
(custom-set-faces
  '(org-level-1 ((t (:inherit outline-1 :height 1.0 ))))
  '(org-level-2 ((t (:inherit outline-2 :height 1.0 ))))
  '(org-level-3 ((t (:inherit outline-3 :height 1.0 ))))
  '(org-level-4 ((t (:inherit outline-3 :height 1.0 ))))
  '(org-level-5 ((t (:inherit outline-3 :height 1.0 ))))
  '(org-level-6 ((t (:inherit outline-3 :height 1.0 ))))
  '(org-level-7 ((t (:inherit outline-3 :height 1.0 ))))
  '(org-level-8 ((t (:inherit outline-3 :height 1.0 ))))
  )

;; Setting up to-do workflow
(setq org-todo-keywords
      '((sequence "TODO(t)" "IN PROGRESS(i)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELLED(c@/!)")
        (sequence "CRASH(c)" "BUG(b)" "REQUEST(r)" "TEST(e)" "|" "FIXED(f)")))

(setq org-todo-keyword-faces
      '(("WAIT" . "white")
        ("CRASH" . "red")
        ("BUG" . "red")
        ("SUBTREE" . "grey")
        ("TEST" . "turquoise1")
        ))

(setq org-agenda-custom-commands
      '(
        ("p" . "Screening tasks (no effect, need to be fixed)")
        ("pa" "Urgent" tags "+PRIORITY=\"A\"")
        ("pb" "High" tags "+PRIORITY=\"B\"")
        ("pc" "Medium" tags "+PRIORITY=\"C\"")
        ("pd" "Normal" tags "+PRIORITY=\"D\"")
        ("pe" "Low" tags "+PRIORITY=\"E\"")
        ))

(setq org-priority-faces
      '((?A . (:foreground "red1" :weight 'bold))
        (?B . (:foreground "VioletRed1"))
        (?C . (:foreground "DeepSkyBlue3"))
        (?D . (:foreground "DeepSkyBlue4"))
        (?E . (:foreground "gray40"))))

(setq org-highest-priority ?A)
(setq org-lowest-priority ?E)
(setq org-default-priority ?C)

(setq org-agenda-prefix-format '((agenda  . "%-10:T% s%?-2t") ; (agenda . " %s %-12t ")
                                  (timeline . "%-9:T%?-2t% s")
                                  (todo . "%i%-8:T")
                                  (tags . "%i%-8:T")
                                  (search . "%i%-8:T")))

(setq org-agenda-remove-tags t)

(custom-set-faces
  '(org-agenda-done ((t (:foreground "#86dc2f" :height 1.0)))))

(custom-set-faces
  '(org-scheduled-today ((t (:foreground "DodgerBlue2" :height 1.0)))))

;; Tag completion through out all agenda files
(setq org-complete-tags-always-offer-all-agenda-tags t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode agenda options                                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;open agenda in current window
(setq org-agenda-window-setup (quote current-window))
;;warn me of any deadlines in next 7 days
(setq org-deadline-warning-days 7)
;;show me tasks scheduled or due in next fortnight
(setq org-agenda-span (quote fortnight))
;;don't show tasks as scheduled if they are already shown as a deadline
(setq org-agenda-skip-scheduled-if-deadline-is-shown t)
;;don't give awarning colour to tasks with impending deadlines
;;if they are scheduled to be done
(setq org-agenda-skip-deadline-prewarning-if-scheduled (quote pre-scheduled))
;;don't show tasks that are scheduled or have deadlines in the
;;normal todo list
(setq org-agenda-todo-ignore-deadlines (quote all))
(setq org-agenda-todo-ignore-scheduled (quote all))
;;sort tasks in order of when they are due and then by priority
(setq org-agenda-sorting-strategy
  (quote
  ((agenda deadline-up priority-down)
    (todo priority-down category-keep)
    (tags priority-down category-keep)
    (search category-keep))))

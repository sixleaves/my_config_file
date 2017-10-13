(require 'org)
(setq org-src-fontify-natively 1)

;; 默认 Org Agenda 目录
(setq org-agenda-files '("~/Documents/org_agenda"))

;; 设置 org-agenda 快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'init-org)

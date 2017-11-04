;; 常用查询文档快捷键
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; swiper
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-x C-r") 'counsel-recentf)

(global-set-key (kbd "C-=") 'er/expand-region)

;; hippie补全
(global-set-key (kbd "s-/") 'hippie-expand)

;; 向后删除一个单词
;;(global-set-key (kbd "C-w") 'backward-kill-word)

;; org-agenda 快捷键
(global-set-key (kbd "C-c a") 'org-agenda)


(provide 'init-keybindings)

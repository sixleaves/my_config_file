;; ========================================
;; Dired Mode

;; 设置为递归删除
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; 设置唯一缓冲区
(put 'dired-find-alternate-file 'disabled nil)

;; 延迟加载
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; C-x C-j 进入当前文件所在路径
(setq dired-dwin-target 1)
;; ========================================

;; 组合键提醒延迟
(setq which-key-idle-delay '0.08)

;; 开启全局company 补全
(global-company-mode 1)

;; 补全延迟
(setq company-idle-delay '0.08)

;; 输入1个字符开始补全
(setq company-minimum-prefix-length '1)

;; hippie补全
(setq hippie-expand-try-function-list
      '(try-expand-debbrev
	try-expand-debbrev-all-buffers
	try-expand-debbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol
	))

;; 自动补全括号
(use-package smartparens-config
  :config
  (smartparens-global-mode 1)
  )

;; 关闭含有"~"的自动备份
(setq make-backup-files nil)

;; 关闭自动保存
(setq auto-save-default nil)

;; 选中文字输入替换
(delete-selection-mode 1)

;; 开启 swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)

;; 关闭警告音
(setq ring-bell-function 'ignore)

;; yes no 更换 y n
(fset 'yes-or-no-p 'y-or-n-p)

;; 快速删除多余的空行
(use-package hungry-delete
  :config
  (global-hungry-delete-mode)
  )

;; 防止C-x C-x卡在clipboard-manager
(setq x-select-enable-clipboard-manager nil)

;; 括号高亮显示
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 在括号内显示括号高亮
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))

;; 自动删除windows的换行符
(defun remove-dos-eol ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

;; 编码修改为UTF-8
(set-language-environment "UTF-8")

(provide 'init-better-defaults)

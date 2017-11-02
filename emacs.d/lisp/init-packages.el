
(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
			     ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar zhou/packages
  '(
    use-package
    company ;;自动 补全
    ;; --- Better Editor ---
    smooth-scrolling
    which-key ;; 显示当前组合件下所有可用的组合键
    hungry-delete ;; 自动删除多余空格
    swiper ;; 增强查找
    counsel ;; 增强打开文件
    smartparens ;; 自动补全括号
    ;; --- Major Mode ---
    js2-mode
    web-mode
    markdown-mode
    ;; ---  ---
    js2-refactor
    ;; --- Themes ---
    monokai-theme
    )
  "Default packages")

(setq package-selected-packages zhou/packages)

(defun zhou/packages-installed-p ()
     (loop for pkg in zhou/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

(unless (zhou/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg zhou/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))
(setq auto-mode-alist
      (append
       '(("\\.html\\'" . web-mode))
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
(provide 'init-packages) 

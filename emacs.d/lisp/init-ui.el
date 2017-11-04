;; ----------------------------------------
;; GUI 

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 默认全屏
;; (setq initial-frame-alist '((fullscreen . maximized)))

;; 字体大小
(set-default-font "14")

;; 修改光标
(setq-default cursor-type 'hbar)
;; ----------------------------------------

;; 开启组合键提示
(which-key-mode 1)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 显示行号
(global-linum-mode 1)

;; 高亮当前行
(global-hl-line-mode 1)

;; 设置主题
(load-theme 'material 1)

;; 状态栏显示时间
(display-time-mode 1)
(setq display-time-24hr-format 1)
(setq display-time-day-and-date 1)


(provide 'init-ui)

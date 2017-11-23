;; Configuração feita por: Guilherme Hathy
;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------
(package-initialize)
(ac-config-default)
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/pacotes/")
;;---------------------------------------------------------------------------
;; Chama o Ess para rodar o R
(require 'ess-site)

;;---------------------------------------------------------------------------
;;Não abrir o Welcome
(setq inhibit-startup-screen t)
;;---------------------------------------------------------------------------
;; faz com que apareceça os argumentos das funções do R no minibuffer
(require 'ess-eldoc)

;;---------------------------------------------------------------------------
;; numeração das linhas na margem esquerda
(global-linum-mode 1)

;;---------------------------------------------------------------------------
;; realçador de pareamento de parenteses, chaves, colchetes, aspas...
(show-paren-mode 1)
(setq make-backup-files nil) ; para de criar  backup~ files
(setq auto-save-default nil) ; stop creatingpara de criar #autosave# files

;;---------------------------------------------------------------------------
;; Chama o Elpy, é usado para script Python
;;M-x package-list-packages C-s elpy
;;
;;(elpy-enable)
;;Corrigindo alguns bugs do Elpy
;;(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
;;(define-key global-map (kbd "C-c o") 'iedit-mode)
;;(add-hook 'python-mode-hook 'jedi:setup)
;;(setq jedi:complete-on-dot t)


;;---------------------------------------------------------------------------
;; Multiplos cursores

(require 'multiple-cursors)

(global-set-key (kbd "C-d") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;---------------------------------------------------------------------------
;; Inicar o emacs maximizado e adicionando tema
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(load-theme 'flatland t)
(load-theme 'monokai t)
;;---------------------------------------------------------------------------
;;Python3 console, C-c C-p para abrir o console
(defcustom python-shell-interpreter "python3"
  "Default Python interpreter for shell."
  :type 'string
  :group 'python)

;;---------------------------------------------------------------------------
;;highlight-indent-guide

(setq highlight-indent-guides-method 'character)
(add-hook 'prog-mode-hook 'highlight-indentation-mode)

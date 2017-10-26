# [markdown 安装以及配置](https://github.com/iamcco/markdown-preview.vim)
* 插件安装
```
Plugin 'godlygeek/tabular'
```
```
Plugin 'plasticboy/vim-markdown'
```
```
Plugin 'iamcco/mathjax-support-for-mkdp'
```
```
Plugin 'iamcco/markdown-preview.vim'
```
* 插件配置
```
" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）
let g:mkdp_path_to_chrome = "firefox" 
```
```
" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开markdown 文件的时候打开一次
let g:mkdp_auto_start = 0 
```
```
" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预览窗口
let g:mkdp_auto_open = 0
```
```
" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不自动关闭预览窗口
let g:mkdp_auto_close = 1
```
```
" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时更新预览
let g:mkdp_refresh_slow = 0
```
```
" 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown文件可以使用改命令
let g:mkdp_command_for_global = 0
```
```
" 普通模式
nmap <silent> <F8> <Plug>MarkdownPreview
" 插入模式
imap <silent> <F8> <Plug>MarkdownPreview
" 普通模式
nmap <silent> <F9> <Plug>StopMarkdownPreview
" 插入模式
imap <silent> <F9> <Plug>StopMarkdownPreview
```

# [markdown 语法](http://www.appinn.com/markdown/#autolink)

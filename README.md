# annie-wsl-tools
add powerful bookmarks for download video  by annie directly on windows

NEED TO DO

install debian in wsl && apt install ffmpeg &&apt install golang:  && go get github.com/iawia002/annie && sudo ln -s $HOME/go/bin/annie /usr/bin/annie
为了让wsl获取到annie，需要作一个软链接

和原来的youget-tools相比
bookmarklet.js就去掉了原来为了匹配多加的各种""冒号
比原来的更简洁了，并且通过替换wsl的内容，应该可以实现直接的使用windows版本的annie

wsl调用annie没法自动续下载和多进程
如果使用windows下的exe的话，运行install_exe.bat
如果使用windows下的wsl的话，运行install_wsl.bat


@echo 
echo 开始安装依赖
set http_proxy=http://127.0.0.1:8087
set https_proxy=http://127.0.0.1:8087
git config http.proxy http://127.0.0.1:8087
:: update=-u就是强制更新
set update=
go get %update% github.com/klauspost/asmfmt/cmd/asmfmt
go get %update% github.com/derekparker/delve/cmd/dlv
go get %update% github.com/kisielk/errcheck
go get %update% github.com/davidrjenni/reftools/cmd/fillstruct
go get %update% -ldflags -H=windowsgui github.com/nsf/gocode
go get %update% github.com/rogpeppe/godef
go get %update% github.com/zmb3/gogetdoc
go get %update% golang.org/x/tools/cmd/goimports
go get %update% github.com/golang/lint/golint
go get %update% github.com/alecthomas/gometalinter
go get %update% github.com/fatih/gomodifytags
go get %update% golang.org/x/tools/cmd/gorename
go get %update% github.com/jstemmer/gotags
go get %update% golang.org/x/tools/cmd/guru
go get %update% github.com/josharian/impl
go get %update% github.com/dominikh/go-tools/cmd/keyify
go get %update% github.com/fatih/motion

:: fzf 依赖
go get %update% github.com/junegunn/fzf
cd %USERPROFILE%/.fzf/
go build
mv .fzf.exe %USERPROFILE%/.fzf/bin/fzf.exe
EXIT /B
::goto :eof和 EXIT /B 都能返回到之前的call里 但是是不会返回到start里

@echo 
echo 开始安装依赖
set http_proxy=http://127.0.0.1:8087
set https_proxy=http://127.0.0.1:8087
git config http.proxy http://127.0.0.1:8087
go get -u github.com/klauspost/asmfmt/cmd/asmfmt
go get -u github.com/derekparker/delve/cmd/dlv
go get -u github.com/kisielk/errcheck
go get -u github.com/davidrjenni/reftools/cmd/fillstruct
go get -u -ldflags -H=windowsgui github.com/nsf/gocode
go get -u github.com/rogpeppe/godef
go get -u github.com/zmb3/gogetdoc
go get -u golang.org/x/tools/cmd/goimports
go get -u github.com/golang/lint/golint
go get -u github.com/alecthomas/gometalinter
go get -u github.com/fatih/gomodifytags
go get -u golang.org/x/tools/cmd/gorename
go get -u github.com/jstemmer/gotags
go get -u golang.org/x/tools/cmd/guru
go get -u github.com/josharian/impl
go get -u github.com/dominikh/go-tools/cmd/keyify
go get -u github.com/fatih/motion
EXIT /B
::goto :eof和 EXIT /B 都能返回到之前的call里 但是是不会返回到start里
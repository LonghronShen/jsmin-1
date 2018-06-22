export DEBIAN_FRONTEND=noninteractive
export GOPATH=$HOME/gopath
export PATH=$HOME/gopath/bin:$PATH
mkdir -p $HOME/gopath/src/github.com/dchest/jsmin
rsync -az ./ $HOME/gopath/src/github.com/dchest/jsmin/
cd $HOME/gopath/src/github.com/dchest/jsmin
go version
go env
go get -t -v ./...
go build

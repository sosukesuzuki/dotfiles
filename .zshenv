# for go lang
if [ -x "`which go`" ]; then
  export GOPATH=$HOME/go
  export PATH="$GOPATH/bin:$PATH"
fi

# for brew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export LD_LIBRARY_PATH="/home/linuxbrew/.linuxbrew/lib:$LD_LIBRARY_PATH"

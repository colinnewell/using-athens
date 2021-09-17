# athens-proxy config

Playing about with providing access to private repo's on storage like github or
bitbucket via a go proxy (athens).

Generate an ssh key.  Then get the public key installed in 

    sudo chown root ssh-keys/config

Now you should be in a position to run the proxy.

    ./run.sh

Use go get with the following pointers.

Ensure the proxy env var is set, and the one to not use checksums for your
private modules.  Note this should also be present in the `run.sh` script in
the athens config.

    export GONOSUMDB="github.com/colinnewell/*"
    export GOPROXY=http://localhost:3000

Now go get should work.

    go get github.com/colinnewell/private-module

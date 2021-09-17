# athens-proxy config

Playing about with providing access to private repo's on storage like github or
bitbucket via a go proxy (athens).

Run the setup script to create an ssh key to use with an account to access the
private server.

    ./setup.sh

Follow the instructions, create the key with no passphrase and set the public
key up on github.

Now you should be in a position to run the proxy.

    ./run.sh

That should store files in $HOME/athens-storage.

Use `go get` with the following settings.

Ensure the proxy env var is set, and the one to not use checksums for your
private modules.  Note this should also be present in the `run.sh` script in
the athens config.

    export GONOSUMDB="github.com/colinnewell/*"
    export GOPROXY=http://localhost:3000

Now go get should work.

    go get github.com/colinnewell/private-module

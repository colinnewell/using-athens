#!/bin/sh
mkdir ssh-keys
cp sshconfig ssh-keys/config
sudo chown root ssh-keys/config
echo Leave passphrase empty.
echo Note that athens does allow you to hook up to an ssh agent if you want to
echo avoid using an empty passphrase private key.
ssh-keygen -f ssh-keys/id_rsa
cat ssh-keys/id_rsa.pub
echo Now install the public key in a github account with access to the private
echo "repo's."

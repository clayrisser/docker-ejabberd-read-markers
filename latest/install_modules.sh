#!/bin/sh

echo "updating module specs . . ."
/home/ejabberd/bin/ejabberdctl modules_update_specs
echo "updated module specs . . ."
cp -r /home/ejabberd/ejabberd-modules/* /home/ejabberd/.ejabberd-modules/sources
for m in $(ls /home/ejabberd/ejabberd-modules); do
 echo "intalling $m . . ."
 /home/ejabberd/bin/ejabberdctl module_install $m
 echo "intalled $m"
done
echo "!!! XMPP Server Ready !!!"

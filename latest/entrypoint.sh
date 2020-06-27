#!/bin/sh

sh -c "sleep 5; sh /home/ejabberd/scripts/install_modules.sh" &

exec /home/ejabberd/bin/ejabberdctl $@

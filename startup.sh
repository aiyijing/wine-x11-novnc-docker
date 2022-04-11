#!/usr/bin/env bash

if [ "$@" ]; then

    echo "[program:customer]
command="$@"
autorestart=true
stdout_logfile=/dev/fd/1
stdout_logfile_maxbytes=0
redirect_stderr=true" >> /etc/supervisor/conf.d/supervisord.conf

fi

exec /usr/bin/supervisord
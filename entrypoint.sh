#!/bin/sh

cat /etc/passwd | grep "$USERNAME" > /dev/null
if [ $? -ne 0 ]; then
  # create a new user
  adduser -s /sbin/nologin -D -H -u "$DIR_UID" "$USERNAME"

  # set smb password
  echo -e "$PASSWORD\n$PASSWORD" | pdbedit -t -a "$USERNAME"
fi

chown "$USERNAME":"$USERNAME" /share

# start samba
exec smbd --foreground --no-process-group --debug-stdout

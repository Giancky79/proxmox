#è in completamento, se usato non andrà


TIME=$(date +"%d-%m-%y")
DAYS=(Mon Tue Wed Thu Fri Sat Sun)
FILENAME=backup-$TIME-$DAYS.tar
SRCDIR=/root/docker/hass
DESDIR=/root/backup
tar -czvf $DESDIR/$FILENAME --exclude={deps,*.db,*.log} $SRCDIR

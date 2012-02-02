
#../bin/deploy.sh --set-default
#./bin/mkdeploy.sh dev

function qkill {
    kill `ps axu | grep $1 | awk '{print $2}'`
}

function search {
    find . | xargs grep $1
}

function server-connect {
    ssh quinnbaetz@asdf.quinnbaetz.com
}
function torrent {
    rsync -avz $1 quinnbaetz@asdf.quinnbaetz.com:~/downloads/torrents
}
# rsync -avz mouser quinn@session01:~
# application: waterforwardcharity-dev

if test "$HOSTNAME" == 'quinnbaetz' ; then
    source ~/dev/quinnsdots/.bashrcserver
fi
if test "$HOSTNAME" == 'Monkeys-MacBook-Pro-4.local' ; then
    source ~/dev/quinnsdots/.bashrcwork
fi

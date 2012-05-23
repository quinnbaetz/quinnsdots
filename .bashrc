
#../bin/deploy.sh --set-default
#./bin/mkdeploy.sh dev

function qkill {
    kill `ps axu | grep $1 | awk '{print $2}'`
}
function qfind {
     find . -type f -exec grep -il "$1" {} \;  
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
alias googlecode_submit="svn commit --username quinnbaetz@gmail.com --password Ms6eB8Cz5Qv6"
# rsync -avz mouser quinn@session01:~
# application: waterforwardcharity-dev

if test "$HOSTNAME" == 'quinnbaetz' ; then
    echo "setting up server environment"
    source ~/dev/quinnsdots/.bashrcserver
#need to make this only happen at work
fi
#if [[ "$HOSTNAME" =~ *monkeyinferno* ]]
#then
    echo "setting up work environment"
    source ~/dev/quinnsdots/.bashrcwork
#fi
if test "$HOSTNAME" == 'type-r-pc' ; then
    echo "setting up work environment"
    source ~/dev/quinnsdots/.bashrcwork
fi
if test "$HOSTNAME" == 'Monkeys-MacBook-Pro-4.local' ; then
    echo "setting up work environment"
    source ~/dev/quinnsdots/.bashrcwork
fi


#../bin/deploy.sh --set-default
#./bin/mkdeploy.sh dev

function flash {
    open /Applications/Adobe\ Flash\ CS5.5/Adobe\ Flash\ CS5.5.app $1
}
function firefox {
    open /Applications/Firefox.app $1
}

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
#WORK STUFF
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

source $HOME/.git-completion.bash
# sudo /Library/StartupItems/MySQLCOM/MySQLCOM start
     alias mysql=/usr/local/mysql/bin/mysql
     alias mysqladmin=/usr/local/mysql/bin/mysqladmin

export PATH=$PATH:/usr/local/sbin:/usr/local/mysql/bin
export PYTHONPATH=/Users/quinn/dev/Z3:/Users/quinn/dev/Z3/search:/Users/quinn/dev/tornado:$PYTHONPATH
export TERM=xterm
export Z3_ENV=local
export JOLITICS=$HOME/dev/Z3/jolitics

alias jolitics-start="(cd $HOME/dev/Z3/jolitics && ./jolitics.py --config=/Users/quinn/dev/Z3/jolitics/conf/local/jolitics.quinn.cfg)"
alias zuno-start="(cd $HOME/dev/Z3/zuno && ./zuno.py --config=/Users/quinn/dev/Z3/zuno/conf/local/zuno.peleus.cfg)"

alias nginx-star="sudo /usr/local/sbin/nginx -c /etc/nginx/nginx.conf"
alias nginx-start="launchctl load -w ~/Library/LaunchAgents/org.nginx.nginx.plist"
alias nginx-stop="launchctl unload ~/Library/LaunchAgents/org.nginx.nginx.plist"

function jslint {
    #rhino /Users/quinn/Library/jslint/jslint.js $1
    rhino /Users/quinn/dev/fulljslint.js $1
}

alias water2.6="python2.6 /Users/quinn/dev/waterForward/google_appengine/dev_appserver.py --high_replication --use_sqlite --backends --enable_sendmail --multiprocess --port=8888 --address=127.0.0.1 --mysql_user=root ."
alias water="python /Users/quinn/dev/waterForward/google_appengine/dev_appserver.py --high_replication --use_sqlite --backends --enable_sendmail --multiprocess --port=8888 --address=127.0.0.1 --mysql_user=root ."
alias clearwater="rm -rf /private/var/folders/kf/2h7ckhbd1_lbq71ctr8bn2y40000gp//T/dev_appserver*"

alias waterPIL="easy_install --find-links http://www.pythonware.com/products/pil/ Imaging"
alias joliticsPIL="easy_install PIL"

alias restart_couch='/usr/bin/sudo launchctl stop org.apache.couchdb'
alias start_couch='/usr/bin/sudo launchctl load -w /Library/LaunchDaemons/org.apache.couchdb.plist'
alias stop_couch='/usr/bin/sudo launchctl unload /Library/LaunchDaemons/org.apache.couchdb.plist'
# rsync -avz mouser quinn@session01:~
# application: waterforwardcharity-dev



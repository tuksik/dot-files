if [ -f ~/.bash_private ]; then
    source ~/.bash_private
fi
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

__has_parent_dir () {
    # Utility function so we can test for things like .git/.hg without firing up a
    # separate process
    test -d "$1" && return 0;

    current="."
    while [ ! "$current" -ef "$current/.." ]; do
        if [ -d "$current/$1" ]; then
            return 0;
        fi
        current="$current/..";
    done

    return 1;
}

__vcs_name() {
    if [ -d .svn ]; then
        echo "-[svn]";
    elif __has_parent_dir ".git"; then
        echo "-[$(__git_ps1 'git %s')]";
    elif __has_parent_dir ".hg"; then
        echo "-[hg $(hg branch)]"
    fi
}

black=$(tput -Txterm setaf 0)
red=$(tput -Txterm setaf 1)
green=$(tput -Txterm setaf 2)
yellow=$(tput -Txterm setaf 3)
dk_blue=$(tput -Txterm setaf 4)
pink=$(tput -Txterm setaf 5)
lt_blue=$(tput -Txterm setaf 6)

bold=$(tput -Txterm bold)
reset=$(tput -Txterm sgr0)

# Nicely formatted terminal prompt
export PS1='\n\[$bold\]\[$black\][\[$dk_blue\]\@\[$black\]]-[\[$green\]\u\[$yellow\]@\[$green\]\h\[$black\]]-[\[$pink\]\w\[$black\]]\[\033[0;33m\]$(__vcs_name) \[\033[00m\]\[$reset\]\n\[$reset\]\$ '


#Codepages
alias w51u8='iconv -f WINDOWS-1251 -t UTF-8 '
alias w53u8='iconv -f WINDOWS-1253 -t UTF-8 '
alias i5u8='iconv -f ISO-8859-5 -t UTF-8 '
alias i7u8='iconv -f ISO-8859-7 -t UTF-8 '
alias u8i5='iconv -f UTF-8 -t ISO-8859-5 '
alias u8i7='iconv -f UTF-8 -t ISO-8859-7 '

#APT
alias dql='dpkg-query -L '
#alias au0='apt-get update && apt-get -su dist-upgrade '
alias au1='apt-get update '
alias au2='apt-get upgrade '
alias ac1='apt-cache search '
alias ac2='apt-cache show '
alias ai1='apt-get install  '

#GIT
alias gst='git status'
alias gcm='git commit -m '
alias glog="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gadd='git add .'
alias gadu='git add -u .'
alias gco='git checkout '
alias gres='git reset HEAD '
alias garc='git archive HEAD -o '
#Export commit $@
function gexp() { git diff-tree -r --no-commit-id --name-only --diff-filter=ACMRT "$@"|xargs 7z a changes.zip  ;}


#Which programm use port X
alias wp1='netstat -tulpn'
alias wp2='lsof -Pnl +M -i4'
#Zombies
function wmz() { ps aux | awk '"[Zz]" ~ $8 { printf("%s, PID = %d\n", $8, $2); }' ;}

#Combinations
alias la='ls -la --color=always'
alias ls='ls -F --color=always'
alias dir='dir -F --color=always'
alias ll='ls -l'
alias cp='cp -iv'
alias rm='rm -iv'
alias mv='mv -iv'
alias grep='grep --color=auto -in '
alias ..='cd ..'
alias delsvn='find -name "\.svn" -exec rm -rf {} \;'
alias cdiff="svn diff | egrep '^Index: ' | cut -f2 -d' '|xargs -i  7z a -tzip ../diff.zip {}"
alias hg1='history|egrep '
alias fwb="for e in *; do mv "$e" "`echo $e | sed -e 's/\ /_/g'`"; done;"
#alias mp4to=for f in $(ls -1 *.mp4);do avconv -i  "$f" "`echo $f | sed -e 's/mp4//g'`mp3";done;
alias srvst='service --status-all'
alias duinfo='du --block-size=MiB --max-depth=1 | sort -n'


#Salt
alias saltc='salt-call --local state.highstate -l debug'
 
#Zarafa
alias putrules='cat addrules.txt >> /etc/zarafa/movetopublic.cfg'
alias catrules='cat  /etc/zarafa/movetopublic.cfg'
alias hgrules='cat /etc/zarafa/movetopublic.cfg|grep '
alias edmov2='vim /usr/share/zarafa-dagent/python/plugins/movetopublic2.py'
alias edout='vim /usr/share/zarafa-spooler/python/plugins/outmovetopublic.py'
#Logs
alias tss='tail -100 /var/log/syslog'
alias tmail='tail -100 /var/log/mail.log'
alias tau='tail -100 /var/log/auth.log'
alias tapa='tail -100 /var/log/apache2/access.log'
alias tape='tail -100 /var/log/apache2/error.log'
alias tza='tail -100 /var/log/zarafa/dagent.log'
alias tzsp='tail -100 /var/log/zarafa/spooler.log'
alias tzs='tail -100 /var/log/zarafa/server.log'
alias tzzs='tail -100 /var/log/zabbix-server/zabbix_server.log'
alias tzza='tail -100 /var/log/zabbix-agent/zabbix_agentd.log'

#Duplicity
alias dupc='duplicity collection-status file:///backupdev/bck_dup/'

#Docker
alias dk=docker
alias dps='docker ps -a'
alias dim='docker images'
alias dipa="docker inspect -f '{{ .NetworkSettings.IPAddress }}' "
alias dports="docker inspect --format='{{range \$p, \$conf := .NetworkSettings.Ports}} {{\$p}} -> {{(index \$conf 0).HostPort}} {{end}}'"
alias dlogs="docker logs "
alias ddel='docker rm `docker ps -a -q -f status=exited`'
alias dkc=docker-compose
alias dkm=docker-machine

#Salt
alias ema='vim /etc/salt/master'
alias rma='service salt-master restart'
alias m1='salt "mi01*" '
alias m2='salt "mi02*" '
alias m3='salt "mi03*" '
alias rmi='service salt-minion restart'
alias sl='salt-call --local '

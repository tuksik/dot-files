#APT
alias dql='dpkg-query -L '
#alias au0='apt-get update && apt-get -su dist-upgrade '
alias au1='apt-get update '
alias au2='apt-get upgrade '
alias au3='unattended-upgrade'
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

#Which programm use port X
alias wp1='netstat -tulpn'
alias wp2='lsof -Pnl +M -i4'

#Codepages
alias w51u8='iconv -f WINDOWS-1251 -t UTF-8 '
alias w53u8='iconv -f WINDOWS-1253 -t UTF-8 '
alias i5u8='iconv -f ISO-8859-5 -t UTF-8 '
alias i7u8='iconv -f ISO-8859-7 -t UTF-8 '
alias u8i5='iconv -f UTF-8 -t ISO-8859-5 '
alias u8i7='iconv -f UTF-8 -t ISO-8859-7 '

#Combinations
alias la='ls -la'
alias cdiff="svn diff | egrep '^Index: ' | cut -f2 -d' '|xargs -i  7z a -tzip ../diff.zip {}"
alias delsvn='find -name "\.svn" -exec rm -rf {} \;'
alias hg1='history|egrep '
alias fwb="for e in *; do mv "$e" "`echo $e | sed -e 's/\ /_/g'`"; done;"
#alias mp4to=for f in $(ls -1 *.mp4);do avconv -i  "$f" "`echo $f | sed -e 's/mp4//g'`mp3";done;
alias tdagent='tail -100 /var/log/zarafa/dagent.log'
alias tmail='tail -100 /var/log/mail.log'

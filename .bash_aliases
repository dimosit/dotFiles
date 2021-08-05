alias tmux='tmux -2'
alias less='less -R'
alias diff='colordiff'
alias yams='find . -type f -name "*.yml*" | sed "s|\./||g" | egrep -v "(\.kitchen/|\[warning\]|\.molecule/)" | xargs yamllint -f parsable'




#---------------------------------Aliases--------------------------------------
  alias root='sudo -s'
  #apt commands
  alias update='apt-get update'
  alias distup='apt-get dist-upgrade'
  alias aptin='apt-get install'
  alias aptautoremove='apt-get autoremove'
  alias aptpurg='apt-get remove --purge' #remove package with all config files

  #general directory moving
  alias ..='cd ..'
  alias ...='cd ../..'     # Go up two directories
  alias ....='cd ../../..' # Go up three directories
  alias lss='ls -lah --color=auto'
  alias ls='ls --color=auto'
  alias lt='ls -lAtrh'              # sort by date and human readable
  alias lsz='du -sh * | sort -rh'
  alias lsa='ls -a'
  alias rmf='rm -rf'
  alias du='du -h' # human-readable sizes
  alias df='df -h' # human-readable sizes
  alias sizedir='du -hs'  #find the size of a directory
  alias cp='cp -vi'
  alias mv='mv -vi'
  alias cddelug='cd /var/lib/deluge/Downloads' #cd to deluge folder
  alias grep='grep --color=auto'
    #cd for server 98
  alias cdtor=' cd /var/www/spot2tube.ml/public_html/tor/deluge/'
  alias cdnfs='cd /var/www/html/yt/'
  alias rmnfs='rm -rf /var/www/html/yt/*'
   #Windows bash cd aliases
  alias cdand='cd /c/Users/d/AndroidStudioProjects'
  alias cdlin='cd /d/Windows_DATA/ropbox/Dropbox/Linux/SERVER\ SET\ UP/'
  alias cdbre='cd /d/Windows_DATA/BreachCompilation'
  alias cdwin='cd /d/Windows_DATA'
  alias cdhot='cd /d/Windows_DATA/autohotkey/Public-AutoHotKey-Scripts-master/'
  alias cdchoco='cd /d/Windows_DATA/Dropbox/Dropbox/windows/chocolatey'
  #local Mint Box
  alias cdd='/media/d/DATA/Windows_DATA/Downloads/'
  alias cdwin='cd /media/sf_Windows'
  alias zipyout='zip -r /var/www/html/yt/ytb.zip /var/www/html/yt/*'

  #Git aliases
  alias gitup='git push -u origin master'
  alias gitcm='git commit -m'
  alias gitadorgin='git remote add origin'
  alias gitadd='git add -A'
  alias gitpull='git pull master origin'
  alias gitlog='git log'

  alias vpn98='openvpn --config  /home/d/vpn/snf98d1.ovpn' #for the dual boot Ubuntu
  #encryption decryption fro rClone
  alias renc='ccrypt -e /home/d/.config/rclone/rclone.conf'
  alias rdec='ccrypt -d /home/d/.config/rclone/rclone.conf.cpt'
  #find the config file for rclone
  alias rcpath='rclone -h | grep "Config file"'


  alias wget='wget --no-check-certificate'


  #permissions commands
  alias 644='chmod 644'
  alias 755='chmod 755'
  alias 777='chmod 777'
  alias 777R='chmod 777 -R' #read write and for subdirectories


  #apache
  alias apacherestart='sudo /etc/init.d/apache2 restart'
  alias apachestop='sudo /etc/init.d/apache2 stop'
  alias apachestart='sudo /etc/init.d/apache2 start'
  #OpenVpn Comma/vpnnds
  alias ropenvpn='systemctl restart openvpn@server'
  alias startopenvpn='systemctl start openvpn@server'
  alias stopopenvpn='systemctl stop openvpn@server'
  alias statusopenvpn='systemctl status openvpn@server'
  #nginx
  alias nginxstop='systemctl stop nginx'
  alias nginxstart='systemctl start nginx'
  alias nginxrestart='systemctl restart nginx'
  #samba restart
  alias rsamba='service smbd restart'

    #youtube-dl
  alias ytmp3='youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0'
  alias youtube-dl='youtube-dl -ciw'  #https://stackoverflow.com/questions/35982269/youtube-dl-resume-download-after-error
  alias mkvyout='youtube-dl -f bestvideo+bestaudio --merge-output-format mkv '
  alias yout='youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4'


  alias chrop='chromium-browser'

  alias ports='netstat -tulanp'
  alias iftop='iftop -i eth1'
  alias docrun='docker run -it'
  alias docrmImg='docker rmi -f '


  #request-log-analyzer
  alias loganal='request-log-analyzer'
  alias loganalyzer-apache-access='request-log-analyzer /var/log/apache2/access.log'
  alias loganalyzer-apache-error='request-log-analyzer  /var/log/apache2/error.log'
  alias loganalyzer-fail2ban='fail2ban.sh -p /var/log/fail2ban.log.1'
  alias goaccessapache='goaccess -f /var/log/apache2/access.log'  #install first goaccess goaccessapache
  #MySQL
  alias mycli='mycli -u root'


  #WIFI
  alias wifilist='nmcli -f in-use,ssid,bssid,signal,bars dev wifi' #list all wifi SSIDs
  alias scanlocal='nmap -sP 192.168.1.0/24' #scan  local netowrk 192.168


  alias vpnff='proxychains firefox'
  alias vpnchrop='proxychains chromium-browser'

  alias subl='/opt/sublime/sublime_text'
  alias cputemp='watch -n 1 sensors'


  #pihole
  alias piup='pihole -up'
  
  
  #caddy web server run file server @path
  alias cafiles=caddy file-server  --browse --listen :2015


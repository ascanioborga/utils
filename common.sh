
#find any file named "common.sh"
find . -type f -name common.sh
#find any file named "common.sh" and displays as output of ls -l command
find . -type f -name common.sh | xargs -I {} ls -l

#find any file modified after 2024-12-31
find . -type f -newermt 2024-12-31
#find any file modified after 2024-12-31 excluding the ".git" folder
find . ! -path "./.git*" -type f -newermt 2024-12-31
#find any file modified after 2024-12-31 excluding the ".git" folder and displays as output of ls -l command
find . ! -path "./.git*" -type f -newermt 2024-12-31 | xargs -I {} ls -l
#find any file modified after 2024-12-31 excluding the ".git" folder and displays as output of ls -l command changing the datetime display
find . ! -path "./.git*" -type f -newermt 2024-12-31 | xargs -I {} ls -l --time-style="+%Y-%m-%d" {}
#find any file modified after 2024-12-31 excluding the ".git" folder and displays as output of ls -l command changing the datetime display and separator
find . ! -path "./.git*" -type f -newermt 2024-12-31 | xargs -I {} ls -l --time-style="+%Y-%m-%d" {} | tr " " ","

#display folder occupation
df -h
#display list of folders sort by dimension
du -h --max-depth=1 | sort -rh
#display list of files sort by dimension
ls -lhS

#verify public ip
curl -s ifconfig.me
curl -s icanhazip.com
curl -s checkip.amazonaws.com
wget -qO- ifconfig.me
dig +short myip.opendns.com @resolver1.opendns.com
host myip.opendns.com resolver1.opendns.com

#verify internet connection
ip a
traceroute 8.8.8.8
ip route
ping -c 4 8.8.8.8
nc -l -p 8080

#verify ssh connection
ssh -o MACs=hmac-sha2-256 192.168.1.1
ssh -Q mac

#create ssh private/public key pair
ssh-keygen
#install an ssh key on a server as an authorized key
ssh-copy-id user@server

#verifica versione os
cat /etc/os-release

#verifica postfix
rpm -q postfix

#visualizzare tutte le utenze
cut -d: -f1 /etc/passwd
#visualizzare soltanto le utenze non di sistema (uid >= 1000)
awk -F: '$3 >= 1000 && $3 < 65534 { print $1 }' /etc/passwd

#visualizzare info di uno utente e i suoi gruppi
id utente
#visualizzare soltanto i gruppi
id -nG utente

#creare un nuovo utente
sudo adduser utente
#assegnare gruppi ad un utente
sudo usermod -aG gruppo1,gruppo2,... utente
#assegnare una password
sudo passwd utente
#sbloccare la password
sudo passwd -u utente
#eliminare la scadenza della password
sudo passwd -x 99999 utente
#verificare lo status della password di un utente
sudo passwd -S utente

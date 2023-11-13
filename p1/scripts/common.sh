echo '=====   Mise à jour   ====='
apk update
apk upgrade

#curl installation
echo '=====   Installation de cURL    ====='
apk add --update curl

#id vagrant pwd vagrant
echo 'vagrant:vagrant' | chpasswd

#to connect without pwd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

service sshd restart
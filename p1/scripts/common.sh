set -x

echo '=====   Mise à jour   ====='
apt-get update

#curl installation
echo '=====   Installation de cURL    ====='
apt-get install -y curl net-tools

#id vagrant pwd vagrant
echo 'vagrant:vagrant' | chpasswd

#to connect without pwd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

service sshd restart
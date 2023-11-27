set -x

echo '=====   Mise à jour   ====='
apt-get update

#curl installation
echo '=====   Installation de cURL    ====='
apt-get update
apt-get install -y curl net-tools

#id vagrant pwd vagrant
echo 'vagrant:vagrant' | chpasswd

# #to connect without pwd
# sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# service sshd restart

#k3s install
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --cluster-init \
--bind-address=192.168.56.110 \
--node-ip=192.168.56.110" K3S_KUBECONFIG_MODE="644" sh -

#Ingress controller
kubectl apply -f confs/app1.yml
kubectl apply -f confs/app2.yml
kubectl apply -f confs/app3.yml
kubectl apply -f confs/ingress.yml
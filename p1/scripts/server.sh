set -x

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --cluster-init \
--bind-address=192.168.56.110 \
--node-ip=192.168.56.110" K3S_KUBECONFIG_MODE="644" sh -

sudo cp /var/lib/rancher/k3s/server/token /vagrant_shared/token
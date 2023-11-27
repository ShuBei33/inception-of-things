token="$(cat /vagrant_shared/token)"

curl -sfL https://get.k3s.io | K3S_URL='https://192.168.56.111:6443' K3S_TOKEN="$token" sh -
kubectl create secret tls tls-certificate --key /home/vagrant/files/ssl/server.key --cert /home/vagrant/files/ssl/server.crt
kubectl create -f /home/vagrant/files/helloworld/helloworld.yaml
kubectl create -f /home/vagrant/files/nginx_config.yaml
kubectl create -f /home/vagrant/files/nginx.yaml
kubectl create -f /home/vagrant/files/nginx_ingress.yaml

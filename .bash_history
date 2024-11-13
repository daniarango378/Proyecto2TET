sudo snap install microk8s --classic
sudo microk8s add-node
sudo microk8s enable dns storage ingress dashboard
sudo apt update
sudo apt install nfs-kernel-server
sudo mkdir -p /mnt/nfs_share
sudo systemctl stop nfs-kernel-server
sudo systemctl disable nfs-kernel-server
sudo apt remove --purge nfs-kernel-server
nano namespace.yaml
microk8s kubectl apply -f namespace.yaml
sudo microk8s kubectl apply -f namespace.yaml
nano persistentvolume.yaml
nano persistentvolumeclaim.yaml
nano microk8s kubectl apply -f persistentvolume.yaml
sudo nano persistentvolumeclaim.yaml
sudo nano persistentvolume.yaml
sudo nano persistentvolumeclaim.yaml
sudo nano persistentvolume.yaml
sudo microk8s kubectl apply -f persistentvolume.yaml
sudo microk8s kubectl apply -f persistentvolumeclaim.yaml
sudo nano deployment.yaml
sudo nano ingress.yaml
sudo nano service.yaml
sudo microk8s kubectl apply -f deployment.yaml
sudo microk8s kubectl apply -f service.yaml
microk8s kubectl get nodes
sudo microk8s kubectl get nodes
sudo nano service.yaml
sudo microk8s kubectl apply -f service.yaml
microk8s kubectl get nodes
sudo microk8s kubectl get nodes
sudo microk8s kubectl get pods -n wordpress
sudo microk8s kubectl logs wordpress-77c6cbd68-2gglb -n wordpress 
sudo nano deployment.yaml
sudo nano service.yaml
sudo microk8s kubectl apply -f deployment.yaml
sudo microk8s kubectl apply -f service.yaml
sudo nano deployment.yaml
sudo rm deployment.yaml
sudo nano deployment.yaml
sudo nano service.yaml
sudo microk8s kubectl apply -f deployment.yaml
sudo microk8s kubectl apply -f service.yaml
sudo nano service.yaml
sudo nano deployment.yaml
sudo microk8s kubectl get pods -n wordpress
sudo microk8s kubectl logs wordpress-77c6cbd68-2gglb -n wordpress 
sudo rm  deployment.yaml
sudo nano deployment.yaml
sudo microk8s kubectl apply -f deployment.yaml
sudo rm service.yaml
sudo nano service.yaml
sudo microk8s kubectl apply -f deployment.yaml
sudo microk8s kubectl apply -f service.yaml
sudo microk8s kubectl get pods -n wordpress
sudo microk8s kubectl logs wordpress-bbc9b6765-4vl8j -n wordpress 
sudo rm deployment.yaml
sudo nano deployment.yaml
sudo nano apache-config.yaml
sudo microk8s kubectl apply -f apache-config.yaml
sudo microk8s kubectl apply -f deployment.yaml
sudo nano service.yaml
sudo microk8s kubectl get ingress -A
sudo microk8s kubectl get svc -n wordpress
sudo microk8s disable ingress
sudo microk8s kubectl get pods -n wordpress
sudo microk8s kubectl logs wordpress-7cf9f8d987-6lnmf -n wordpress 
sudo nano apache-config.yaml
sudo nano deployment.yaml
sudo microk8s kubectl apply -f deployment.yaml
sudo nano deployment.yaml
sudo microk8s kubectl apply -f deployment.yaml
sudo microk8s kubectl get pods -n wordpress
kubectl get pods -n wordpress
sudo kubectl get pods -n wordpress
sudo nano deployment.yaml
sudo microk8s kubectl logs -n wordpress -l app=wordpress
sudo microk8s kubectl get pods -n wordpress
sudo microk8s kubectl exec -it <nombre_del_pod_wordpress> -n wordpress -- /bin/bash
sudo microk8s kubectl exec -it wordpress-6db69c464f-jjvfs -n wordpress -- /bin/bash
exit
apt update && apt install telnet -y
sudo apt update && apt install telnet -y
telnet ip-172-31-92-148.ec2.internal 3306
telnet 172.31.92.148 3306

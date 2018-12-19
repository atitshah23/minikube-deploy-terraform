
output "minikube_master_ip" {
    value = "${aws_instance.minikube-master.public_ip}"
}
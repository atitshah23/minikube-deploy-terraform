
resource "null_resource" "ec2_status" {

  provisioner "local-exec" {
      command = "aws ec2 wait instance-status-ok --instance-ids ${aws_instance.minikube-master.id}"
  }

}
aws ec2 run-instances \
    --image-id ami-0055977a6e828a4f4 \
    --instance-type t3.micro \
    --security-groups "Ansible_server" \
	--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=roboshop-Ansible}]' \
	--query 'Instances[0].InstanceId' \
    --output text
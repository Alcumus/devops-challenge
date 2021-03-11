#terraform workspace new development

aws ec2 create-key-pair --key-name test-devops --query "KeyMaterial" --output text > ~/.ssh/test-devops.pem  && chmod 400 ~/.ssh/test-devops.pem && ssh-keygen -y -f ~/.ssh/test-devops.pem >> ~/.ssh/test-devops.pem.pub
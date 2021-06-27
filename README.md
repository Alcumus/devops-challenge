
Steps Followed to complete task.
step1: forked the devops-challenge repo. 
step2: created AWS trail account.
step3: created ec2 instance and clone this repo, create new branch named navi.
step3: written terraform scripts to create webserver along with required VPC, Subnet, Natgateway and secirity groups.
step4: installed ansible on the same server and written ansible playbook to install and configure nginx on webserver.
step5: configured cronjob which rens ansible playbook to check nginx status and get its version for every five minutes.

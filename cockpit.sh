#Insall cockpit
sudo yum install cockpit

#Enable cockpit:
sudo systemctl enable --now cockpit.socket
#Open the firewall if necessary:
sudo firewall-cmd --permanent --zone=public --add-service=cockpit
sudo firewall-cmd --reload

#Go to https://(ip):9090
#login with privileged user

#to join a domain, click join domain and enter domain url, computer OU, username and password

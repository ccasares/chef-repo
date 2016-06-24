cd build
l
cd junitreport/
pwd
cd ..
cd ..
vi .gitignore 
git rm --cached -r build
git add .
git status
l
git commit -m "Adding xml files"
git push
git commit -a -m "Change test";git push
git rm --cached -r build
git add .
git commit -m "Clean up";git push
ant junit
ant junit
sudp apt-get install maven
sudo apt-get install maven
l
mvn
l
cd ...
cd ..
l
cd HelloWorldMaven/
l
mvn --version
mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
find / -name settings.xml
find / -name settings.xml 2> /dev/null
sudo vi /etc/maven/settings.xml 
mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
l
cd my-app/
l
cd ..
l
cd my-app/
mvn package
java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App
mvn package
mvn site
mvn test
vi src/test/java/com/mycompany/app/AppTest.java 
mvn test
vi /home/training/HelloWorldMaven/my-app/target/surefire-reports/
vi /home/training/HelloWorldMaven/my-app/target/surefire-reports/com.mycompany.app.AppTest.txt 
cd
cd HelloWorldMaven/
l
git add .
git commit -m "Maven tests"
ls -la
cp ../repomartes/.gitignore .
git add .
git commit -m "Maven tests"
git status
git push
l
cd my-app/
l
cd ..
git rm --cached -r my-app/target
git commit -m "Maven tests"
git push
l
cd my-app/
l
mv * ..
l
cd ..
rmdir my-app/
l
git add .
git add -all .
git add --all .
git status
l
ls -la
l
l
git commit -m "my-app deleted"
git push
git commit -a -m "blah";git push
cd
mkdir docker
cd docker/
wget https://get.docker.com
l
vi index.html 
mv index.html getdocker.sh
l
chmod 755 getdocker.sh 
l
vi getdocker.sh 
l
mv getdocker.sh install_docker.sh
l
sudo install_docker.sh 
./install_docker.sh 
sudo usermod -aG docker training
docker
sudo docker run -it ubuntu
docker ps
sudo docker ps
docker run -it ubuntu
ps -ef | grep docker
sudo service docker
sudo service docker status
sudo service docker start
docker run -it ubuntu
sudo docker run -it ubuntu
sudo mkdir /etc/systemd/system/docker.service.d
cd /etc/systemd/
l
sudo vi /etc/systemd/system/docker.service.d/http-proxy.conf
sudo systemctl daemon-reload
sudo service docker restart
cd -
sudo docker run -it ubuntu
cd -
l
cd system/
l
sudo rm docker.service.d/
sudo rm -rf docker.service.d/
sudo vi /etc/defaults/docker.io
mkdir /etc/defaults
sudo mkdir /etc/defaults
sudo vi /etc/defaults/docker.io
sudo service docker restart
reboot
sudo reboot
l
ls -l
alias l='ls -l'
cd ..
l
git clone https://github.com/ccasares/HelloWorldMaven.git
l
cd HelloWorldMaven/
l
docker ps
clear
docker ps
exit
knife bootstrap 54.204.254.233 -x chef -p PASSWORD --sudo -N node1
clear
knife bootstrap 54.204.254.233 -x chef --sudo -N node1
l
ls -l
cd chef-repo/
ls -l
knife bootstrap 54.204.254.233 -x chef --sudo -N node1
knife node list 
knife node list -v
knife node run_list add node1 "recipe[apache]"
cd
cd chef-repo/
l
l
alias l='ls -l'
l
chef generate cookbook cookbooks/myhaproxy
l
cd cookbooks/
l
l
cd myhaproxy/
l
cat metadata.rb 
vi metadata.rb 
knife node show node1 -a ipaddress
knife node show node1 -a public_ipv4
knife node show node1
knife node show node1 -a IP
knife node show node1 -a cloud
l
cd recipes/
vi default.rb 
cd ..
l
berks install
berks upload
vi recipes/default.rb 
berks upload
knife cookbook list
knife bootstrap 54.204.122.136 -x chef --sudo -N node2
knife node show node2
knife node run_list add node2 "recipe[myhaproxy]"
knife ssh --help
knife node show node1
knife node show node2
knife ssh "*:*" -x chef "sudo chef-client"
reset
knife node show node1
knife node show node2
c d..
cd ..
cd apache/
vi templates/default/index.html.erb
cd ..
l
l
cd apache/
l
vi metadata.rb 
history | grep chef
history | grep knife
history | grep chef
history | grep berks
berks upload
berks install
berks upload
knife ssh "node1" -x chef "sudo chef-client"
knife ssh "*:node1" -x chef "sudo chef-client"
cd ..
l
cd myhaproxy/
l
vi metadata.rb 
vi recipes/default.rb 
berks install
berks upload
l
vi metadata.rb 
berks install
berks upload
knife bootstrap 54.167.183.117 -x chef --sudo -N node3
#knife node run_list add node3 "recipe[apache]"
cd ..
knife node run_list add node3 "recipe[apache]"
knife node show node3
knife ssh "*:node3" -x chef "sudo chef-client"
l
cd myhaproxy/
l
vi recipes/default.rb 
berks install
berks upload
cd ..
knife ssh "*:node2" -x chef "sudo chef-client"
knife role list
cd ..
l
cd roles/
l
vi starter.rb 
cp starter.rb loadbalancer.rb
vi loadbalancer.rb 
cd ..
knife role create web
export EDITOR=vi
knife role create web
l
cd roles/
l
knife roles list
knife role list
knife role
knife role edit web
cd ..
knife role from file load_balancer.rb
cd roles/
knife role from file load_balancer.rb
cd ..
knife role from file load_balancer.rb
cd roles/
l
cd ..
knife role from file loadbalancer.rb
knife role edit web
l
knife role 
l
cd roles/
l
vi loadbalancer.rb 
vi load_balancer.rb
 knife role from file load_balancer.rb
knife role list
knife role show load_balancer
knife node run_list set node2 "role[load_balancer]"
knife node show node2
knife ssh "role:load_balancer" -x chef "sudo chef-client"
knife node show node2
knife node show node1
knife node show node2
knife node show node3
knife node show node2
knife node show node1
l
vi web.rb
knife role from file web.rb
knife role list
knife role show web
knife node run_list set node1 "role[web]"
knife node run_list set node3 "role[web]"
knife ssh "role:web" -x chef "sudo chef-client"
knife node run_list set node3 "role[web]"
reset
ssh chef@54.167.183.11
ssh chef@54.167.183.117
knife ssh "role:web" -x chef -p PASSWORD "sudo chef-client"
knife ssh "role:web" -x chef -p PASSWORD "sudo chef-client"
ping 8.8.8.8
clear
knife ssh "role:web" -x chef -p PASSWORD "sudo chef-client"
knife ssh "role:web" -x chef "sudo chef-client"
knife role show web
l
cd ..
l
cd cookbooks/
l
cd ..
cd cookbooks/myhaproxy/recipes/
l
vi default.rb 
cp default.rb default.rb.ORG
vi default.rb
cd ..
vi metadata.rb 
l
berks update
knife ssh --help
knife ssh "role:load_balancer" -x chef -P PASSWORD "sudo chef-client"
knife environment list
knife environment show _default
knife search node "*:*"
cd ..
l
mkdir environments
cd environments/
l
vi production.rb
l
cd ..
l
history | grep create
chef
chef generate
chef generate recipe
chef generate recipe docker
cd ..
chef generate recipe docker
chef generate recipe . docker
l
chef generate recipe docker
chef generate recipe ./cookbooks docker
chef generate recipe ./cookbooks/docker docker
mkdir -p cookbooks/docker
chef generate recipe ./cookbooks/docker docker
chef generate recipe 
history | grep generate
chef generate cookbook cookbooks/docker
l
cd cookbooks/
l
cd docker/
l
history | grep generate
l
l recipes/
l
l
l
cd recipes/
l
vi docker.rb
cd ..
vi metadata.rb 
l
l
vi recipes/d
vi recipes/docker.rb 
vi recipes/default.rb 
vi recipes/default.rb 
l
cd recipes/
l
mv docker.rb mydocker.rb
l
vi default.rb 
vi default.rb 
vi mydocker.rb 
cd ..
berks install
l
vi metadata.rb 
cd ..
mv docker/ focker
cd -
cd focker/
l
cd recipes/
vi default.rb 
vi mydocker.rb 
cd ..
berks install
history | grep berks
berks update
l
knife node run_list add node1 "recipe[focker]"
knife ssh "*:node1" -x chef "sudo chef-client"
knife ssh "recipe:focker" -x chef "sudo chef-client"
history | grep recipe
knife node run_list add node1 "recipe[focker]"
history | grep ssh
knife ssh
knife ssh --help
l
cd recipes/
l
vi mydocker.rb 
cd ..
berks install
l
vi metadata.rb 
berks install
berks update
knife node run_list show
knife node show node1
knife ssh "*:node1" -x chef -P PASSWORD "sudo chef-client"
cd ..
l
history | grep apache
l
cd focker/
berks upload
cd ..
knife ssh "*:node1" -x chef -P PASSWORD "sudo chef-client"
l
grep -R mydocker
cd focker/recipes/
vi default.rb 
cd ..
l
vi metadata.rb 
berks install
berks update
berks upload
cd ..
knife ssh "*:node1" -x chef -P PASSWORD "sudo chef-client"
cd focker/recipes/
l
vi mydocker.rb 
cd ..
vi metadata.rb 
berks install;berks update; berks upload
cd ..
knife ssh "*:node1" -x chef -P PASSWORD "sudo chef-client"
ssh chef@54.204.254.233
cd ..
l
git add .
cd cookbooks/
git add .
l
cd ..
ls -la
cd cookbooks/
ls -la
l
cd ..
l
git init
git add .
git commit -m "Initial commit"
git push
l
git remote add origin https://github.com/ccasares/chef-repo.git
git remote add origin https://ccasares@github.com/ccasares/chef-repo.git
git remote update origin https://ccasares@github.com/ccasares/chef-repo.git
ls -la
rm -rf .git .gitignore 
git init
git add .
git commit -m "Initial commit"
l
git remote add origin https://ccasares@github.com/ccasares/chef-repo.git
git push -u origin master
hitory
history
man history
l
cd
vi .bash_history 
cp .bash_history chef-repo/
cd chef-repo/
l

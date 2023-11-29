# remove old docker version
sudo apt-get remove docker docker-engine docker.io containerd runc
# update apt package index
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release 
# add docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# set up the stable repository
echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# install docker engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
# verify that docker engine is installed correctly
sudo docker run hello-world
# install docker compose
sudo apt-get install docker-compose-plugin
# verify that docker compose is installed correctly
sudo docker compose version
# add current user to docker group
sudo usermod -aG docker $USER
# verify that current user is added to docker group
id -nG
# verify that current user can run docker commands without sudo
docker -v
# verify that current user can run docker compose commands without sudo
docker compose version

# change docker.sock permission
sudo chown root:docker /var/run/docker.sock
sudo chmod 666 /var/run/docker.sock


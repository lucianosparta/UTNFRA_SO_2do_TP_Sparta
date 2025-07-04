sudo apt update
sudo apt install git
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh 
source  ~/.bashrc  && history -a
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1
sudo vgcreate vg_datos /dev/sdc1  /dev/sdc2
sudo vgcreate vg_temp /dev/sdd1
sudo vgs
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo lvcreate -L +512M vg_temp -n lv_swap
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas 
sudo mkswap /dev/mapper/vg_temp-lv_swap 
cd /var/lib/
ll
cd ..
cd home
cd
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo systemctl status docker
cd /var/lib/
ll
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
cd /
ls
sudo mkdir Rwork
sudo rmdir Rwork/
ls
sudo mkdir work
ls
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
df -h
sudo swapon /dev/mapper/vg_temp-lv_swap
free -h
sudo systemctl restart docker
sudo systemctl status docker
cd
ls
cd UTN-FRA_SO_Examenes/
cd 202406/bash_script/
cat Lista_Usuarios.txt 
cd /usr/local/bin/
sudo vim SpartaAltaUser-Groups.sh
cd
ls
RTA_Examen_20250704/
cd RTA_Examen_20250704/
ls
cat Punto_A.sh 
cat << EOF > Punto_A.sh 
sudo fdisk -l
sudo fdisk /dev/sdc
n
p
1
+1.5G
t
8e
n
p
2
+5M
t
2
8e
wq
sudo fdisk /dev/sdd
n
p
1
+512M
t
8e
wq
sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1
sudo vgcreate vg_datos /dev/sdc1  /dev/sdc2
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
sudo mkfs.ext4 /dev/maper/vg_datos-lv_w
EOF

vim Punto_A.sh 
cat Punto_A.sh 
cd
cd /usr/local/bin/
cd
cd UTN-FRA_SO_Examenes/202406/bash_script/
cat Lista_Usuarios.txt 
cd
cd RTA_Examen_20250704/
ls
cd
cd /usr/local/bin/
vim SpartaAltaUser-Groups.sh 
sudo vim SpartaAltaUser-Groups.sh 
sudo chmod o+x SpartaAltaUser-Groups.sh 
./SpartaAltaUser-Groups.sh sparta /home/sparta/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
cd
cat /etc/passwd
cd /usr/local/bin/
sudo cp SpartaAltaUser-Groups.sh /home/sparta/RTA_Examen_20250704/Punto_B.sh 
cd /home/sparta/RTA_Examen_20250704/
cat Punto_B.sh 
cd
cd UTN-FRA_SO_Examenes/
cd 202406/docker/
cd
sudo usermod -aG docker sparta 
sudos su - sparta
cd UTN-FRA_SO_Examenes/202406/docker/
ls
cat index.html 
vim index.html 
cat index.html 
vim Dockerfile
docker build -t lucianosparta/web1-sparta:latest .
docker login -u lucianosparta
docker push lucianosparta/web1-sparta:latest
ping hub.docker.com
docker image list
docker images
vim Dockerfile 
docker build -t lucianosparta/web1-sparta:latest .
docker system prune -a
docker build -t lucianosparta/web1-sparta:latest .
cd ..
cd ansible/
ansible-galaxy role init punto_d
cd punto_d/templates/
vim datos_alumno.txt.j2
vim datos_equipo.txt.j2
vim datos_alumno.txt.j2 
cd ..
cd vars/
vim main.yml
cd ..
cd tasks/
vim main.yml
cd ..
vim playbook.yml
cd
cd RTA_Examen_20250704/
ls
cd Punto_D.sh
vim Punto_D.sh 
cat Punto_D.sh 
sudo chmod +x RTA_Examen_20250704/Punto_D.sh
cd
sudo chmod +x RTA_Examen_20250704/Punto_D.sh 
RTA_Examen_20250704/Punto_D.sh 
git clone https://github.com/lucianosparta/UTNFRA_SO_2do_TP_Sparta.git
ls
cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_TP_Sparta/
cp -r ~/RTA_Examen_20250704 ~/UTNFRA_SO_2do_TP_Sparta/
cat UTNFRA_SO_2do_TP_Sparta/
cd UTNFRA_SO_2do_TP_Sparta/
ls
cd
history -a

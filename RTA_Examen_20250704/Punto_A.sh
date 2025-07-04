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
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
cd /var/lib/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
cd /
sudo mkdir work
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap

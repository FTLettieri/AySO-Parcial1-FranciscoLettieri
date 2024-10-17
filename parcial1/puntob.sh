
#Seteo la lista de comandos del menu del fdisk para crear particiones
(
echo n
echo p
echo
echo
echo +2.5G
echo n
echo p
echo
echo
echo +2.5G
echo n
echo p
echo
echo
echo +2.5G
echo n
echo e
echo
echo
echo
echo n
echo p
echo
echo
echo +2.5G
echo p
echo w
) | sudo fdisk /dev/sdc

#Formateo las particiones con ext3
sudo mkfs.ext3 /dev/sdc1
sudo mkfs.ext3 /dev/sdc2
sudo mkfs.ext3 /dev/sdc3
sudo mkfs.ext3 /dev/sdc5

#monto las particiones
sudo mount /dev/sdc1 /mnt
sudo mount /dev/sdc2 /mnt
sudo mount /dev/sdc3 /mnt
sudo mount /dev/sdc5 /mnt
lsblk -i /dev/sdc -o NAME,MAJ:MIN,RM,SIZE,RO,TYPE,FSTYPE,MOUNTPOINTS

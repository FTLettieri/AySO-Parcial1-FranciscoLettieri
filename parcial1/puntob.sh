sudo fdisk /dev/sdc
Opcion n para nueva particion
Para las 3 primarias opcion P al tipo de particion, el default al nro de particion y el inicio, y +2.5G para definir el tamaño
Para la particion extended opcion E, y default a todo lo demas
Crear una nueva particion primaria que la va a alocar en el extended con todo default para que lo tome completo
opcion w para grabar los cambios
sudo mkfs.ext3 /dev/sdc1
sudo mkfs.ext3 /dev/sdc2
sudo mkfs.ext3 /dev/sdc3
sudo mkfs.ext3 /dev/sdc5
sudo mount /dev/sdc1 /mnt
sudo mount /dev/sdc2 /mnt
sudo mount /dev/sdc3 /mnt
sudo mount /dev/sdc5 /mnt
lsblk -i /dev/sdc -o NAME,MAJ:MIN,RM,SIZE,RO,TYPE,FSTYPE,MOUNTPOINTS
NAME   MAJ:MIN RM  SIZE RO TYPE FSTYPE MOUNTPOINTS
sdc      8:32   0   10G  0 disk        
|-sdc1   8:33   0  2.5G  0 part ext3   /mnt
|-sdc2   8:34   0  2.5G  0 part ext3   /mnt
|-sdc3   8:35   0  2.5G  0 part ext3   /mnt
|-sdc4   8:36   0    1K  0 part        
`-sdc5   8:37   0  2.5G  0 part ext3   /mnt

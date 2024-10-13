grep memtotal -i /proc/meminfo > AySO-Parcial1-FranciscoLettieri/filtro_basico.txt
sudo dmidecode -t chassis >> AySO-Parcial1-FranciscoLettieri/filtro2.txt
tail -n12 AySO-Parcial1-FranciscoLettieri/filtro2.txt >> AySO-Parcial1-FranciscoLettieri/filtro_basico.txt
rm AySO-Parcial1-FranciscoLettieri/filtro2.txt
Agregue un paso intermedio para filtrar unos datos informativos del comando que traia el dmidecode -t chassis

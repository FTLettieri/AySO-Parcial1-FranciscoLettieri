# Busco la linea memtotal y la agrego
grep memtotal -i /proc/meminfo > AySO-Parcial1-FranciscoLettieri/filtro_basico.txt
# Bisco la info de chasis y la grabo en un segundo archivo
sudo dmidecode -t chassis >> AySO-Parcial1-FranciscoLettieri/filtro2.txt
# me quedo con las ultimas 12 lineas del archivo con la info de chasis
tail -n12 AySO-Parcial1-FranciscoLettieri/filtro2.txt >> AySO-Parcial1-FranciscoLettieri/filtro_basico.txt
# borro ese archivo temporal
rm AySO-Parcial1-FranciscoLettieri/filtro2.txt
#Agregue un paso intermedio para filtrar unos datos informativos del comando que traia el dmidecode -t chassis
cat AySO-Parcial1-FranciscoLettieri/filtro_basico.txt

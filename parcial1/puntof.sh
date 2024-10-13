echo -n Mi IP Publica es:  > AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt | curl -s ifconfig.me -w n >> AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt
echo -n Mi usuario es:  >> AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt | grep -i vagrant /etc/passwd | cut -d : -f1 >> AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt
echo -n El Hash de mi Usuario es:  >> AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt | sudo grep -i vagrant /etc/shadow | cut -d : -f2 >> AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt

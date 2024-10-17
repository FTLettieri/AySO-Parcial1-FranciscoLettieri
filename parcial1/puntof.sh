# con el -n cancelo el salto de linea del echo para poder poner la info de la ip en la misma linea. En el curl agrego un salto de linea porque no se hacia solo
echo -n "Mi IP Publica es: " > AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt | curl -s ifconfig.me -w "\n" >> AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt
# saco el salto de linea para poner el usuario junto el texto, y con el cut me quedo solo con la palabra que es el nombre del usuario
echo -n "Mi usuario es: " >> AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt | grep -i vagrant /etc/passwd | cut -d : -f1 >> AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt
# salco el salto de linea y tambien con el cut me quedo solo con la parte del hash que me interesa
echo -n "El Hash de mi Usuario es: " >> AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt | sudo grep -i vagrant /etc/shadow | cut -d : -f2 >> AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt
cat  AySO-Parcial1-FranciscoLettieri/filtro_avanzado.txt

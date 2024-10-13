sudo adduser programadores
sudo adduser tester
sudo adduser analistas
sudo adduser disenadores
sudo addgroup grupoprogramadores
sudo addgroup grupotester
sudo addgroup grupoanalistas
sudo addgroup grupodisenadores
sudo usermod -a -G grupoprogramadores programadores
sudo usermod -a -G grupotester tester
sudo usermod -a -G grupoanalistas analistas
sudo usermod -a -G grupodisenadores disenadores
programadores grupoprogramadores
id -n -G programadores
programadores grupoprogramadores
id -n -G tester
tester grupotester
id -n -G analistas
analistas grupoanalistas
id -n -G disenadores
disenadores grupodisenadores
sudo chown -R programadores:programadores Examenes-UTN/alumno_1
sudo chmod -R 750 Examenes-UTN/alumno_1
sudo chown -R tester:tester Examenes-UTN/alumno_2 && sudo chmod -R 760 Examenes-UTN/alumno_2
sudo chown -R analistas:analistas Examenes-UTN/alumno_3 && sudo chmod -R 700 Examenes-UTN/alumno_3
sudo chown -R disenadores:disenadores Examenes-UTN/profesores && sudo chmod -R 755 Examenes-UTN/profesores
total 16
drwxr-x--- 5 programadores programadores 4096 Oct 13 16:25 alumno_1
drwxrw---- 5 tester        tester        4096 Oct 13 16:25 alumno_2
drwx------ 5 analistas     analistas     4096 Oct 13 16:25 alumno_3
drwxr-xr-x 2 disenadores   disenadores   4096 Oct 13 16:25 profesores
su programadores
whoami >> Examenes-UTN/alumno_1/validar.txt
su tester
whoami >> Examenes-UTN/alumno_2/validar.txt
su analistas
whoami >> Examenes-UTN/alumno_3/validar.txt
su disenadores
whoami >> Examenes-UTN/profesores/validar.txt
Examenes-UTN/
├── alumno_1
│   ├── parcial_1
│   ├── parcial_2
│   ├── parcial_3
│   └── validar.txt
├── alumno_2
│   ├── parcial_1
│   ├── parcial_2
│   ├── parcial_3
│   └── validar.txt
├── alumno_3
│   ├── parcial_1
│   ├── parcial_2
│   ├── parcial_3
│   └── validar.txt
└── profesores
    └── validar.txt

13 directories, 4 files

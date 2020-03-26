#### Script para mandar una carpeta desde dzero a pc. Se ejecuta desde la consola de su PC 
#NO OLVIDAR ejecutar: chmod u+x carpeta_de_dzero_a_pc.sh para dar permiso a consola de ejecutar esto

# Ejemplo 1 de ejecucion: source carpeta_de_dzero_a_pc.sh /home/mf.sanchez17/carpeta /home/thanatos/Todo/scripts_dzero
#                                                          Primera entrada           Segunda entrada                                          
# Este ejemplo sirve para mandar la carpeta "/home/mf.sanchez17/carpeta" (en dzero) hasta la carpeta "/home/thanatos/Todo/scripts_dzero" en su pc

USER=mf.sanchez17 # Nombre del usuario
SERVER=dzero
FOLDER=$1 # Ubicacion de la carpeta (dentro de dzero) que contiene los archivos que quiere mandar a su pc (Puede usar el comando pwd para saber su ubicacion actual). Es la primera entrada de la ejecucion
PATH_FOLDER=$2 # Nombre de la carpeta (en su pc) a la que quiere mandar su archivo (o archivos)

scp  ${USER}@${SERVER}.uniandes.edu.co:${FOLDER} ${PATH_FOLDER}
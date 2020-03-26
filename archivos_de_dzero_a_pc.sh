#### Script para mandar un archivo desde dzero a pc. Se ejecuta desde la consola de su PC 
#NO OLVIDAR ejecutar: chmod u+x archivos_de_dzero_a_pc.sh para dar permiso a consola de ejecutar esto

# Ejemplo 1 de ejecucion: source archivos_de_dzero_a_pc.sh /home/mf.sanchez17/Fantoma confgamos_mount.sh /home/thanatos/Todo/scripts_dzero
#                                                          Primera entrada            Segunda entrada    Tercera entrada                                      
# Este ejemplo sirve para mandar el archivo "confgamos_mount.sh" desde la carpeta "/home/mf.sanchez17/Fantoma" (en dzero) hasta la carpeta "/home/thanatos/Todo/scripts_dzero" en su pc

# Ejemplo 2 de ejecucion: source archivos_de_dzero_a_pc.sh /home/mf.sanchez17/Fantoma *.sh /home/thanatos/Todo/scripts_dzero                                     
# Este ejemplo sirve para subir todos los archivos que terminen con .sh (*.sh) desde la carpeta "/home/mf.sanchez17/Fantoma" (en dzero) hasta la carpeta "/home/thanatos/Todo/scripts_dzero" en su pc


USER=mf.sanchez17 # Nombre del usuario
SERVER=dzero
FOLDER=$1 # Ubicacion de la carpeta (dentro de dzero) que contiene los archivos que quiere mandar a su pc (Puede usar el comando pwd para saber su ubicacion actual). Es la primera entrada de la ejecucion
FILENAME=$2 # Nombre del archivo (o archivos) que quiere mandar a su pc. Es la segunda entrada de la ejecucion 
PATH_FOLDER=$3 # Nombre de la carpeta (en su pc) a la que quiere mandar su archivo (o archivos)

scp  ${USER}@${SERVER}.uniandes.edu.co:${FOLDER}/${FILENAME} ${PATH_FOLDER}

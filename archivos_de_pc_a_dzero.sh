#### Script para subir un archivo a dzero. Se ejecuta desde la consola de su PC
#NO OLVIDAR ejecutar: chmod u+x archivos_de_pc_a_dzero.sh para dar permiso a consola de ejecutar esto

# Ejemplo 1 de ejecucion: source archivos_de_pc_a_dzero.sh /home/thanatos/Todo/scripts_dzero confgamos_mount.sh /home/mf.sanchez17/Fantoma
#                                                          Primera entrada                   Segunda entrada    Tercera entrada                                      
# Este ejemplo sirve para subir el archivo "confgamos_mount.sh" desde la carpeta "/home/thanatos/Todo/scripts_dzero" (en su pc) hasta la carpeta "/home/mf.sanchez17/Fantoma" en dzero

# Ejemplo 2 de ejecucion: source archivos_de_pc_a_dzero.sh /home/thanatos/Todo/scripts_dzero *.sh /home/mf.sanchez17/Fantoma                                      
# Este ejemplo sirve para subir todos los archivos que terminen con .sh (*.sh) desde la carpeta "/home/thanatos/Todo/scripts_dzero" (en su pc) hasta la carpeta "/home/mf.sanchez17/Fantoma" en dzero


USER=mf.sanchez17 # Nombre del usuario
SERVER=dzero
PATH_FOLDER=$1 # Ubicacion de la carpeta (dentro del pc) que contiene los archivos que quiere subir a dzero (Puede usar el comando pwd para saber su ubicacion actual). Es la primera entrada de la ejecucion
FILENAME=$2 # Nombre del archivo (o archivos) que quiere subir. Es la segunda entrada de la ejecucion
DESTINY_FOLDER=$3 # Nombre de la carpeta en dzero a la que quiere mandar su archivo (o archivos)

scp ${PATH_FOLDER}/${FILENAME} ${USER}@${SERVER}.uniandes.edu.co:${DESTINY_FOLDER}


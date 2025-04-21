## Computacion paralela

#### Tomas Marmay ~ Famaf 2025

### Material teorico
[OMPUTACION PARALELA 2021 - FAMAF](https://cs.famaf.unc.edu.ar/~nicolasw/Docencia/CP/2021/index.html)

### Comandos utiles
- `perf top :` puedo ver las funciones de los programas que corre el cpu
    - `perf top -p <PID> :` filtra solo por el pid de mi programa
    - `perf top -F100 -d10 -p$(pgrep -d, tiny_md) :` un poco mas amigable, no refresca tan rapido para poder leer y filtrar por programa
- `perf stat <program> :` estadisticas de la corrida del programa
- `perf record -F10 -o result.data`: me guarda en un archivo lo que hace perf top
    - `perf report -i result.data`: inspeccionar los resultados
- `btop :` mejora de htop
- `getconf <cache> :` me dice de a cuanto me trae (tamano de memoria) un pedido en la cache
- `ldd <file> :` muestra las librerias linkeadas
- `dd :` COMPLETAR
- `lscpu :` info sobre la computadora
- `echo $? :` devuelve la salida del ultimo programa ejecutado
- `sudo dmidecode -t memory`: informacion sobre la memoria

### Idea de optimizaciones
- Lab1:
    - Cambiar estructuras de datos para disminuir los cache-misses
    - Utilizar distintas flags de compilacion
    - Utilizar distintos compiladores
    - Uso de directivas en variables y funciones para ayudar al compilador
- Lab2:
    - AoS and SoA: Arreglo de Estructuras y Estructuras de Arreglos
    - Intrinsics: Instrucciones especiales [intel intrinsics](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#)
    - Autovectorizacion: lo mismo que *Intrinsics* pero que lo genera el compilador a travez de una flag

### Opciones de compilacion 
- `-m32 :` compila para 32bits
- `-Oi :` con i en {0,1,2,3} niveles de optimizacion
- `-march=native :` optimiza para el la arquitectura del procesador que esta compilando 
- `-save-temps :`
- `-std=<version> :` especificar a que estandar de c compilar
- `-S :` genera el assembler
- `-fopt-info :` informacion sobre la autovectorizacion que hace el compilador
 
### Recordatorios
- `4byes :` 32bits
- `8byes :` 64bits

### Herramientas utiles
- [Compiler explorer](https://godbolt.org/) para compilar funciones por internet y debugear
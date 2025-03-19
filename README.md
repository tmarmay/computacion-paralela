## Computacion paralela

#### Tomas Marmay ~ Famaf 2025

### Material teorico
[OMPUTACION PARALELA 2021 - FAMAF](https://cs.famaf.unc.edu.ar/~nicolasw/Docencia/CP/2021/index.html)

### Comandos utiles
- `perf top :` puedo ver las funciones de los programas que corre el cpu
- `perf stat <program> :` estadisticas de la corrida del programa
- `btop :` mejora de htop
- `getconf <cache> :` me dice de a cuanto me trae (tamano de memoria) un pedido en la cache
- `ldd <file> :` muestra las librerias linkeadas
- `dd :` COMPLETAR
- ``

### Opciones de compilacion 
- `-m32 :` compila para 32bits
- `-Oi :` con i en {0,1,2,3} niveles de optimizacion
- `-march=native :` optimiza para el la arquitectura del procesador que esta compilando 
- `-save-temps :`
- `-std=<version> :` especificar a que estandar de c compilar
- `-S :` genera el assembler

static en struct 
### Recordatorios
- `4byes :` 32bits
- `8byes :` 64bits

### Herramientas utiles
- [Compiler explorer](https://godbolt.org/) para compilar funciones por internet y debugear
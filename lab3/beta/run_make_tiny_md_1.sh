#!/bin/bash

# Usar los argumentos como el número de corridas, número de partículas y compilador
num_runs=${1:-1}           # Número de corridas (por defecto 1)
       m=${2:-4}           # Número m para el calculo del número de partículas (por defecto m=4 -> N=256)
compiler=${3:-gcc}         # Compilador (por defecto gcc)

# Calcular N como 4m^3
num_particles=$((4 * m ** 3))
#num_particles=137
data_array=("$num_particles")

# Mostrar información
echo "Número de corridas: $num_runs"
echo "m: $m"
echo "Número de partículas: $num_particles   # N = 4m^3"
echo "Compilador: $compiler"
echo ""

# Modificar Makefile para cambiar el compilador y el número de partículas
makefile="Makefile"

# Cambiar el compilador

# sed  -> Es un programa de edición de texto que se usa para realizar transformaciones de texto de forma no interactiva
#  -i  -> modifica el archivo directamente en vez de enviar la salida a la terminal
# sed -i s|...|...| "File"
# grep -> buscar texto en archivos. La opción -q -> indica que grep debe ejecutar la búsqueda de forma "silenciosa" sin mostrar
#         ninguna salida en la terminal.
# Los comentarios en varias lineas se hacen con ( : '.....' )

grep -q "^CC\s*=" "$makefile" && sed -i "s|^CC\s*=.*|CC = $compiler|" "$makefile"
grep -q "^WFLAGS\s*=" "$makefile" && sed -i "s|^WFLAGS\s*=.*|WFLAGS = -s -march=native -DN=$num_particles -std=c11 -Wall -Wextra -g -ffast-math -mavx|" "$makefile"

##############################################################################################################

# Limpiar y compilar el proyecto
make clean && make
echo ""
max_flops=0
max_flops_output=""  # Para almacenar la información de la corrida con el máximo GFLOPs/s

# seq 1 $num_runs -> genera una secuencia de números desde 1 hasta $num_runs
#          $(...) -> Permite ejecutar un comando y capturar su salida. Todo lo que esté dentro se
#		     ejecutará y el resultado se asignará a la variable
# 	     2>&1 -> Redirige la salida de error a la salida estándar para capturar ambos en 'output'
#     	        | -> Este es un operador de pipe. Se utiliza para redirigir la salida del comando a su
#                    izquierda como entrada del comando a su derecha
#	      awk -> Lenguaje de programación utilizado principalmente para la manipulación de datos en
#		     formato de texto. '{print $1}' le dice a awk que imprima la primera palabra (o campo)
#		      de las líneas que le envían. Los campos se separan por espacios en blanco.


for i in $(seq 1 $num_runs); do
    echo "Run #$i:"
    # Captura estadísticas de perf
    output=$(perf stat -e instructions -e fp_ret_sse_avx_ops.all taskset -c 28 ./tiny_md 2>&1)
    #perf top -F100 -d10 -p$(pgrep -d, tiny_md)

    # Extrae las operaciones de punto flotante, el tiempo y el tiempo transcurrido
    flops=$(echo "$output" | grep "fp_ret_sse_avx_ops.all" | awk '{print $1}')
    Time=$(echo "$output" | grep "seconds time elapsed" | awk '{print $1}')

    # Reemplazar la coma por un punto si es necesario
    flops="${flops//,/}"
    Time="${Time//,/.}"

    # Calcula GFLOPs/s
    if [[ -n $flops && -n $Time && $(echo "$Time > 0" | bc) -eq 1 ]]; then
        flops_per_sec=$(echo "scale=5; $flops / $Time / 1000000000" | bc)  # Ajustado a 5 decimales
        echo "GFLOPs/s: $flops_per_sec, FLOPs: $flops, Time elapsed: $Time seconds"

        # Actualiza el valor máximo si es necesario
        if (( $(echo "$flops_per_sec > $max_flops" | bc) )); then
            max_flops=$flops_per_sec
            max_flops_output="Max GFLOPs/s: $max_flops, FLOPs: $flops, Time elapsed: $Time seconds"
        fi
    else
        echo "Error capturando datos."
    fi
done

# Mostrar el resultado final
if [[ -n $max_flops_output ]]; then
    echo ""
    echo "$max_flops_output"
fi

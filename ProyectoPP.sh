#!/bin/bash

# Función para mostrar el menú de metodologías ágiles
mostrar_menu_agile() {
    echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:"
    echo "    1. SCRUM"
    echo "    2. X.P."
    echo "    3. Kanban"
    echo "    4. Crystal"
    echo "    5. Salir"
}

# Función para mostrar el menú de metodologías tradicionales
mostrar_menu_tradicional() {
    echo "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:"
    echo "    1. Cascada"
    echo "    2. Espiral"
    echo "    3. Modelo V"
    echo "    4. Salir"
}

# Función para mostrar el menú de opciones dentro de una sección
mostrar_opciones_seccion() {
    echo "Usted está en la sección $1, seleccione la opción que desea utilizar:"
    echo "    1. Agregar información"
    echo "    2. Buscar"
    echo "    3. Eliminar información"
    echo "    4. Leer base de información"
    echo "    5. Volver al menú anterior"
}

# Función para agregar información a un archivo .inf
agregar_informacion() {
    archivo="$1.inf"
    echo "Ingrese el identificador del concepto que desea agregar:"
    read identificador
    echo "Ingrese la definición del concepto:"
    read definicion
    echo "[$identificador] .- $definicion" >> "$archivo"
    echo "Información agregada exitosamente a $archivo."
}

# Función para buscar información en un archivo .inf
buscar_informacion() {
    archivo="$1.inf"
    echo "Ingrese el identificador del concepto que desea buscar:"
    read identificador
    resultado=$(grep -i "^\[$identificador\]" "$archivo")
    if [ -z "$resultado" ]; then
        echo "Concepto no encontrado."
    else
        echo "Encontrado: $resultado"
    fi
}

# Función para eliminar información de un archivo .inf
eliminar_informacion() {
    archivo="$1.inf"
    echo "Ingrese el identificador del concepto que desea eliminar:"
    read identificador
    if grep -q "^\[$identificador\]" "$archivo"; then
        read -p "¿Está seguro de que desea eliminar el concepto '$identificador'? (s/n): " confirmacion
        if [[ $confirmacion =~ ^[Ss]$ ]]; then
            sed -i "/^\[$identificador\]/d" "$archivo"
            echo "Concepto '$identificador' eliminado exitosamente de $archivo."
        else
            echo "Eliminación cancelada."
        fi
    else
        echo "Concepto no encontrado."
    fi
}

# Función para leer la base de información de un archivo .inf
leer_base_informacion() {
    archivo="$1.inf"
    echo "Contenido de $archivo:"
    cat "$archivo"
}

# Función principal que maneja la lógica de la aplicación
main() {
    case $1 in
        -a)
            mostrar_menu_agile
            while true; do
                read -p "Seleccione una opción: " opcion
                case $opcion in
                    1)
                        seccion="scrum"
                        ;;
                    2)
                        seccion="xp"
                        ;;
                    3)
                        seccion="kanban"
                        ;;
                    4)
                        seccion="crystal"
                        ;;
                    5)
                        echo "Saliendo..." 
                        exit 0
                        ;;
                    *)
                        echo "Opción inválida. Intente de nuevo."
                        continue
                        ;;
                esac

                while true; do
                    mostrar_opciones_seccion "$seccion"
                    read -p "Seleccione una opción: " opcion_seccion
                    case $opcion_seccion in
                        1)
                            agregar_informacion "$seccion"
                            ;;
                        2)
                            buscar_informacion "$seccion"
                            ;;
                        3)
                            eliminar_informacion "$seccion"
                            ;;
                        4)
                            leer_base_informacion "$seccion"
                            ;;
                        5)
                            echo "Volviendo al menú anterior..."
                            mostrar_menu_agile
                            break
                            ;;
                        *)
                            echo "Opción inválida. Intente de nuevo."
                            ;;
                    esac

                    echo "¿Qué desea hacer a continuación?"
                    echo "    1. Realizar otra acción"
                    echo "    2. Seleccionar otra metodología"
                    echo "    3. Terminar la ejecución"
                    read -p "Seleccione una opción: " opcion_post_accion
                    case $opcion_post_accion in
                        1)
                            continue
                            ;;
                        2)
                            mostrar_menu_agile
                            break
                            ;;
                        3)
                            echo "Terminando la ejecución..."
                            exit 0
                            ;;
                        *)
                            echo "Opción inválida. Volviendo al menú de acciones..."
                            ;;
                    esac
                done
            done
            ;;
        -t)
            mostrar_menu_tradicional
            while true; do
                read -p "Seleccione una opción: " opcion
                case $opcion in
                    1)
                        seccion="cascada"
                        ;;
                    2)
                        seccion="espiral"
                        ;;
                    3)
                        seccion="modelov"
                        ;;
                    4)
                        echo "Saliendo..." 
                        exit 0
                        ;;
                    *)
                        echo "Opción inválida. Intente de nuevo."
                        continue
                        ;;
                esac

                while true; do
                    mostrar_opciones_seccion "$seccion"
                    read -p "Seleccione una opción: " opcion_seccion
                    case $opcion_seccion in
                        1)
                            agregar_informacion "$seccion"
                            ;;
                        2)
                            buscar_informacion "$seccion"
                            ;;
                        3)
                            eliminar_informacion "$seccion"
                            ;;
                        4)
                            leer_base_informacion "$seccion"
                            ;;
                        5)
                            echo "Volviendo al menú anterior..."
                            mostrar_menu_tradicional
                            break
                            ;;
                        *)
                            echo "Opción inválida. Intente de nuevo."
                            ;;
                    esac

                    echo "¿Qué desea hacer a continuación?"
                    echo "    1. Realizar otra acción"
                    echo "    2. Seleccionar otra metodología"
                    echo "    3. Terminar la ejecución"
                    read -p "Seleccione una opción: " opcion_post_accion
                    case $opcion_post_accion in
                        1)
                            continue
                            ;;
                        2)
                            mostrar_menu_tradicional
                            break
                            ;;
                        3)
                            echo "Terminando la ejecución..."
                            exit 0
                            ;;
                        *)
                            echo "Opción inválida. Volviendo al menú de acciones..."
                            ;;
                    esac
                done
            done
            ;;
        *)
            echo "Opción inválida. Use -a para metodologías ágiles o -t para metodologías tradicionales."
            exit 1
            ;;
    esac

    
}

# Verificar que se pasó al menos un argumento
if [ $# -eq 0 ]; then
    echo "Error: Debe especificar un parámetro (-a o -t)."
    exit 1
fi

# Llamar a la función principal con el primer argumento pasado al script
main $1

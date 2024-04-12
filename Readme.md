# Proyecto del Primer Parcial

##Programe en bash una aplicación que requiera un parámetro al ejecutarse -a (metodologías ágiles) y -t (metodologías tradicionales ) desplegará el siguiente menú en la terminal:

*Opción -a 

Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:

            SCRUM
            X.P.
            Kanban
            Crystal

*Opción -t

Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:

            Cascada
            Espiral
            Modelo V

(2 puntos)

##2. Una vez seleccionado un tema en especifico deberá de mostrar las siguientes opciones:

Usted esta en la sección ${nombre de la sección}, seleccione la opción que desea utilizar.

            Agregar información
            Buscar
            Eliminar información
            Leer base de información.

(0.5 punto)

##3. La idea de este sub menú es almacenar información en archivos con extensión .inf (uno por cada metodología) el cual tendrá la siguiente estructura:

[concepto(1)] .- Definición.

[concepto(2)] .- Definición.

[concepto(3)] .- Definición.

.

.

.

[concepto(n)] .- Definición.

Ejemplo:

[sprint] .-  Es el nombre que va a recibir cada uno de los ciclos o iteraciones que vamos a tener dentro de dentro de un proyecto

[burndown chart] .- es una representación gráfica del trabajo por hacer en un proyecto en el tiempo.

[product owner] .- -El P.O. se asegura de que el equipo Scrum trabaje de forma adecuada desde la perspectiva del negocio.

(2 puntos)

##4. Al agregar información se debe solicitar el identificador del concepto y la definición al guardarlo se debe de formatear y anexar al final del archivo.

(0.5 punto)

##5. Al ejecutar la opción buscar deberá solicitar el elemento a buscar dentro del archivo (se debe ubicar el identificador utilizando expresiones regulares).

(0.5 punto)

##6. Al eliminar información debe solicitarnos el concepto y quitarlo del archivo.

(1 punto)

##7. Al seleccionar leer la base de información nos debe de imprimir en pantalla el contenido del archivo.

(0.5 punto)

##8. Al terminar la ejecución de un comando debe pedirnos una siguiente opción, volver al menú anterior o terminar la ejecución.

(0.5 punto)

##9. Empaquete en una imagen de docker su aplicación bash, deberá al ejecutarse un contenedor lanzar inmediatamente su aplicación. 

(2 puntos)

##10. Suba a GitHub, gitlab y bitbucket su proyecto, el repositorio deberá contener un archivo readme.md con la plantilla de proyectos vista en la tarea de clase y deberá contener los nombres de cada integrante del equipo, adicionalmente suba la imagen a dockerhub.

(0.5 punto)


##Puntos importantes:
```
        Todos los miembros del equipo deberán entregar un archivo de texto con las urls del repositorio en su cuenta de Moodle.
        Si un miembro del equipo no sube el archivo en su cuenta no afectará la calificación del equipo sin embargo él recibirá cero en la calificación del proyecto.
        Todos los miembros del equipo deben contribuir vía git a su proyecto  si algún miembro no cuenta con cambios dentro del repositorio no le contará la calificación.
```

# Integrantes del Equipo
```
Johann David Gomez Villalobos
Moises Aaron Bustillos Sandoval
Emiliano Loya Flores
```

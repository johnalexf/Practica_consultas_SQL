# Ejercicios de Consultas SQL - Base de Datos `ventasuno`

### Descripción
Este repositorio contiene la resolución técnica y documentada de una serie de ejercicios de consultas SQL, desarrollados como parte de la formación en el programa **Análisis y Desarrollo de Software (ADSO) del SENA**. 

El objetivo principal es fortalecer las habilidades en lógica de bases de datos, optimización de queries y gestión de versiones con Git. Los ejercicios abarcan operaciones que van desde selecciones simples y consultas multitabla (JOINs), hasta consultas de resumen, subconsultas y lenguaje de definición y manipulación de datos (DDL y DML).

### Estructura del Proyecto
El proyecto se organiza de forma atómica para facilitar la auditoría de cada solución:

```text
/
├── consultas/            # Archivos .sql independientes por ejercicio
├── backup_db.sql         # Script para restauración de la base de datos ventasuno
└── README.md             # Documentación principal del proyecto
```

### Tecnologías y Estándares
* **Motor de Base de Datos:** MySQL (Soportado bajo el motor InnoDB).
* **Versionamiento:** Git siguiendo el estándar **Conventional Commits**.
* **Metodología:** Resolución autónoma con auditoría técnica iterativa.

### Cómo utilizar este repositorio
1.  **Restauración de Datos:** Importar el archivo `backup_db.sql` (o en su defecto `ventasuno.txt`) en su gestor de bases de datos MySQL.
2.  **Ejecución:** Consultar y ejecutar los archivos contenidos en la carpeta `/consultas` siguiendo el orden numérico establecido.
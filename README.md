# actividad-AWS-pipeline

## Descripción del proyecto

Este repositorio fue creado para desarrollar una actividad relacionada con control de versiones, estrategia de ramas y automatización básica de despliegue.

El proyecto se divide en distintos componentes que permiten practicar un flujo de trabajo ordenado en GitHub, separando cada avance en ramas independientes antes de integrarlo en la rama principal.

## Estrategia de ramas

Para este repositorio se utiliza una estrategia de ramas de características, donde cada componente se trabaja por separado.

Las ramas utilizadas en el desarrollo son:

- `feature/frontend`: contiene el archivo `index.html` con una página básica "Hola Mundo".
- `feature/docker`: contiene el archivo `Dockerfile` basado en la imagen oficial `nginx:alpine`.
- `feature/docs`: contiene la documentación general del proyecto en este archivo `README.md`.

Cada una de estas ramas debe integrarse a `main` mediante un Pull Request independiente.

## Propósito del repositorio

El propósito de este repositorio es practicar:

- creación y uso de ramas feature
- trabajo separado por componentes
- uso de commits ordenados
- publicación de cambios en GitHub
- creación de Pull Requests hacia la rama `main`

## Estructura básica del proyecto

El repositorio considera los siguientes archivos principales:

- `index.html`
- `Dockerfile`
- `README.md`

## Flujo de trabajo

1. Se crea una rama para cada componente del proyecto.
2. Se realizan los cambios necesarios en esa rama.
3. Se guarda el avance mediante un commit.
4. Se sube la rama al repositorio remoto.
5. Se crea un Pull Request hacia `main`.

## Objetivo

El objetivo de esta actividad es aplicar buenas prácticas básicas de control de versiones, utilizando GitHub como plataforma de colaboración y organización del desarrollo.

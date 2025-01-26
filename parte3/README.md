# Proyecto CI/CD con Docker

Este proyecto utiliza **GitHub Actions** para automatizar el proceso de construcción y despliegue de una imagen Docker para un servidor NGINX. A continuación se describen los pasos a seguir.

## Requisitos previos

Asegúrate de tener los siguientes elementos configurados antes de continuar:

1. [Tener Docker instalado en tu computadora.](https://docs.docker.com/get-started/get-docker/)

2. Este proyecto usa [Docker Compose](https://docs.docker.com/compose/) para gestionar los contenedores de Docker.

3. Debes tener una cuenta en **[DockerHub]** ya que la imagen de Docker será subida a tu cuenta de [DockerHub](https://hub.docker.com/)

# **Configuracion**:

Crear la carpeta `.github/workflows/`. Luego mueve el archivo `ci-cd.yml` a la carpeta correspondiente.

Para probar que el flujo de trabajo CI/CD funciona correctamente en GitHub, realiza los siguientes pasos:

Haz un cambio en cualquiera de los archivos del proyecto (por ejemplo, en el archivo index.html).

Añade los cambios:

git add .

git commit -m "Prueba del flujo de trabajo CI/CD"

git push origin main

**Crear un Token en DockerHub y agregarlo a GitHub:**

Para permitir que GitHub Actions interactúe con DockerHub y pueda iniciar sesión, crear imágenes y subirlas a tu cuenta de DockerHub, necesitarás crear un token de acceso personal en DockerHub y luego agregarlo como un secreto en tu repositorio de GitHub.

## Si queres que los cambios afecten solo al index.html descomentar la linea 7 y 8 del archivo ci-cd.yml

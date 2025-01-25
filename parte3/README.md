# Proyecto CI/CD con Docker

Este proyecto utiliza **GitHub Actions** para automatizar el proceso de construcción y despliegue de una imagen Docker para un servidor NGINX. A continuación se describen los pasos a seguir.

## Requisitos previos

Asegúrate de tener los siguientes elementos configurados antes de continuar:

1. **Docker**: Tener Docker instalado en tu computadora.

2. **Docker Compose**: Este proyecto usa Docker Compose para gestionar los contenedores de Docker.

3. **DockerHub**: Debes tener una cuenta en [DockerHub] ya que la imagen de Docker será subida a tu cuenta de DockerHub.

**Configuracion**

Crear la carpeta `.github/workflows/`. Luego mueve el archivo `ci-cd.yml` a la carpeta correspondiente.

Para probar que el flujo de trabajo CI/CD funciona correctamente en GitHub, realiza los siguientes pasos:

Haz un cambio en cualquiera de los archivos del proyecto (por ejemplo, en el archivo index.html).

Añade los cambios:

git add .

git commit -m "Prueba del flujo de trabajo CI/CD"

git push origin main

## Si queres que los cambios afecten solo al index.html descomentar la linea 7 y 8 del archivo ci-cd.yml

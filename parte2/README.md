# **DESCRIPCION**
Este proyecto consiste en dockerizar y desplegar una aplicación con un backend desarrollado en Django y un frontend en React.js, utilizando docker-compose para orquestar ambos servicios, junto con una base de datos PostgreSQL.

# **REQUISITOS**

Tener instalado : [Docker](https://docs.docker.com/get-started/get-docker/)

Tener instalado : [Docker-Compose](https://docs.docker.com/compose/install/)

**La configuración incluye:**

Frontend: Un contenedor para la aplicación React.js.

Backend: Un contenedor para la aplicación Django.

Base de Datos: Un contenedor para PostgreSQL.

# Instrucciones de uso:

Clona el repositorio: `git clone https://github.com/usuario/parte2.git`

Ir al directorio `cd parte2`

Usar Docker Compose para construir y ejecutar los servicios: `docker-compose up --build`

Servicios: 

-Frontend (React.js): Disponible en `http://localhost:3000`

-Backend (Django): Disponible en `http://localhost:8000`

Cuando quieras detener el servicio: `docker-compose down`

# **Solucion de Problema**

Si recibes un error indicando que los puertos `3000` o `8000` están en uso, revisar que no haya otro servicio usandolos:

 `lsof -i :3000` / `lsof -i :8000`

# **CONFIGURACION EN AWS**

-**Crear Repositorios en ECR**:

Acceder a Amazon ECR y crea dos repositorios, uno para el backend (django-backend) y otro para el frontend (react-frontend).

Crear imágenes Docker y publicarlas en ECR: Asegurar de tener Docker configurado para interactuar con ECR.

-**Iniciar sesión**:

`aws ecr get-login-password --region <REGION> | docker login --username AWS --password-stdin <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com`

-**Construir imagen del back-end**:

`docker build -t django-backend ./backend`

-**Etiquetar la imagen para ECR**:

`docker tag django-backend:latest <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/django-backend:latest`

-**Subir la imagen**:

`docker push <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/django-backend:latest`

-**Repetir el proceso para el front-end**:

`docker build -t react-frontend ./frontend`

`docker tag react-frontend:latest <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/react-frontend:latest`

`docker push <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/react-frontend:latest`


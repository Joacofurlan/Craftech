Elegí este diagrama de red porque combina alta disponibilidad, escalabilidad automática y seguridad.

El diagrama representa una arquitectura de AWS diseñada para garantizar alta disponibilidad y escalabilidad. La infraestructura está distribuida en dos zonas de disponibilidad (Availability Zones) y consta de un servicio de front-end, back-end, y dos bases de datos: una relacional y otra no relacional.

-Application Load Balancer (ALB):
 ALB recibe el tráfico entrante (HTTP/HTTPS) y distribuye las solicitudes hacia las instancias ECS Fargate en las subredes privadas.
-Availability Zone:
Esto asegura que si una zona falla, la otra siga funcionando, garantizando disponibilidad continua.
-Frontend:
Las solicitudes se enrutan a través del ALB hacia los contenedores en AWS Fargate que alojan el frontend de la aplicación. Estos contenedores escalan automaticamente segun la demanda
-Backend:
El frontend envía las solicitudes al backend, que también se ejecuta en contenedores AWS Fargate.Este servicio maneja la lógica principal de la aplicación y actúa como intermediario para acceder a las bases de datos.
-Bases de datos:
El backend accede a Amazon RDS (base de datos relacional para datos estructurados) y Amazon DocumentDB (base de datos NoSQL para datos no estructurados).
-IAM Role:
Para garantizar la seguridad y el control de acceso, el backend utiliza un IAM Role que otorga permisos específicos y restringidos para comunicarse con las bases de datos.
Subredes privadas y publicas:
Los contenedores y las bases de datos están alojados en subredes privadas, protegiéndolos de accesos no autorizados desde Internet. Si estos servicios necesitan conectarse a Internet, el tráfico pasa a través de un NAT Gateway ubicado en una subred pública.
-APIs:
Si el backend necesita conectarse a APIs externas, el tráfico pasa a través del NAT Gateway y sale al Internet Gateway.

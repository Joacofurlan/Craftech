#!/bin/sh

if [ "$SQL_DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

# Uncomment below to flush db e.g. after running tests
# Just make sure you really mean it 
# python manage.py flush --no-input

# We have base custom user model so need to makemigrations out of box

python manage.py makemigrations  # Se hace antes de git commit para que me quede en el repositorio ejemplo: 001_initial
python manage.py flush --no-input
python manage.py migrate
python manage.py loaddata initial_data.json
# python manage.py collectstatic --noinput
python manage.py runserver 0.0.0.0:8000



exec "$@"

#Lo que haria es el makemigration genera los comandos de sql en un archivo python, yo a ese archivo lo meteria al git y borraria el comando makegiration del entrypoint y tambien
# el flush y el migrate y load data y los pondria en otro scrips aparte
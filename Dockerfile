# pull official base image
FROM python:3.8.3-alpine
# set work directory
# install dependencies
RUN pip install --upgrade pip
RUN pip install django
RUN pip install djangorestframework
RUN apk --no-cache add curl

RUN mkdir -p /tutorial
WORKDIR /tutorial

# EXPOSE 8000

COPY . /tutorial
# CMD python manage.py runserver
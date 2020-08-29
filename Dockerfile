# Pull base image
FROM python:3.8.3

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /BookStore

COPY Pipfile Pipfile.lock /BookStore/
RUN pip install pipenv && pipenv install --system

COPY . /BookStore/
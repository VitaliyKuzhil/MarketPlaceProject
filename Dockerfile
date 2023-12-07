# syntax=docker/dockerfile:1

# Set root image
FROM python:3.10.12-alpine

# Image author
LABEL authors="vitaliy_kuzhil"

# image version
LABEL version="1.0"

# Set work directory into conteiner
WORKDIR ./market_place

# Set settings environments
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Copy only requirements to docker cache
COPY requirements.txt /market_place/requirements.txt

# Run command into container (Install dependencies)
RUN pip install -r /market_place/requirements.txt

# Copy project (. - current position) to folder into conteiner (WORKDIR)
COPY . /market_place

# Set inside port
EXPOSE 8080

# Set prosess into container
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

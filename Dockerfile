FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app/

ENV PYTHONUNBUFFERED=1
ENV DJANGO_SETTINGS_MODULE=helloworld.settings

EXPOSE 8080

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8080"]


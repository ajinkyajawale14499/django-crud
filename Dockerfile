FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt
COPY . /app

CMD python manage.py wait_for_db && python manage.py runserver 0.0.0.0:8000

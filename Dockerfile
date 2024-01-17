FROM python:3.11

# Создаем рабочий каталог внутри контейнера
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY .. /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

# Устанавливаем Gunicorn
RUN pip install gunicorn

# Запускаем Flask приложение с использованием Gunicorn
CMD python3 -m app

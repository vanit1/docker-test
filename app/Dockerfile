FROM python:3.11

# Создаем рабочий каталог внутри контейнера
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Копируем содержимое текущего каталога в контейнер
COPY .. /usr/src/app

RUN pip install --no-cache-dir -r requirements.txt
# Запускаем приложение
CMD python3 main.py

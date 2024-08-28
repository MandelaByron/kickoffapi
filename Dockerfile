FROM python

WORKDIR /app

COPY . /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

RUN chmod +x /app/entrypoint.sh

ENV DJANGO_SETTINGS_MODULE=backend.settings

#ENTRYPOINT [ "sh" , "/app/entrypoint.sh" ]

#CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]



FROM public.ecr.aws/docker/library/python:3.10-alpine

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app

COPY /analytics/ /app

RUN pip install --no-cache-dir -r /app/requirements.txt

EXPOSE 8000

ENV DB_USERNAME myuser
ENV DB_PASSWORD mypassword
ENV DB_HOST 127.0.0.1
ENV DB_PORT 5433
ENV DB_NAME mydatabase

CMD ["python", "app.py"]
# CMD python app.py
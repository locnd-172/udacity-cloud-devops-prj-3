FROM public.ecr.aws/docker/library/python:3.10-alpine

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app

COPY /analytics/ /app

RUN pip install --no-cache-dir -r /app/requirements.txt

EXPOSE 8000

CMD ["python", "app.py"]
# CMD python app.py
FROM python:3.9-slim

RUN mkdir /app
COPY . /app
WORKDIR /app
ENV PYTHONPATH=/app

ENTRYPOINT ["python3"]
CMD ["main.py"]

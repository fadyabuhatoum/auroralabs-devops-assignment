FROM python:3.9-slim

RUN mkdir /my/app
COPY . /my/app
WORKDIR /my/app
ENV PYTHONPATH=/my/app

ENTRYPOINT ["python3"]
CMD ["main.py"]

FROM python:3.8.15-slim-bullseye

WORKDIR /mlflow

COPY requirements.txt /mlflow/
RUN pip install -r requirements.txt

EXPOSE 5000

COPY docker-entrypoint.sh .

CMD [ "./docker-entrypoint.sh" ]
FROM svizor/zoomcamp-model:3.11.5-slim

RUN pip install pipenv

WORKDIR /app

COPY ["Pipfile", "Pipfile.lock", "./"]

RUN pipenv install --system --deploy

COPY ["q6_predict.py", "./"] 

EXPOSE 9600

ENTRYPOINT [ "gunicorn", "--bind=0.0.0.0:9600", "q6_predict:app" ]
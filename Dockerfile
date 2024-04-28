FROM python:3.12.2-alpine

RUN pip install mysql-connector-python

WORKDIR /app

COPY . .

RUN python -m pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]

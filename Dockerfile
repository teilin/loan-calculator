FROM python:3.7-alpine

WORKDIR /code
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT ["python", "/code/src/main.py"]

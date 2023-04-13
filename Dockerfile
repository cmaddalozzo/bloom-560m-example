FROM python:3.7-slim

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

RUN pip install -e .
ENTRYPOINT ["python", "transformer.py"]

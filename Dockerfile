FROM python:3.8-slim

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

CMD ["uvicorn", "--host=0.0.0.0", "main:app", "--port", "8000", "--reload"]





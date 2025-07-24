FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8200

CMD ["uvicorn", "fast_api:app", "--host", "0.0.0.0", "--port", "8200"]

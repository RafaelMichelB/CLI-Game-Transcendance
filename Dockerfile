FROM python:3.10-slim

RUN apt-get update && apt-get install -y curl
WORKDIR /app

COPY CLI-game/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["tail", "-f", "/dev/null"]

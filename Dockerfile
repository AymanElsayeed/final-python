FROM python:3.8.0a1-alpine3.9

LABEL description="This image for learining only, for devOps course"

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["sh", "-c", "python app.py"]
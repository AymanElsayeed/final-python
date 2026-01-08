FROM python:3.7

LABEL description="This image for learining only, for devOps course"

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
EXPOSE 80

CMD ["sh", "-c", "python app.py"]
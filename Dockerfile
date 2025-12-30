FROM ggvick/python3.9:latest

LABEL description="This image for learining only, for devOps course"

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["sh", "-c", "python app.py"]
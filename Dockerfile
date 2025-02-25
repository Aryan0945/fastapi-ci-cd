FROM ubuntu:latest
WORKDIR /app
RUN apt update && apt install -y python3 python3-pip
COPY requirements.txt .
RUN pip3 install -r requirements.txt --break-system-packages
COPY . .
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]


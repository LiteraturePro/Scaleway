FROM python:3.9-alpine

# Create app directory
WORKDIR /usr/src/app

# Expose Ports
ENV PORT 8080
EXPOSE 8080

# Install libraries
COPY requirements.txt .
RUN pip install -qr requirements.txt
COPY server.py .

CMD ["python3", "./server.py"]

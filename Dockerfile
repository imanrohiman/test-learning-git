# Gunakan base image Debian trixie-backports
FROM debian:trixie-backports

# Install Python & pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Install Flask
RUN pip3 install flask

# Copy app.py
COPY app.py /app.py

# Set environment variable default
ENV APP_COLOR=green

# Expose port
EXPOSE 5050

# Jalankan Flask app
CMD ["python3", "/app.py"]


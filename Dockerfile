# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements first for caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy entire source code
COPY . .

# Copy Firebase Admin SDK JSON into container
# Giả sử file nằm cùng thư mục Dockerfile ngoài đời thực
COPY flutterfinal-34766-firebase-adminsdk-fbsvc-390d3ef6d5.json /app/

# Expose WebSocket port
EXPOSE 8765

# Command to run your app
CMD ["python", "main.py"]

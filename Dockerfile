FROM python:3.12-slim

WORKDIR /app

# Install deps first (better caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# If your app is a web server, expose a port (optional)
# EXPOSE 8000

# Change this to how your app runs:
CMD ["python", "main.py"]
# Use a Python 3.14 slim image
FROM python:3.14-slim

WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Run the Celery worker with info log level
CMD ["celery", "-A", "tasks", "worker", "--loglevel=info"]
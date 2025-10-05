# Use official Python base image
FROM python:3.13.3-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV FLASK_APP=src.app.main
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development

# Set working directory
WORKDIR /app

# Copy requirements first for caching
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Expose port 5000
EXPOSE 5000

# Command to run the app
CMD ["flask", "run"]

# official Python image as the base
FROM python:3.9-slim

# working directory
WORKDIR /app

# Copying and installing dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copying application code
COPY app.py .

# Setting environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_PORT=5000
ENV FLASK_RUN_HOST=0.0.0.0

# Exposing Flask port
EXPOSE 5000

# Run the app
CMD ["flask", "run"]

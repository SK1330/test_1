# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY app.py app.py

# Specify the command to run the application
CMD ["python", "app.py"]

# Expose port 5000 for the Flask application
EXPOSE 5000


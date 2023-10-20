# Use an official Python runtime as the base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install application dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application source code into the container
COPY . .

# Expose a port that the Flask app will listen on
EXPOSE 5000

# Define the command to run your Flask application
CMD ["python3", "app.py"]

# Dockerfile
# Use a minimal base image for faster builds and smaller image size
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY app.py .

# Install any necessary dependencies (Flask in this case)
RUN pip install Flask

# Expose the port the application listens on
EXPOSE 80

# Define the command to run the application
CMD ["python", "app.py"]

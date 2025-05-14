# Use official python run time as a parent image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy current directory contents into container at /app
COPY . /app

# Install necessary packages
RUN pip install flask
RUN pip install --no-cache-dir -r requirements.txt

# Make 5000 PORT available for outside this container
EXPOSE 5000

# Define env variable
ENV FLASK_APP=app.py 

# Run flask app
CMD ["flask", "run", "--host=0.0.0.0"]
# Use the official Python image as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code to the container
COPY . .
RUN python manage.py migrate

# Expose the port that the Django app will run on
EXPOSE 8000

CMD ["python", "manage.py", "runserver"]
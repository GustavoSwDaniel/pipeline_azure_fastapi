FROM python:3.10

# Set the working directory in the container
COPY . .

# Install the required packages
RUN pip install -r requirements.txt

# Expose the port
EXPOSE 8000

# Run the application

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

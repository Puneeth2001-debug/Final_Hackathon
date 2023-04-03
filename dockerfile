# Set the base image to the official Python image
FROM python:3.9

# Set the working directory to /app
WORKDIR /HACK

# Copy the requirements file into the container and install the dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the app code into the container
COPY churn.py .

# Expose the default port for Streamlit
EXPOSE 1234

# Set the command to start the Streamlit app
CMD ["streamlit", "run", "churn.py"]

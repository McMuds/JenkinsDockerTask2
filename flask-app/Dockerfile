# Use Python 3.7 as a base image
FROM python:3.7
# Copy contents into image
WORKDIR /app
COPY . .
# install pip dependencies from requirements file
RUN pip install -r requirements.txt
# Expose correct port
# check the app for the port number to choose
EXPOSE 5000
# Create an entrypoint
ENTRYPOINT ["python", "app.py"]



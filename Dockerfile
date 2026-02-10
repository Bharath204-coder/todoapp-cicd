#Use lightweight python base image
FROM python:3.9-slim

#Set working directory
WORKDIR /app

#Copy app code
COPY app/ /app

#Install dependencies
RUN pip install flask

#Expose port
EXPOSE 5000

#start application
CMD [ "python","app.py" ]
#Use lightweight python base image
FROM python:3.9-slim

#Set working directory
WORKDIR /app

#Copy app code
COPY . .

#Install dependencies
RUN pip install -r requirements.txt

#Expose port
EXPOSE 5000

#start application
CMD [ "python","app/app.py" ]
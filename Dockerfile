#python version 
FROM python:3.11  

#directory 
WORKDIR /app

#requirements to install
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

#app  
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]

#created this docker file for one container.  


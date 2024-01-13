# image - the most efficient in terms of computing resources
FROM python:3.7-slim

# working directory
WORKDIR /app

# install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy all the content of the current folder to the container's working directory
COPY . .

# expose Port on the container
EXPOSE 5000

# command
CMD ["python", "app.py"]

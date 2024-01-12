# image
FROM python:3.7-slim

# working directory
WORKDIR /app

# install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy this to the container
COPY . .

# expose Port
EXPOSE 5000

# command
CMD ["python", "app.py"]

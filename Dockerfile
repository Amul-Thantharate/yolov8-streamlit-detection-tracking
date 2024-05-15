FROM python:latest

# Set the working directory

WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app

COPY requirements.txt ./ /usr/src/app/

# Install any needed packages specified in requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /usr/src/app

COPY . /usr/src/app

# Run app.py when the container launches

EXPOSE 8051

CMD ["streamlit", "run", "app.py", "--server.port=8051", "--browser.serverAddress=0.0.0.0"]
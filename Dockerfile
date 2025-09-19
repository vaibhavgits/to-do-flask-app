FROM python:3.14-rc-slim

WORKDIR /flask-app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app code
COPY ./flask_app .

# Expose the port that our Flask app is listening on
EXPOSE 5500

# Command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5500"]
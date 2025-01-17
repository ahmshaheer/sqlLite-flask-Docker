FROM python:3.9-slim

WORKDIR /app


COPY requirements.txt /app/

COPY . /app


RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app.py
ENV FLASK_ENV=development

# Run Flask when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]


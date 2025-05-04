FROM python:3.10-buster
WORKDIR /proj
COPY . .
RUN pip install -r requirements/backend.in
CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8000"]

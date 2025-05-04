FROM python:3.10-buster
WORKDIR /proj
COPY requirements/backend.in .
RUN pip install -r backend.in
COPY . .
CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8000"]
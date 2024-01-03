# Django
FROM python:3.10.12

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED=1

WORKDIR /djangoapp

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install uvicorn
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "djangoapp.asgi:application", "--host", "0.0.0.0", "--port", "8000"]

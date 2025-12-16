FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    pkg-config \
    gcc \
    wkhtmltopdf \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install --upgrade pip \
    && pip install -r erp_project/requirements.txt

EXPOSE 8000

CMD ["bash", "-c", "python erp_project/manage.py migrate && python erp_project/manage.py runserver 0.0.0.0:8000"]

FROM python:3.12-slim

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install \
    dbt-core==1.7.0 \
    dbt-postgres==1.7.0

WORKDIR /usr/app

CMD ["tail", "-f", "/dev/null"]
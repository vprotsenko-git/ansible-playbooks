FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    sshpass \
    git \
    && pip install --no-cache-dir ansible

WORKDIR /ansible

COPY . .

CMD ["ansible-playbook", "main.yml"]
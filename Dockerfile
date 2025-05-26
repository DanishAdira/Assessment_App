FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENV TZ=Asia/Tokyo

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    tzdata \
    libgl1 \
    libglib2.0-0 \
    && ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && pip3 install --upgrade pip

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "/app/api/predictor.py"]

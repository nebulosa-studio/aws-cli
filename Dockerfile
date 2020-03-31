FROM python:3-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
        groff \
    && rm -rf /var/lib/apt/lists/*
RUN pip install awscli

CMD ["aws"]

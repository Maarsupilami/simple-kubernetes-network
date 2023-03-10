FROM python:3.10.0-alpine3.15

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY src src

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=30s --start-period=30s --retries=5 \
            CMD curl -f http://localhost:8080/status || exit 1
ENTRYPOINT [ "python", "./src/app.py" ]
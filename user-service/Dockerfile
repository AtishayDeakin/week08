FROM python:3.12-alpine

WORKDIR /app

COPY requirements.txt .

RUN apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev postgresql-dev

RUN pip install \
    --no-cache-dir \
    --root-user-action=ignore \
    -r requirements.txt

RUN apk del .build-deps

COPY . .

RUN adduser -D appuser
RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

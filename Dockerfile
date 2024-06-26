# Usa una imagen base de Python
FROM python:3.10-slim
WORKDIR /programas/api-citas-medicas
RUN pip install fastapi pydantic mysql-connector-python passlib python-jose uvicorn
COPY . .
EXPOSE 8011
CMD ["uvicorn", "app_citas_medicas:app", "--host", "0.0.0.0", "--port", "8011"]



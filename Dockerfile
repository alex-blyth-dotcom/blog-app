# syntax=docker/dockerfile:1

FROM python:3.13-slim

# Set working directory
WORKDIR /app
ENV PYTHONPATH="/app"
# Install dependencies
RUN apt-get update && apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY alex-blyth-blog /app/

# Build Tailwind CSS


RUN cd /app/ \
    && npm install --prefix theme/static_src \
    && python manage.py tailwind build

RUN python manage.py tailwind build
RUN python manage.py collectstatic --noinput


# Expose port (optional; for local dev clarity)
EXPOSE 8000

# Start app using Gunicorn
CMD ["gunicorn", "core.wsgi:application", "--bind", "0.0.0.0:8000"]

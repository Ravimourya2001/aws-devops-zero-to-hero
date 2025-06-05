# -------- Stage 1: Build --------
FROM python:3.8-alpine as builder

# Install build dependencies
RUN apk add --no-cache \
    build-base \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev

# Set working directory
WORKDIR /app

# Copy only the requirements to leverage Docker layer caching
COPY requirements.txt .

# Install Python dependencies to a temporary folder
RUN pip install --prefix=/install --no-cache-dir -r requirements.txt

# -------- Stage 2: Runtime --------
FROM python:3.8-alpine

# Install only runtime dependencies
RUN apk add --no-cache libffi openssl

# Set working directory
WORKDIR /app

# Copy installed packages from builder stage
COPY --from=builder /install /usr/local

# Copy application code
COPY . .

# Expose the port Flask will run on
EXPOSE 5000

# Command to run your app
CMD ["python", "app.py"]

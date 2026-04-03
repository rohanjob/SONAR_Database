FROM postgres:16-alpine

# Set environment variables
ENV POSTGRES_DB=ssp_books
ENV POSTGRES_USER=ssp_admin
ENV POSTGRES_PASSWORD=sspbooks2026

# Copy initialization scripts
COPY init.sql /docker-entrypoint-initdb.d/01-init.sql
COPY seed.sql /docker-entrypoint-initdb.d/02-seed.sql

# Expose default PostgreSQL port
EXPOSE 5432

# Health check
HEALTHCHECK --interval=30s --timeout=10s --retries=5 \
    CMD pg_isready -U $POSTGRES_USER -d $POSTGRES_DB || exit 1

# 🗄️ SSP Books - Database Layer

PostgreSQL database for the SSP Books course buying platform.

## 📋 Schema Overview

| Table | Description |
|-------|-------------|
| `users` | User accounts and profiles |
| `categories` | Course categories |
| `courses` | Course catalog with pricing |
| `orders` | Purchase orders |
| `order_items` | Individual items in orders |
| `cart_items` | Shopping cart items |
| `reviews` | Course reviews and ratings |
| `enrollments` | User course enrollments |

## 🚀 Quick Start

### Using Docker Compose
```bash
docker-compose up -d
```

### Manual Setup
```bash
# Create database
createdb ssp_books

# Run schema
psql -U postgres -d ssp_books -f init.sql

# Seed data
psql -U postgres -d ssp_books -f seed.sql
```

## 🔧 Configuration

| Variable | Default | Description |
|----------|---------|-------------|
| `POSTGRES_DB` | `ssp_books` | Database name |
| `POSTGRES_USER` | `ssp_admin` | Database user |
| `POSTGRES_PASSWORD` | `sspbooks2026` | Database password |

## 🔄 CI/CD

- **Azure Pipelines**: `azure-pipelines.yml`
- **SonarQube**: `sonar-project.properties`

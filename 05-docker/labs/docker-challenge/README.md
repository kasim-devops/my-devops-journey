# Docker Challenge — Multi-Container Application

## What I Built
A multi-container application using Docker Compose consisting of a Python
Flask web application and a Redis database. Flask handles the routes and
Redis stores a persistent visit counter.

## Services
- **Flask app**: serves two routes on port 5002
- **Redis**: key-value store that tracks visit count, with a named volume for persistence

## Routes
- `/` — displays a welcome message
- `/count` — increments and displays the visit count from Redis

## Files
- `app.py` — Flask application
- `Dockerfile` — builds the Flask app image
- `docker-compose.yml` — defines and runs both services

## Commands Used
```bash
# Build and start containers
docker compose up --build

# Stop and remove containers
docker compose down

# Check running containers
docker ps
```

## What I Learnt
- How to containerise a Python Flask app with Docker
- How to use Docker Compose to manage multiple containers
- How containers communicate with each other over a Docker network
- How to use Redis as a key-value store from Flask
- How named volumes persist data across container restarts
- How to map ports between the container and host machine

## Testing
- `http://localhost:5002` — welcome message
- `http://localhost:5002/count` — visit counter, increments on each refresh
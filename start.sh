#!/bin/bash

# Start Gunicorn for Django
echo "Starting Gunicorn..."
cd /opt/render/project/src/backend
exec gunicorn backend.backend.wsgi:application \
    --bind 0.0.0.0:$PORT \
    --workers 3 \
    --pythonpath /opt/render/project/src/backend

from celery import Celery

# Use environment variable or default broker URL
app = Celery('tasks')

@app.task
def add(x, y):
    return x + y
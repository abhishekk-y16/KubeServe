from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {
        "message": "FastAPI Kubernetes App Running Successfully"
    }

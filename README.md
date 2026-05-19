# k8s-fastapi-project

Minimal FastAPI app containerized and deployable to Minikube.

Quick start:

```powershell
pip install -r requirements.txt
uvicorn app:app --reload
# Open http://127.0.0.1:8000
```

Docker build & run:

```powershell
docker build -t fastapi-k8s-app .
docker run -p 8000:8000 fastapi-k8s-app
# Open http://localhost:8000
```

Kubernetes (Minikube):

```powershell
minikube start
minikube image load fastapi-k8s-app
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
minikube service fastapi-service
```

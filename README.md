# 🚀 CI/CD Pipeline with Jenkins & Docker – Auto Deployment To-Do App

This project demonstrates a complete real-world CI/CD pipeline using **Jenkins, Docker, and DockerHub** to automatically build, push, and deploy a containerized Flask web application.
It simulates production DevOps workflows including secure credentials handling, persistent Jenkins setup, and automated container deployment.

---

## 📌 Project Architecture

GitHub Repo
↓
Jenkins Pipeline
↓
Docker Build
↓
DockerHub Registry
↓
Auto Deployment (Docker Container)

---

## 🛠 Tech Stack

- Jenkins (CI/CD Automation)
- Docker & DockerHub (Containerization & Registry)
- GitHub (Source Control)
- Linux & Shell Scripting
- Flask (Web Application)

---

## ⚙️ Key Features

✅ Automated Docker image build via Jenkins  
✅ Secure DockerHub login using Jenkins Credentials  
✅ Auto push to DockerHub registry  
✅ Automatic container deployment on pipeline success  
✅ Persistent Jenkins environment using Docker volumes  
✅ Real-world CI/CD workflow simulation  

---

## 📂 Project Structure
├── app/
│ └── app.py
├── templates/
│ └── index.html
├── static/
│ └── style.css
├── Dockerfile
├── Jenkinsfile
├── requirements.txt
└── README.md


---

## 🚀 Jenkins Pipeline Flow

1. Build Docker image  
2. Authenticate with DockerHub securely  
3. Push latest image to registry  
4. Pull updated image  
5. Stop old container  
6. Deploy new container automatically  

---

## ▶️ How to Run Locally

### Clone Repository
```bash
git clone https://github.com/your-username/todoapp-cicd.git
cd todoapp-cicd
```
## Build & Run
```bash
docker build -t todo-app .
docker run -d -p 5000:5000 todo-app
```
## Open browser:
```arduino
http://localhost:5000
```
---

## 📈 DevOps Concepts Practiced
1. Continuous Integration
2. Continuous Deployment
3. Container lifecycle management
4. Secure credential handling
5. Infrastructure automation
6. Real-world CI/CD design


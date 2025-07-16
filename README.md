[![Open in VS Code](https://img.shields.io/badge/Open%20in-VS%20Code-blue?logo=visualstudiocode&style=for-the-badge)](vscode://vscode.git/clone?url=https://github.com/princelailan/week-7-devops-deployment-assignment.git)

# 🚀 Week 7 DevOps & Deployment Assignment – MERN Stack

Welcome to my Week 7 assignment for the PLP MERN Stack Program!  
This project covers production deployment, CI/CD pipelines, environment variable configs, and monitoring for a full-stack MERN app.

---

## 🧰 Tech Stack

- **Frontend**: React + Vite
- **Backend**: Express.js (Node)
- **Database**: MongoDB Atlas
- **CI/CD**: GitHub Actions
- **Hosting**:
  - Frontend → Netlify
  - Backend → Render

---

## 🌍 Live URLs

| Service   | URL                                  |
|-----------|--------------------------------------|
| Frontend  | [Live Frontend](https://your-netlify-url.netlify.app) |
| Backend   | [Live API](https://your-backend-url.onrender.com/api) |

---

## ⚙️ Running Locally

1. Clone the repo:
```bash
git clone https://github.com/princelailan/week-7-devops-deployment-assignment.git
cd week-7-devops-deployment-assignment

  
  
    

    

Install dependencies for both frontend and backend:

bash
Copy
Edit
cd backend && npm install
cd ../frontend && npm install

  
  
    

    

Add .env files in both folders using .env.example as reference.

Run locally:

bash
Copy
Edit
# Start backend
cd backend
npm run dev

# Start frontend
cd ../frontend
npm run dev

  
  
    

    

🔐 Environment Variables
Both the backend and frontend require .env files.
See .env.example for reference.

🧪 CI/CD & GitHub Actions
Workflows used:

frontend-ci.yml

backend-ci.yml

frontend-cd.yml

backend-cd.yml

Located in .github/workflows/.

🛡️ Monitoring
Health check route: /healthz

Tools: helmet, morgan, uptime monitoring enabled

📸 Screenshots


🙌 Author
👑 Joseph Onyango (Prince Lailan)
GitHub: @princelailan
Email: jesuspromisesmedia@gmail.com

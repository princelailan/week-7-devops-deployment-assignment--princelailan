# MERN Stack App - Week 7 Deployment and DevOps Assignment

## Project Description

This is a full MERN stack application built from scratch as part of a Week 7 Deployment and DevOps assignment. The app consists of:

- **Backend:** Express.js API connected to MongoDB Atlas, with middleware for security, logging, and CORS.
- **Frontend:** React app built with Vite, fetching data from the backend and displaying API messages.
- **CI/CD:** GitHub Actions workflows for continuous integration and deployment of both backend and frontend.
- **Deployment:** Backend deployed on Render, frontend deployed on Netlify.
- **Monitoring:** Health check endpoint, logging with Morgan, and documentation for integrating monitoring tools like Sentry and UptimeRobot.

## Deployment Links

- Frontend: [Your Netlify or Vercel URL here]
- Backend: [Your Render or Railway URL here]

## CI/CD Pipeline Screenshots

*(Add screenshots of your GitHub Actions workflows running here)*

## Monitoring Strategy

- Health check endpoint at `/healthz` for uptime monitoring.
- Request logging with Morgan.
- Instructions to integrate Sentry for error monitoring.
- Use of external uptime monitoring services like UptimeRobot.

## Setup Instructions

1. Clone the repository:

```bash
git clone https://github.com/yourusername/your-repo.git
cd your-repo
```

2. Backend setup:

```bash
cd backend
cp .env.example .env
# Edit .env to add your MongoDB Atlas connection string and other variables
npm install
npm run dev
```

3. Frontend setup:

```bash
cd ../frontend
cp .env.example .env
# Edit .env to set VITE_BACKEND_URL if needed
npm install
npm run dev
```

4. Access the frontend at `http://localhost:3000` (default Vite port).

## Environment Variables

Refer to `.env.example` files in both `backend` and `frontend` directories for required environment variables.

## Notes

- The backend uses `nodemon` for development.
- The frontend uses Vite for fast development and production builds.
- CI/CD workflows automatically run tests and deploy on push to `main` branch.
- Deployment scripts are provided in the `deployment/` directory.

---

Thank you for reviewing this project!

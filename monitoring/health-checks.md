# Monitoring and Health Checks

## Health Check Endpoint

The backend exposes a health check endpoint at:

```
GET /healthz
```

This endpoint returns a 200 OK status with a simple "OK" message, which can be used by uptime monitoring services to verify the backend is running.

## Logging

The backend uses `morgan` middleware for HTTP request logging. Logs are output to the console and can be redirected or collected by log management tools in production.

## Adding Monitoring Tools

### Sentry

To add error monitoring with Sentry:

1. Create a Sentry account and project.
2. Install the Sentry SDK in the backend:

```bash
npm install @sentry/node
```

3. Initialize Sentry in `server.js`:

```js
const Sentry = require('@sentry/node');
Sentry.init({ dsn: process.env.SENTRY_DSN });
app.use(Sentry.Handlers.requestHandler());
// your routes here
app.use(Sentry.Handlers.errorHandler());
```

4. Add `SENTRY_DSN` to your environment variables.

### UptimeRobot

Use UptimeRobot or similar services to monitor the `/healthz` endpoint by configuring a HTTP(s) monitor pointing to:

```
https://your-backend-url/healthz
```

Set alert thresholds and notification preferences as needed.

## Summary

- Use `/healthz` for uptime monitoring.
- Use `morgan` logs for request tracing.
- Integrate Sentry for error monitoring.
- Use external services like UptimeRobot for uptime alerts.

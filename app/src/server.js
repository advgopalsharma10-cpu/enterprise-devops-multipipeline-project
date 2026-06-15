const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const APP_ENV = process.env.APP_ENV || 'training';

app.get('/', (req, res) => {
  res.json({
    message: 'Enterprise DevOps CI/CD application is running',
    environment: APP_ENV,
    version: process.env.APP_VERSION || '1.0.0'
  });
});

app.get('/health', (req, res) => {
  res.status(200).json({ status: 'ok', service: 'enterprise-node-devops-app' });
});

app.listen(PORT, () => {
  console.log(`Application started on port ${PORT}`);
});

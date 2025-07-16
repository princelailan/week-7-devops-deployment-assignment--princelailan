const request = require('supertest');
const express = require('express');

const app = express();
app.get('/api', (req, res) => {
  res.json({ message: 'API running' });
});

describe('GET /api', () => {
  it('should return API running message', async () => {
    const res = await request(app).get('/api');
    expect(res.statusCode).toEqual(200);
    expect(res.body).toHaveProperty('message', 'API running');
  });
});

const express = require('express');
const { Pool } = require('pg');

const app = express();
const port = 3000;

const pool = new Pool({
  host: process.env.DB_HOST || 'db',
  user: process.env.DB_USER || 'postgres',
  password: process.env.DB_PASSWORD || 'postgres',
  database: process.env.DB_NAME || 'frogs_db',
  port: 5432,
});

app.get('/api/health', (req, res) => {
  res.json({ status: 'ok', version: '1.0.0' });
});

app.get('/api/frogs', async (req, res) => {
  const { type } = req.query;
  try {
    let query = 'SELECT * FROM frogs';
    let params = [];

    if (type && type !== 'all') {
      query += ' WHERE type_slug = $1';
      params.push(type);
    }
    query += ' ORDER BY id ASC';

    const result = await pool.query(query, params);
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Помилка підключення до бази даних' });
  }
});

app.listen(port, () => {
  console.log(`API сервер запущено на порту ${port}`);
});
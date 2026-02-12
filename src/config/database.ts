import mysql, { Pool } from 'mysql2/promise';

// Database configuration - prefer environment variables. Do NOT hardcode credentials here.
const dbConfig = {
  host: process.env.DB_HOST || 'localhost',
  port: parseInt(process.env.DB_PORT || '3306'),
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
};

console.log('📝 Database config:', {
  host: dbConfig.host,
  port: dbConfig.port,
  database: dbConfig.database || '<not set>'
});

// Lazy-load connection pool
let pool: Pool | null = null;

export function getPool(): Pool {
  if (!pool) {
    pool = mysql.createPool(dbConfig as any);
  }
  return pool;
}

// Test database connection
export async function testConnection() {
  try {
    const connection = await getPool().getConnection();
    console.log('✅ Database connected successfully');
    connection.release();
    return true;
  } catch (error) {
    console.error('❌ Database connection failed:', error);
    return false;
  }
}

export default getPool;
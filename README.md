# SQL Mini Online Store

A small SQL project that simulates an online store database.

## Features
- Relational database design
- Multi-table JOIN queries
- Aggregation and grouping
- Real-world business questions

## Files
- `schema.sql` – database schema
- `seed.sql` – sample data
- `queries.sql` – example queries

## Example Queries
- Order summary per user
- Total order amount
- Top spending customer
- Users with no orders

## ▶️ How to Run (SQLite)

```bash
# 1. Create database
sqlite3 store.db

# 2. Create tables
.read schema.sql

# 3. Insert sample data
.read seed.sql

# 4. Run queries
.read queries.sql

# 5. Exit SQLite
.exit
```

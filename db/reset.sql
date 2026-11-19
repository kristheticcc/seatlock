-- Warning: This file delete all project tables and data.
-- Only run when intentionally resetting the database.

DROP TABLE IF EXISTS users CASCADE
DROP TABLE IF EXISTS events CASCADE
DROP TABLE IF EXISTS venues CASCADE
DROP TABLE IF EXISTS performance CASCADE
DROP TABLE IF EXISTS reservations CASCADE
DROP TABLE IF EXISTS reservation_item CASCADE
DROP TABLE IF EXISTS audit_log CASCADE
DROP TABLE IF EXISTS seats CASCADE
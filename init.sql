CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS chunks (
    pdf            TEXT,
    page           int,
    block_id       int,
    block_text     TEXT,
    chunk_id       int,
    chunk_text     text,
    embedding      vector(384)
);
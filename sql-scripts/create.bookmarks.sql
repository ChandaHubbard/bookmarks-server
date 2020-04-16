CREATE TABLE IF NOT EXISTS bookmarks (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    thumbnail TEXT,
    category genre NOT NULL,
    date_added TIMESTAMP DEFAULT now() NOT NULL,
    checked BOOLEAN DEFAULT false,
    web_address TEXT NOT NULL,
    date_of_last_visit TIMESTAMP DEFAULT now() NOT NULL,
    login_needed BOOLEAN DEFAULT false,
    password_needed BOOLEAN DEFAULT false
);

DROP TYPE IF EXISTS genre;
CREATE TYPE genre AS ENUM (
    'Productivity',
    'Finance',
    'News',
    'Sports',
    'Search',
    'Games'
);
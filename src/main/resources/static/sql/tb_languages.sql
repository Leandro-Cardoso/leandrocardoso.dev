CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create languages
CREATE TABLE tb_languages (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    language VARCHAR(100) NOT NULL,
    language_br VARCHAR(100) NOT NULL,
	reading VARCHAR(100) NOT NULL,
	reading_br VARCHAR(100) NOT NULL,
	writing VARCHAR(100) NOT NULL,
	writing_br VARCHAR(100) NOT NULL,
	speaking VARCHAR(100) NOT NULL,
	speaking_br VARCHAR(100) NOT NULL,
	listening VARCHAR(100) NOT NULL,
	listening_br VARCHAR(100) NOT NULL
);

-- Insert languages
INSERT INTO tb_languages (language, language_br, reading, reading_br, writing, writing_br, speaking, speaking_br, listening, listening_br) VALUES
    ('Portuguese', 'Português', 'Native', 'Nativo', 'Native', 'Nativo', 'Native', 'Nativo', 'Native', 'Nativo'),
	('English', 'Inglês', 'Intermediate', 'Intermediário', 'Intermediate', 'Intermediário', 'Intermediate', 'Intermediário', 'Intermediate', 'Intermediário');

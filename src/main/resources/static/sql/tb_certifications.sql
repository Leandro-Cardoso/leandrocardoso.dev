CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create certifications
CREATE TABLE tb_certifications (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    institution VARCHAR(100) NOT NULL,
    certificate VARCHAR(100) NOT NULL,
	certificate_br VARCHAR(100) NOT NULL,
    year INT NOT NULL
);

-- Insert certifications
INSERT INTO tb_certifications (institution, certificate, certificate_br, year) VALUES
    ('Microlins', 'Computer Assembly and Maintenance', 'Montagem e Manutenção de Computadores', 2005),
	('Microlins', 'Computer Networking', 'Redes de Computadores', 2005),
	('Microlins', 'Web Designer', 'Web Designer', 2006),
	('USP', 'Introduction to Computer Science with Python', 'Introdução à Ciência da Computação em Python', 2019),
	('Udacity', 'Fundamentals of Data Science I', 'Fundamentos de Data Science I', 2019),
	('SENAI', 'Cybersecurity Fundamentals', 'Nivelamento de Cibersegurança', 2024),
	('SENAI', 'Introduction to Cybersecurity', 'Básico de Cibersegurança', 2024);

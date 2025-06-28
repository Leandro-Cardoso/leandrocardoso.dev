CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create academic qualifications
CREATE TABLE tb_academic_qualifications (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    university VARCHAR(100) NOT NULL,
    course VARCHAR(100) NOT NULL,
	course_br VARCHAR(100) NOT NULL,
    start_year INT NOT NULL,
	graduation_year INT NOT NULL,
	status VARCHAR(100) NOT NULL,
	status_br VARCHAR(100) NOT NULL
);

-- Insert academic qualifications
INSERT INTO tb_academic_qualifications (university, course, course_br, start_year, graduation_year, status, status_br) VALUES
    ('Estacio de Sá', 'Accounting', 'Contabilidade', 2007, 2011, 'Incomplete', 'Incompleto'),
	('UERJ', 'Physics', 'Física', 2017, 2020, 'Incomplete', 'Incompleto'),
    ('Univassouras', 'Software Engineering', 'Engenharia de Software', 2023, 2027, 'Studying', 'Cursando');

-- CREATE TABLES:

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

-- Create certifications
CREATE TABLE tb_certifications (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    institution VARCHAR(100) NOT NULL,
    certificate VARCHAR(100) NOT NULL,
	certificate_br VARCHAR(100) NOT NULL,
    year INT NOT NULL
);

-- Create contacts
CREATE TABLE tb_contacts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    link VARCHAR(100) NOT NULL,
    image_url VARCHAR(100) NOT NULL
);

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

-- Create techs
CREATE TABLE tb_techs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    image_url VARCHAR(100) NOT NULL
);

-- Create projects
CREATE TABLE tb_projects (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    name_br VARCHAR(100),
	description TEXT NOT NULL,
	description_br TEXT NOT NULL,
	github VARCHAR(100) UNIQUE,
	link VARCHAR(100) UNIQUE,
	image_url VARCHAR(100) NOT NULL
);

-- Create projects techs
CREATE TABLE tb_projects_techs (
    project_id UUID NOT NULL,
    tech_id UUID NOT NULL,
	PRIMARY KEY (project_id, tech_id),
	FOREIGN KEY (project_id) REFERENCES tb_projects(id) ON DELETE CASCADE,
    FOREIGN KEY (tech_id) REFERENCES tb_techs(id) ON DELETE CASCADE
);

-- Create work experiences
CREATE TABLE tb_work_experiences (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    job_title VARCHAR(100) NOT NULL,
    job_title_br VARCHAR(100) NOT NULL,
	company VARCHAR(100),
	start_year INT NOT NULL,
	end_year INT,
	responsibilities TEXT NOT NULL,
	responsibilities_br TEXT NOT NULL
);

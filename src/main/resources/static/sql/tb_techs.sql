CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create techs
CREATE TABLE tb_techs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    image_url VARCHAR(100) NOT NULL
);

-- Insert techs
INSERT INTO tb_techs (name, image_url) VALUES
	('JavaScript', 'images/tech/javascript.svg'),
	('TypeScript', 'images/tech/typescript.svg'),
	('React', 'images/tech/react.svg'),
    ('C', 'images/tech/c.svg'),
    ('C++', 'images/tech/cplus.svg'),
	('C#', 'images/tech/csharp.svg'),
	('Git', 'images/tech/git.svg'),
	('Python', 'images/tech/python.svg'),
	('Flask', 'images/tech/flask.png'),
	('Django', 'images/tech/django.svg'),
	('SQL', 'images/tech/sql.svg'),
	('PostgreSQL', 'images/tech/postgresql.svg'),
	('Java', 'images/tech/java.svg'),
	('Spring', 'images/tech/spring.svg'),
	('Spring Boot', 'images/tech/spring-boot.svg');

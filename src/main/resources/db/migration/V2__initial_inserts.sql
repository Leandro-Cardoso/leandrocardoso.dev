-- INITIAL INSERTS:

-- Insert academic qualifications
INSERT INTO tb_academic_qualifications (university, course, course_br, start_year, graduation_year, status, status_br) VALUES
    ('Estacio de Sá', 'Accounting', 'Contabilidade', 2007, 2011, 'Incomplete', 'Incompleto'),
	('UERJ', 'Physics', 'Física', 2017, 2020, 'Incomplete', 'Incompleto'),
    ('Univassouras', 'Software Engineering', 'Engenharia de Software', 2023, 2027, 'Studying', 'Cursando');

-- Insert certifications
INSERT INTO tb_certifications (institution, certificate, certificate_br, year) VALUES
    ('Microlins', 'Computer Assembly and Maintenance', 'Montagem e Manutenção de Computadores', 2005),
	('Microlins', 'Computer Networking', 'Redes de Computadores', 2005),
	('Microlins', 'Web Designer', 'Web Designer', 2006),
	('USP', 'Introduction to Computer Science with Python', 'Introdução à Ciência da Computação em Python', 2019),
	('Udacity', 'Fundamentals of Data Science I', 'Fundamentos de Data Science I', 2019),
	('SENAI', 'Cybersecurity Fundamentals', 'Nivelamento de Cibersegurança', 2024),
	('SENAI', 'Introduction to Cybersecurity', 'Básico de Cibersegurança', 2024);

-- Insert contacts
INSERT INTO tb_contacts (name, link, image_url) VALUES
    ('WhatsApp', 'https://wa.me/5522992399041', 'images/social/whatsapp.svg'),
    ('E-Mail', 'mailto:leandrocardosodev@gmail.com?subject=Portfolio', 'images/social/mail.svg'),
    ('GitHub', 'https://github.com/Leandro-Cardoso', 'images/social/github.svg'),
    ('LinkedIn', 'https://www.linkedin.com/in/leandro-cardoso-992529266', 'images/social/linkedin.svg'),
    ('X', 'https://x.com/LeandroCDev', 'images/social/x.svg');

-- Insert languages
INSERT INTO tb_languages (language, language_br, reading, reading_br, writing, writing_br, speaking, speaking_br, listening, listening_br) VALUES
    ('Portuguese', 'Português', 'Native', 'Nativo', 'Native', 'Nativo', 'Native', 'Nativo', 'Native', 'Nativo'),
	('English', 'Inglês', 'Intermediate', 'Intermediário', 'Intermediate', 'Intermediário', 'Intermediate', 'Intermediário', 'Intermediate', 'Intermediário');

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

-- Insert projects
INSERT INTO tb_projects (name, name_br, description, description_br, github, link, image_url) VALUES
    ('Other GitHub Projects', 'Outros Projetos do GitHub', 'Other unfeatured GitHub projects.', 'Outros projetos do GitHub sem destaque.', 'https://github.com/Leandro-Cardoso?tab=repositories', null, 'images/gears.svg'),
	('Projects', null, 'Test...', 'Teste...', 'github', 'teste', 'images/gears.svg');

-- Insert projects techs
INSERT INTO tb_projects_techs (project_id, tech_id) VALUES
    (
    	(SELECT id FROM tb_projects WHERE github = 'https://github.com/Leandro-Cardoso?tab=repositories'),
    	(SELECT id FROM tb_techs WHERE name = 'JavaScript')
    ),
	(
    	(SELECT id FROM tb_projects WHERE github = 'https://github.com/Leandro-Cardoso?tab=repositories'),
    	(SELECT id FROM tb_techs WHERE name = 'React')
    ),
	(
    	(SELECT id FROM tb_projects WHERE github = 'https://github.com/Leandro-Cardoso?tab=repositories'),
    	(SELECT id FROM tb_techs WHERE name = 'C++')
    ),
	(
    	(SELECT id FROM tb_projects WHERE github = 'https://github.com/Leandro-Cardoso?tab=repositories'),
    	(SELECT id FROM tb_techs WHERE name = 'Python')
    ),
	(
    	(SELECT id FROM tb_projects WHERE github = 'https://github.com/Leandro-Cardoso?tab=repositories'),
    	(SELECT id FROM tb_techs WHERE name = 'Flask')
    ),
	(
    	(SELECT id FROM tb_projects WHERE github = 'https://github.com/Leandro-Cardoso?tab=repositories'),
    	(SELECT id FROM tb_techs WHERE name = 'Django')
    ),
	(
    	(SELECT id FROM tb_projects WHERE github = 'https://github.com/Leandro-Cardoso?tab=repositories'),
    	(SELECT id FROM tb_techs WHERE name = 'SQL')
    ),
	(
    	(SELECT id FROM tb_projects WHERE github = 'https://github.com/Leandro-Cardoso?tab=repositories'),
    	(SELECT id FROM tb_techs WHERE name = 'Java')
    ),
    (
		(SELECT id FROM tb_projects WHERE github = 'https://github.com/Leandro-Cardoso?tab=repositories'),
		(SELECT id FROM tb_techs WHERE name = 'Spring Boot')
	),
	(
		(SELECT id FROM tb_projects WHERE github = 'github'),
		(SELECT id FROM tb_techs WHERE name = 'Python')
	);

-- Insert work experiences
INSERT INTO tb_work_experiences (job_title, job_title_br, company, start_year, end_year, responsibilities, responsibilities_br) VALUES
    ('Office Assistant', 'Auxiliar de Escritório', 'SERTEC Contabilidade', 2011, 2011, 'Prepared balance sheets and Income Statements (DRE) using the "AlterData" system. Managed document and fee collection. Drafted purchase and sale agreements, rental contracts, and accounting service contracts. Monitored company registration and closure processes. Performed accounting entries, cash books, and general journals.', 'Elaboração de balanço patrimonial e DRE no sistema "AlterData", cobrança de documentos e honorários , redigir contratos de compra e venda, aluguel e de serviços contábeis, acompanhamento de abertura e encerramento de firma, lançamentos contábeis, livros caixa e diário.'),
	('Administrative Assistant', 'Auxiliar Administrativo', 'AlanMotors', 2011, 2014, 'Issued various types of invoices (sales, returns, warranty, and services). Managed document organization, orders, and public transportation voucher refills. Handled collections, payments, and managed employee performance reports. Conducted negotiations with suppliers. Prepared financial reports including profit and loss statements, and sales reports. Liaised with accounting for fiscal document tracking and collection. Assisted with employee hiring, vacation scheduling, and terminations. Maintained physical and system-based inventory control, and managed the stockroom.', 'Emissão de notas fiscais de venda, devolução, garantia e de serviços, organização de documentos, pedidos e recargas de VT, cobrança, pagamentos, gerenciamento e relatório de rendimento de funcionários, negociações com fornecedores, relatórios de ganhos e gastos com apuração do lucro, relatórios de vendas, acompanhamento e cobrança de documentos fiscais junto a contabilidade, acompanhamento de contratação, férias e rescisão de funcionários, controle de estoque físico e por sistema, almoxarifado.'),
	('Stock Manager', 'Gerente de Estoque', 'Bom Doce', 2014, 2015, 'Controle e gerenciamento de estoque, acompanhamento de pedidos, controle de carga e descarga de caminhões, relatórios de estoque, pedidos e de produção, solicitação de materiais e matéria prima.', 'Controle e gerenciamento de estoque, acompanhamento de pedidos, controle de carga e descarga de caminhões, relatórios de estoque, pedidos e de produção, solicitação de materiais e matéria prima.'),
	('Undergraduate Research Assistant', 'Iniciação Científica', 'UERJ', 2017, 2017, 'Conducted a research project simulating X-rays on a computer cluster. Utilized the Linux Kernel and C# programming language for the simulation.', 'Projeto de pesquisa de simulação de raios X em um cluster de computadores, utilizando o Kernel do Linux e a linguagem de programação C#.'),
	('Freelancer', 'Autónomo', null, 2016, 2023, 'Provided freelance programming services. Developed and executed digital marketing strategies. Managed commission-based online sales. Handled social media management. Performed website optimization for search engines (SEO).', 'Freelancer de Programação, Marketing digital, vendas online comissionadas, redes sociais, otimização de websites para mecanismos de busca.'),
	('Technology Intern', 'Estagiário de Tecnologia', 'Prefeitura de Saquarema', 2024, null, 'Provided technical support and network maintenance. Assisted with the setup and maintenance of electronic equipment for educational purposes. Supported teachers with technology-related materials and computer literacy classes.', 'Suporte técnico, manutenção de redes, Office, auxilio e manutenção de equipamentos eletrónicos voltados para o ensino, auxiliar professores com material tecnológico e aula de informática.');

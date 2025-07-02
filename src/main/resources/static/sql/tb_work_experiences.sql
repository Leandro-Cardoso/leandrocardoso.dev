CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

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

-- Insert work experiences
INSERT INTO tb_work_experiences (job_title, job_title_br, company, start_year, end_year, responsibilities, responsibilities_br) VALUES
    ('Office Assistant', 'Auxiliar de Escritório', 'SERTEC Contabilidade', 2011, 2011, 'Prepared balance sheets and Income Statements (DRE) using the "AlterData" system. Managed document and fee collection. Drafted purchase and sale agreements, rental contracts, and accounting service contracts. Monitored company registration and closure processes. Performed accounting entries, cash books, and general journals.', 'Elaboração de balanço patrimonial e DRE no sistema "AlterData", cobrança de documentos e honorários , redigir contratos de compra e venda, aluguel e de serviços contábeis, acompanhamento de abertura e encerramento de firma, lançamentos contábeis, livros caixa e diário.'),
	('Administrative Assistant', 'Auxiliar Administrativo', 'AlanMotors', 2011, 2014, 'Issued various types of invoices (sales, returns, warranty, and services). Managed document organization, orders, and public transportation voucher refills. Handled collections, payments, and managed employee performance reports. Conducted negotiations with suppliers. Prepared financial reports including profit and loss statements, and sales reports. Liaised with accounting for fiscal document tracking and collection. Assisted with employee hiring, vacation scheduling, and terminations. Maintained physical and system-based inventory control, and managed the stockroom.', 'Emissão de notas fiscais de venda, devolução, garantia e de serviços, organização de documentos, pedidos e recargas de VT, cobrança, pagamentos, gerenciamento e relatório de rendimento de funcionários, negociações com fornecedores, relatórios de ganhos e gastos com apuração do lucro, relatórios de vendas, acompanhamento e cobrança de documentos fiscais junto a contabilidade, acompanhamento de contratação, férias e rescisão de funcionários, controle de estoque físico e por sistema, almoxarifado.'),
	('Stock Manager', 'Gerente de Estoque', 'Bom Doce', 2014, 2015, 'Managed and controlled inventory levels, including monitoring orders. Oversaw the loading and unloading of trucks. Prepared reports on stock, orders, and production. Responsible for requesting materials and raw goods.', 'Controle e gerenciamento de estoque, acompanhamento de pedidos, controle de carga e descarga de caminhões, relatórios de estoque, pedidos e de produção, solicitação de materiais e matéria prima.'),
	('Undergraduate Research Assistant', 'Iniciação Científica', 'UERJ', 2017, 2017, 'Conducted a research project simulating X-rays on a computer cluster. Utilized the Linux Kernel and C# programming language for the simulation.', 'Projeto de pesquisa de simulação de raios X em um cluster de computadores, utilizando o Kernel do Linux e a linguagem de programação C#.'),
	('Freelancer', 'Autónomo', null, 2016, 2023, 'Provided freelance programming services. Developed and executed digital marketing strategies. Managed commission-based online sales. Handled social media management. Performed website optimization for search engines (SEO).', 'Freelancer de Programação, Marketing digital, vendas online comissionadas, redes sociais, otimização de websites para mecanismos de busca.'),
	('Technology Intern', 'Estagiário de Tecnologia', 'Prefeitura de Saquarema', 2024, null, 'Provided technical support and network maintenance. Assisted with the setup and maintenance of electronic equipment for educational purposes. Supported teachers with technology-related materials and computer literacy classes.', 'Suporte técnico, manutenção de redes, Office, auxilio e manutenção de equipamentos eletrónicos voltados para o ensino, auxiliar professores com material tecnológico e aula de informática.');

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create contacts
CREATE TABLE tb_contacts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    link VARCHAR(100) NOT NULL,
    image_url VARCHAR(100) NOT NULL
);

-- Insert contacts
INSERT INTO tb_contacts (name, link, image_url) VALUES
    ('WhatsApp', 'https://wa.me/5522992399041', 'images/social/whatsapp.svg'),
    ('E-Mail', 'mailto:leandrocardosodev@gmail.com?subject=Portfolio', 'images/social/mail.svg'),
    ('GitHub', 'https://github.com/Leandro-Cardoso', 'images/social/github.svg'),
    ('LinkedIn', 'https://www.linkedin.com/in/leandro-cardoso-992529266', 'images/social/linkedin.svg'),
    ('X', 'https://x.com/LeandroCDev', 'images/social/x.svg');

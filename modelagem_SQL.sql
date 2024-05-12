-- Tabela que armazena informações dos usuários
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY, -- Identificador único do usuário
    nome VARCHAR(100) NOT NULL, -- Nome do usuário
    email VARCHAR(100) NOT NULL, -- Endereço de e-mail do usuário
    senha VARCHAR(100) NOT NULL, -- Senha do usuário (recomenda-se criptografar)
    nascimento DATE NOT NULL, -- Data de nascimento do usuário
    area_trabalho VARCHAR(100) NOT NULL, -- Área de trabalho do usuário
    publicar_perfil BOOLEAN NOT NULL -- Indica se o perfil do usuário pode ser público
);

-- Tabela que armazena informações das organizações
CREATE TABLE organizacoes (
    id SERIAL PRIMARY KEY, -- Identificador único da organização
    nome VARCHAR(100) NOT NULL, -- Nome da organização
    email VARCHAR(100) NOT NULL, -- Endereço de e-mail da organização
    cnpj VARCHAR(20) NOT NULL, -- CNPJ da organização
    area_trabalho VARCHAR(100) NOT NULL, -- Área de trabalho da organização
    id_usuarios INTEGER REFERENCES usuarios(id) -- Chave estrangeira que referencia o usuário responsável pela organização
);

-- Tabela que armazena informações das publicações
CREATE TABLE publicacoes (
    id SERIAL PRIMARY KEY, -- Identificador único da publicação
    titulo VARCHAR(100) NOT NULL, -- Título da publicação
    descricao TEXT NOT NULL, -- Descrição da publicação
    anexos TEXT, -- Anexos relacionados à publicação
    id_usuarios INTEGER REFERENCES usuarios(id), -- Chave estrangeira que referencia o usuário que fez a publicação
    id_organizacoes INTEGER REFERENCES organizacoes(id) -- Chave estrangeira que referencia a organização relacionada à publicação
);

-- Tabela que armazena informações das oportunidades de trabalho
CREATE TABLE oportunidades (
    id SERIAL PRIMARY KEY, -- Identificador único da oportunidade
    vagas INTEGER NOT NULL, -- Número de vagas disponíveis na oportunidade
    descricao TEXT NOT NULL, -- Descrição da oportunidade
    area_trabalho VARCHAR(100) NOT NULL, -- Área de trabalho da oportunidade
    abertura DATE NOT NULL, -- Data de abertura da oportunidade
    fechamento DATE NOT NULL, -- Data de fechamento da oportunidade
    id_usuarios INTEGER REFERENCES usuarios(id), -- Chave estrangeira que referencia o usuário responsável pela oportunidade
    id_organizacoes INTEGER REFERENCES organizacoes(id) -- Chave estrangeira que referencia a organização responsável pela oportunidade
);

-- Tabela que armazena informações das inscrições nas oportunidades
CREATE TABLE inscricoes (
    id SERIAL PRIMARY KEY, -- Identificador único da inscrição
    nome VARCHAR(100) NOT NULL, -- Nome da pessoa que está se inscrevendo
    email VARCHAR(100) NOT NULL, -- Endereço de e-mail da pessoa que está se inscrevendo
    interesse TEXT NOT NULL, -- Descrição do interesse da pessoa na oportunidade
    curriculo TEXT, -- Informações do currículo da pessoa
    id_usuarios INTEGER REFERENCES usuarios(id), -- Chave estrangeira que referencia o usuário que está se inscrevendo
    id_oportunidades INTEGER REFERENCES oportunidades(id) -- Chave estrangeira que referencia a oportunidade para a qual a pessoa está se inscrevendo
);

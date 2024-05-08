CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    nascimento DATE NOT NULL,
    area_trabalho VARCHAR(100) NOT NULL,
    publicar_perfil BOOLEAN NOT NULL
);

CREATE TABLE organizacoes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cnpj VARCHAR(20) NOT NULL,
    area_trabalho VARCHAR(100) NOT NULL,
    id_usuarios INTEGER REFERENCES usuarios(id)
);

CREATE TABLE publicacoes (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    anexos TEXT,
    id_usuarios INTEGER REFERENCES usuarios(id),
    id_organizacoes INTEGER REFERENCES organizacoes(id)
);

CREATE TABLE oportunidades (
    id SERIAL PRIMARY KEY,
    vagas INTEGER NOT NULL,
    descricao TEXT NOT NULL,
    area_trabalho VARCHAR(100) NOT NULL,
    abertura DATE NOT NULL,
    fechamento DATE NOT NULL,
    id_usuarios INTEGER REFERENCES usuarios(id),
    id_organizacoes INTEGER REFERENCES organizacoes(id)
);

CREATE TABLE inscricoes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    interesse TEXT NOT NULL,
    curriculo TEXT,
    id_usuarios INTEGER REFERENCES usuarios(id),
    id_oportunidades INTEGER REFERENCES oportunidades(id)
);
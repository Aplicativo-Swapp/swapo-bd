--criacao da tabela de usuarios
--criacao de funcao para atualizar o horario que alguma informacao da linha da tabela foi alterada
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    CPF VARCHAR(11) NOT NULL UNIQUE,
    cidade VARCHAR(20), --FOREIGN KEY
    estado VARCHAR(20), --FOREIGN KEY
    bairro VARCHAR(20), --FOREIGN KEY
    logradouro VARCHAR(20),
    complemento VARCHAR(20),
    celular VARCHAR(11),
    genero VARCHAR(10),
    data_nascimento DATE,
    id_descricao INT, --FOREIGN KEY
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;  -- Atualiza a coluna updated_at com a data/hora atual
    RETURN NEW;  -- Retorna o novo registro
END;
$$ LANGUAGE plpgsql;  -- Define a linguagem da função como PL/pgSQL


CREATE TRIGGER update_usuario_updated_at
BEFORE UPDATE ON usuario  -- Define que o trigger irá atuar antes de um UPDATE
FOR EACH ROW  -- Define que o trigger será chamado para cada linha afetada
EXECUTE FUNCTION update_updated_at_column();  -- Chama a função criada
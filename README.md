# Swapp - Banco de Dados

Este repositório contém o banco de dados do projeto Swapp, um aplicativo de permuta que permite aos usuários trocar favores, serviços e habilidades.

## Acesso ao Banco de Dados

### Pré-requisitos

Para acessar o banco de dados, você precisará ter o [Docker](https://www.docker.com/get-started) e o [DBeaver](https://dbeaver.io/) instalados em seu computador.

### Passo a Passo para Acessar o Banco de Dados

1. **Clone o Repositório**

   Primeiro, você precisa clonar este repositório para sua máquina local. Execute o seguinte comando no terminal:

   ```bash
   git clone https://github.com/Aplicativo-Swapp/swapp-bd.git

2. **Navegue até o Diretório do Projeto**

   Após clonar o repositório, navegue até o diretório do projeto:

   ```bash
   cd swapp-bd


3. **Inicie o Contêiner Docker**

   Para iniciar o banco de dados, use o seguinte comando no terminal:
   ```bash
    docker-compose up
   ```
    Isso iniciará o contêiner do PostgreSQL com as configurações especificadas no arquivo docker-compose.yml.

4. **Conecte-se ao Banco de Dados Usando o DBeaver**

   - Abra o DBeaver.
   - Crie uma nova conexão:
     - Selecione `PostgreSQL` na lista de tipos de banco de dados.
     - Preencha os campos da seguinte forma:
       - **Host**: `localhost`
       - **Port**: `5432`
       - **Database**: `swapp_db`
       - **Username**: `swapp_user`
       - **Password**: `swapp_password`
   - Clique em `Test Connection` para verificar se a conexão está funcionando e depois em `Finish` para criar a conexão.

5. **Verifique as Tabelas**

   Após conectar-se, você poderá visualizar as tabelas que foram criadas no banco de dados. Use o DBeaver para realizar consultas e gerenciar os dados conforme necessário.

### Notas

- O banco de dados foi configurado para permitir que múltiplos usuários tenham acesso, mas somente um usuário (`swapp_user`) tem permissões administrativas.
- As informações de acesso podem ser alteradas no arquivo `docker-compose.yml` se necessário.

---

Para mais informações sobre o projeto Swapp, fique à vontade para consultar a documentação ou entrar em contato com a equipe.


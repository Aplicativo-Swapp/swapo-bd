# Swapp - Banco de Dados

Este repositório contém o banco de dados do projeto Swapp, um aplicativo de permuta que permite aos usuários trocar favores, serviços e habilidades.

## Acesso ao Banco de Dados

### Pré-requisitos

Para acessar o banco de dados, você precisará ter o [DBeaver](https://dbeaver.io/) instalados em seu computador.

### Passo a Passo para Acessar o Banco de Dados

1. **Conecte-se ao Banco de Dados Usando o DBeaver**

   - Abra o DBeaver.
   - Crie uma nova conexão:
     - Selecione `PostgreSQL` na lista de tipos de banco de dados.
     - Preencha os campos da seguinte forma:
       - **Host**: `swapp-db.cvm0qsuik7kf.us-east-1.rds.amazonaws.com`
       - **Port**: `5432`
       - **Database**: `postgres`
       - **Username**: `swapp_user`
       - **Password**: `swappsenha`
   - Clique em `Test Connection` para verificar se a conexão está funcionando e depois em `Finish` para criar a conexão.

5. **Verifique as Tabelas**

   Após conectar-se, você poderá visualizar as tabelas que foram criadas no banco de dados. Use o DBeaver para realizar consultas e gerenciar os dados conforme necessário.

### Notas

![image](https://github.com/user-attachments/assets/a34a16bf-8006-4f21-80ef-1d8ce1220085)


---

Para mais informações sobre o projeto Swapp, fique à vontade para consultar a documentação ou entrar em contato com a equipe.


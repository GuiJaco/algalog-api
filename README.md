# Projeto Mergulho Spring REST da Algaworks
[![NPM](https://img.shields.io/npm/l/react)](https://github.com/GuiJaco/algalog-api/blob/main/LICENSE)

# Sobre o projeto
Este é um projeto desenvolvido durante o Bootcamp da AlgaWorks, com o objetivo de estudar e aplicar diversas tecnologias. Trata-se de uma aplicação API que simula uma loja, permitindo o cadastro e consulta de clientes, solicitação, consulta e finalização de entregas, bem como o registro de ocorrências relacionadas às entregas. Com essa aplicação, é possível explorar na prática tecnologias como as citadas a baixo.

## Modelo conceitual
![Modelo Conceitual](https://github.com/GuiJaco/algalog-api/blob/main/assets/img/mapa-conceitual-alga-log.png)

# Tecnologias utilizadas
## Back end
- Java
- Spring Boot
- JPA / Hibernate
- Maven
- Flyway
- Lombok
- ModelMapper
- Insomnia
- Docker

## Implantação em produção
- Banco de dados: MySQL

# Como executar o projeto

## Back end
Pré-requisitos: Java 17
Docker
MySQL

```bash
# Utilizando o git
git clone https://github.com/GuiJaco/algalog-api.git

Setar as variáveis de ambiente setadas para seu MySQL no application.properties: ${DB_USER}, ${DB_PASSWORD}

Rodar o AlgalogApiApplication na pasta src/main/java/com.algaworks.algalog

Realizar as consultas utilizando Insomnia/Postman com os Paths informados abaixo

Ou

# Utilizando o docker
Baixar a imagem no DockerHub: https://hub.docker.com/repository/docker/guijaco/algalog-api

Rodar o container com as variáveis de ambiente setadas para seu MySQL usando o comando: 
  "docker run -e DB_USER=$ -e DB_PASSWORD=$ -p 8080:8080 guijaco/algalog-api"

Realizar as consultas utilizando Insomnia/Postman com os Paths informados abaixo
```

#Paths

```bash
Paths Clientes:

GET - "/clientes" - Lista de clientes

GET - "/clientes/{clienteId}" - Cliente pelo Id

POST - "/clientes" - Adicionar cliente 
    {
      "nome": "Exemple",
      "email": "Exemple@Exemple.com",
      "telefone": "Exemple"
    }

PUT - "/clientes/{clienteId}" - Atualizar cliente

DELETE - "/clientes/{clienteId}" - Excluir cliente

-----------------------------------------------------

Paths Entregas:

GET - "/entregas" - Lista de Entregas

GET - "/entregas/{entregaId}" - Entrega pelo Id

POST - "/entregas" - Adicionar entrega
    {
	"cliente": {
		"id": $
	},
	"destinatario": {
		"nome": "Exemple",
		"logradouro": "Exemple",
		"numero": "Number",
		"complemento": "Exemple",
		"bairro": "Exemple"
	},
	"taxa": BigDecimal
}

PUT - "/entregas/{entregaId}/finalizacao" - Finalizar entrega

-----------------------------------------------------

Paths Ocorrências:

GET - "/entregas/{entregaId}/ocorrencias" - Buscar ocorrências

POST - "/entregas/{entregaId}/ocorrencias" - Registrar ocorrências
    {
	"descricao": "Exemple"
    }
```

# Autor

Guilherme da Silva Jacó

https://www.linkedin.com/in/guilherme-jaco-dev/

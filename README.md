# *Challenge Sprint-04* - Quality Engineering & AI — CompassUOL | Trilha de Ruby
# **Calculadora com TDD em Ruby**

## Objetivo do Projeto
Este repositório consolida o desenvolvimento de uma calculadora utilizando a metodologia **TDD (Test-Driven Development)**. O objetivo principal foi demonstrar a aplicação prática do ciclo Red-Green-Refactor, validando regras de negócio, operações matemáticas e fluxos positivos/negativos em diferentes cenários de teste.

O projeto foca em boas práticas de engenharia de software, incluindo:
- Testes unitários com RSpec
- Versionamento semântico com Git

## Decisões Técnicas e Implementação
A arquitetura foi planejada para ser **extensível**, **testável** e de **fácil manutenção**.

- **Ruby 3.x & RSpec**: Escolhidos pela sintaxe clara e legibilidade dos testes, permitindo escrever especificações que funcionam como documentação viva do sistema.

- **TDD (Test-Driven Development)**: Implementação rigorosa do ciclo Red-Green-Refactor:
  - 🔴 Escrever um teste que falha primeiro
  - 🟢 Implementar o mínimo necessário para o teste passar
  - 🔵 Refatorar mantendo os testes verdes

- **SimpleCov**: Ferramenta de análise de cobertura de testes, garantindo que todas as linhas de código sejam executadas pelos testes.

- **Versionamento Semântico (Git)**: Utilização de branches padronizadas (`feat/`, `fix/`, `test/`) e tags semânticas (`v0.1.0`) para rastreabilidade profissional.

## Funcionalidades Implementadas

| Categoria | Operações |
|-----------|-----------|
| **Básicas** | Soma, Subtração, Multiplicação, Divisão |
| **Avançadas** | Potência, Raiz Quadrada, Porcentagem |
| **Tratamento de Erros** | Divisão por zero, Raiz de número negativo |

### Execução dos Testes
#### Executar todos os testes com formatação documentada
```bash
rspec spec/calculadora_spec.rb --format documentation
```
#### Executar com saída padrão
```bash
rspec spec/calculadora_spec.rb
```
#### Executar um grupo específico de testes
```bash
rspec spec/calculadora_spec.rb -e "#soma"
rspec spec/calculadora_spec.rb -e "#divisao"
```

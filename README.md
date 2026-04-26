# modelo-relatorio

# Relatório de Implementação de Serviços AWS - Abstergo Industries

**Data de Início:** Janeiro de 2026  
**Empresa:** Abstergo Industries  
**Responsável:** Cesar Silva

## Introdução

Este relatório apresenta o processo de implementação de ferramentas na empresa Abstergo Industries, realizado com o objetivo de elencar 3 serviços AWS com a finalidade de realizar diminuição de custos imediatos e otimização de infraestrutura.

## Descrição do Projeto

O projeto de implementação de ferramentas foi dividido em 3 etapas, cada uma com seus objetivos específicos:

### Etapa 1: AWS EC2 Reserved Instances
- **Nome da Ferramenta:** EC2 Reserved Instances
- **Foco da Ferramenta:** Redução de custos em computação em nuvem
- **Descrição de Caso de Uso:** Implementação de instâncias reservadas para workloads previsíveis, reduzindo custos de computação em até 72% comparado ao modelo on-demand. Ideal para aplicações que rodam 24/7.

### Etapa 2: AWS S3 Intelligent-Tiering
- **Nome da Ferramenta:** S3 Intelligent-Tiering
- **Foco da Ferramenta:** Otimização de armazenamento de dados
- **Descrição de Caso de Uso:** Implementação de camadas de armazenamento automáticas para dados históricos e arquivos menos acessados, reduzindo custos de armazenamento em até 70% sem impacto na performance.

### Etapa 3: AWS Cost Explorer
- **Nome da Ferramenta:** AWS Cost Explorer
- **Foco da Ferramenta:** Monitoramento e análise de custos
- **Descrição de Caso de Uso:** Implementação de dashboard de custos em tempo real para identificar desperdícios, acompanhar tendências de gastos e otimizar alocação de recursos.

## Benefícios Esperados

- **Redução de Custos:** Diminuição de 40-50% nos gastos mensais com AWS
- **Maior Eficiência:** Otimização automática de recursos
- **Visibilidade:** Controle total sobre gastos em tempo real
- **Escalabilidade:** Infraestrutura preparada para crescimento

## Conclusão

A implementação de ferramentas na empresa Abstergo Industries tem como esperado aumentar a eficiência operacional e reduzir significativamente os custos de infraestrutura. Recomenda-se a continuidade da utilização das ferramentas implementadas e a busca por novas tecnologias que possam melhorar ainda mais os processos da empresa.

## Estrutura do Repositório


1. Revisar documentação técnica em `/docs`
2. Executar scripts de configuração em `/scripts`
3. Implementar infraestrutura via Terraform
4. Monitorar custos via AWS Cost Explorer

---

**Assinado por:** Cesar
**Data:** 26 de Abril de 2026

2. Documentação Técnica - Etapa 1 (docs/etapa-1-ec2.md)

# Etapa 1: AWS EC2 Reserved Instances

## Objetivo
Reduzir custos de computação implementando instâncias reservadas para workloads previsíveis.

## Implementação

### Análise Inicial
- Identificar instâncias on-demand em uso contínuo
- Analisar padrões de utilização
- Calcular economia potencial

### Configuração
- Escolher tipo de instância (t3.medium, m5.large, etc)
- Selecionar período de reserva (1 ou 3 anos)
- Optar por pagamento upfront ou parcial

### Economia Esperada
- **On-Demand:** $0.0416/hora
- **Reserved (1 ano):** $0.0115/hora
- **Economia:** 72% de redução

## Monitoramento
Acompanhar utilização via CloudWatch e AWS Cost Explorer.

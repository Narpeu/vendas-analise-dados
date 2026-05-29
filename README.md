# Análise de Vendas - Pipeline de Dados

## Objetivo

Este projeto tem como objetivo analisar dados de vendas a partir de um pipeline estruturado de dados, passando por etapas de inspeção, tratamento, validação e análise exploratória. A proposta é gerar insights confiáveis que auxiliem na tomada de decisão baseada em dados.

---

## Dataset

- Fonte: Kaggle
- Tipo: Dados transacionais de vendas
- Descrição: Contém informações como produtos vendidos, valores, datas, países e clientes.

---

## Pipeline de Dados

O projeto foi estruturado em etapas que simulam um fluxo real de dados:

1. **Data Profiling (Inspeção dos Dados)**
   - Análise inicial de tipos, nulos e estrutura
   - Identificação de inconsistências e padrões

2. **Staging (Tratamento e Preparação dos Dados)**
   - Conversão de tipos (ex: datas)
   - Padronização de colunas categóricas
   - Limpeza de strings
   - Preparação dos dados para análise

3. **Validação de Dados**
   - Verificação de consistência entre variáveis (ex: SALES vs cálculo esperado)
   - Identificação de valores inválidos (≤ 0)
   - Levantamento de possíveis inconsistências e hipóteses

4. **Análise Exploratória de Dados (EDA)**
   - Receita por linha de produto
   - Receita por país
   - Análise de clientes mais relevantes
   - Tendência temporal de vendas
   - Distribuição de status de pedidos

---

## Principais Insights

- Identificação das linhas de produtos mais lucrativas
- Concentração de receita em determinados países
- Clientes com maior impacto no faturamento
- Padrões de sazonalidade nas vendas
- Indícios de dependência de poucos produtos/mercados

---

## Conclusão

O projeto evidenciou a importância da preparação e validação dos dados antes da análise, além de revelar padrões relevantes de concentração de receita e comportamento temporal. Esses insights podem apoiar decisões estratégicas como diversificação de portfólio e expansão geográfica.

---

## Tecnologias Utilizadas

- Python
- Pandas
- Jupyter Notebook
- SQL

---

## Próximos Passos

- Implementar consultas SQL equivalentes à análise
- Automatizar pipeline de dados
- Expandir para dashboards (Power BI ou Streamlit)


# Pacote ggplot2 ---------------------------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 09/11/22 ---------------------------------------------------------------------------------------------------------------------------
# Referência: https://www.datacamp.com/cheat-sheet/ggplot2-cheat-sheet?utm_source=twitter&utm_medium=organic_social&utm_campaign=22 --------

# Introdução -------------------------------------------------------------------------------------------------------------------------------

### ggplot2 é considerado um dos mais robustos pacotes de visualização de dados
### em qualquer linguagem de programação. 

### Ter capacidade na visualização de dados são apostas para qualquer pessoa que 
### procure aumentar as suas capacidades no R. ggplot2 é um dos principais pacotes do R,
### pois permite uma acessível abordagem para construir robustas visualizações no R.
### No cheat sheet anexado a este github você terá um útil guia para todas as funções
### e técnicas para iniciar o ggplot2 no R.

# A Gramática de Gráficos ------------------------------------------------------------------------------------------------------------------

### A gramática de gráficos é um framework para especificar os componentes de um gráfico.
### Essa abordagem de construir gráficos em um caminho modular permite um alto nível de 
### flexibilidade para criar abrangentes formas de visualização. O framework pode tornar
### a produção de gráficos mais fácil porque você apenas precisa declarar o que você quer
### no gráfico - o software, como o ggplot2 do R, tem que descobrir como desenhar a figura.

# Criando seu primeiro gráfico com uma simples linha de código -----------------------------------------------------------------------------

library(ggplot2) # Primeiro carregue o pacote

ggplot(data, aes(x = x_column, y = y_column)) + 
       geom_line()

### ggplot() creates a canvas to draw on. 

### data is the data frame containing data for the plot. It contains columns named 
### x_column and y_column.

### aes() matches columns of data to the aesthetics of the plot. Here,  x_column is used 
### for the x-axis and y_column for the y-axis.

### geom_line() adds a line geometry. That is, it draws a line plot connecting each data 
### point in the dataset.

# Geometrias, atributos e estéticas do ggplot2 ---------------------------------------------------------------------------------------------

### Geometrias são as representações visuais dos dados. As geometrias comuns são pontos,
### linhas, barras, histogramas, boxes e mapas. As propriedades visuais das geometrias,
### como cor, tamanho e forma podem ser definidas como atributos ou estéticas (relacionadas
### às variáveis x e y).

### Atributos são valores fixos de propriedades visuais das geometrias. Por exemplo, se você
### que estabelecer as cores de todos os pontos para vermelho, então você deveria estabelecer
### o atributo de cor (color) para red. Esses atributos devem sempre ser definidos dentro da
### função de geometria (geom).

ggplot(data, aes(x = x_column, y = y_column)) +
       geom_line(color = "red")



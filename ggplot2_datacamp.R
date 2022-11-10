
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

### Aesthetic são valores visuais das propriedades das geometrias que dependem dos dados.
### Por exemplo, se você quer a cor dos pontos dependendo dos valores na coluna_z, então
### você deverá mapear a coluna z para obter cor. Essa estética pode ser definida dentro
### da geometria (geom) ou dentro da função do ggplot.
 
# Create a lineplot where lines are colored according to another in ggplot2
ggplot(data, aes(x = x_column, y = y_column)) +
       geom_line(aes(color = z_column))

### Aqui estão os mapeamentos estéticos mais comuns e os atributos que você encontrará no ggplot2

### x set or map the x-axis coordinate
### y set or map the x-axis coordinate
### color set or map the color or edge color
### fill set or map the interior (fill) color
### size set or map the size or width
### alpha set or map the transparency

# As visualizações mais comuns no ggplot2 --------------------------------------------------------------------------------------------------

### Capturar uma tendência

# Create a multi-line plot with ggplot2
ggplot(data, aes(x_column, y_column, color = color_column)) +   
       geom_line()

# Create an area chart with ggplot2
ggplot(data, aes(x = x_column, y = y_column)) +
       geom_area()

# Create a stacked area chart with ggplot2
ggplot(data, aes(x = x_column, y = y_column, fill = z_column)) +
       geom_area()

# Visualizar relações ----------------------------------------------------------------------------------------------------------------------

# Create a scatter plot with ggplot2
ggplot(data, aes(x = x_column, y = y_column)) +
       geom_point()

# Create a bar plot with ggplot2 
ggplot(data, aes(x = x_column, y = y_column)) + 
       geom_col()

### Nota: Troque geom_col() por geom_bar() para calcular as alturas das barras 
### a partir das contagens dos valores x.

# Create a lollipop chart with ggplot2
ggplot(data, aes(x = x_column, y = y_column)) +
       geom_point() + 
       geom_segment(aes(x = x_column, xend = x_column, y = 0, 
                        yend = y_column))

# Create a bubble plot with ggplot2
ggplot(data, aes(x = x_column, y = y_column, size = size_column)) +
       geom_point(alpha = 0.7) +
       scale_size_area()

### Nota: Num gráfico de bolhas, as "bolhas" podem sobrepor-se, o que pode ser resolvido 
### ajustando o atributo de transparência, alpha. scale_size_area() faz com que os 
### pontos sejam proporcionais aos valores em size_column.

# Visualizar distribuições -----------------------------------------------------------------------------------------------------------------

# Create a histogram with ggplot2
ggplot(data, aes(x_column)) + 
       geom_histogram(bins = 15)

# Create a box plot with ggplot2
ggplot(data, aes(x = x_column, y = y_column)) +
       geom_boxplot()

# Create a violin plot with ggplot2
ggplot(data, aes(x = x_column, y = y_column, fill = z_value)) +
       geom_violin()

# Create a density plot with ggplot2
ggplot(data, aes(x = x_column)) +
       geom_density()

# Customizando visualizações com ggplot2 ---------------------------------------------------------------------------------------------------

### Manipulando eixos

# Switching to logarithmic scale
ggplot(data, aes(x = x_column, y = y_column)) + 
      geom_point() +
      scale_x_log10() # or scale_y_log10

# Reverse the direction of the axis
ggplot(data, aes(x = x_column, y = y_column)) + 
      geom_point() + 
      scale_x_reverse()

# Square root scale
ggplot(data, aes(x = x_column, y = y_column)) +
       geom_point() +
       scale_x_sqrt()

# Changing axis limits without clipping
ggplot(data, aes(x = x_column, y = y_column)) +
      geom_point() +
      coord_cartesian(xlim = c(min, max), 
                      ylim = c(min, max),
                      clip = "off")

# Changing axis limits with clipping  
ggplot(data, aes(x = x_column, y = y_column)) + 
      geom_point() + 
      xlim(min, max) + 
      ylim(min, max)
# Quick assessment of the Iris dataset!

library(datasets)
library(plotly)
library(tidyverse)


# Load in dataset
iris <- datasets::iris

# Create 3D plot using plotly
iris_fig <- plot_ly(x=iris$Sepal.Length, 
        y=iris$Petal.Length,
        z=iris$Sepal.Width,
        type="scatter3d", 
        mode="markers", 
        color=iris$Species, 
        size=10)

# Add axis labels
iris_fig <- iris_fig %>%      
layout(scene = list(xaxis = list(title = 'Sepal Length'),
                    yaxis = list(title = 'Sepal Width'),
                    zaxis = list(title = 'Petal Length')))
        
iris_fig



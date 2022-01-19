
# Load Packages -----------------------------------------------------------

# Loading Packages:
library(tidyverse)
library(palmerpenguins)

# Getting Penguin information to look at:
View(penguins)

# Scatter Plots -----------------------------------------------------------

# Making Plots of information (3 different types): 
  # All Island and Species on same graph: 
ggplot(data = penguins) +
  geom_point(mapping = aes(x = body_mass_g, 
                           y = flipper_length_mm, 
                           color = species, 
                           shape = island))

# Separating Information by Species:
ggplot(data = penguins) +
  geom_point(mapping = aes(x = body_mass_g,
                           y = flipper_length_mm,
                           color = species,
                           shape = island)) +
  facet_wrap( ~ species, nrow = 1)

  # Separating Information by Species and Island:
ggplot(data = penguins) +
  geom_point(mapping = aes(x = body_mass_g, 
                           y = flipper_length_mm, 
                           color = species, shape = island)) +
  facet_grid(island ~ species)

library(healthds)
library(tidyverse)

growth_wide_weight <- 
  growth_data %>%
  pivot_wider(id_cols = id, 
              names_from = months,
              names_prefix = "weight_month",
              values_from = weight_kg)

growth_wide_weight %>%
  pivot_longer(cols = !id,
               names_to="months",
               values_to="weight_kg")
#### Preamble ####
# Purpose:Download data from opendatatoronto
# Author: Krupali Bhavsar
# Data: 3 January 2021
# Contact: krupali.bhavsar@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)
library(opendatatoronto)

#### Data download ####
# From https://open.toronto.ca/dataset/toronto-shelter-system-flow/

# Datasets are grouped into packages that have multiple datasets that are relevant to that topic
# look ar package first using a unique key that we got from the datasets website

# get all resources for this package
resources <- list_package_resources("ac77f532-f18b-427c-905c-4ae87ce69c93")

# need unique key from list of resources 

# one resource and get_resource will load that
shelter_usage <- 
  resources %>% 
  get_resource()

#### Save data ####
write_csv(shelter_usage, "shelter_usage.csv")

         
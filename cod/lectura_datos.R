
data <- read_excel("data/Final+Data+Set.xlsx")

data <- data %>%
  mutate(evento = ifelse(`Survival stauts` == "Dead", 1, 0),
         tiempo = `10yr survival (months)`)


data <- read_excel("data/Final+Data+Set.xlsx")

data <- data %>%
  mutate(delta_total = ifelse(`Survival stauts` == "dead", 1, 0),
         delta_10years = ifelse(`Survival status at 10yr follow-up (months)` == "dead", 1, 0) )

colnames(data) <- gsub(" ", "_", colnames(data))
library(rvest)


url <- "https://stats.stackexchange.com/questions?tab=Votes"


page <- read_html(url)


titles <- page %>%
  html_nodes(".question-hyperlink") %>%
  html_text()


views <- page %>%
  html_nodes(".views") %>%
  html_text() %>%
  gsub("\\D", "", .) %>%
  as.integer()


answers <- page %>%
  html_nodes(".status") %>%
  html_text() %>%
  gsub("\\D", "", .) %>%
  as.integer()


votes <- page %>%
  html_nodes(".vote-count-post") %>%
  html_text() %>%
  gsub("\\D", "", .) %>%
  as.integer()


data <- data.frame(
  Title = titles,
  Views = views,
  Answers = answers,
  Votes = votes
)


print(data)


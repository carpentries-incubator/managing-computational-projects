library(timevis)

data <- data.frame(
  id      = 1:6,
  content = c("First development by turing way team", "sprint",
              "Change for workbench lessons", "Change toc",
              "Review and extension by A2P", "First test run"),
  start   = c("2020-01-20", "2022-04-25",
              "2022-08-10", "2023-01-01",
              "2023-08-10", "2023-07-15"),
  end     = c("2022-01-20", "2022-05-25", 
              "2022-08-30", "2023-04-01",
              "2022-06-30", NA)
)
#write.csv (data, "helpers/timeline.csv")

data <- read.csv("helpers/timeline.csv")


tv = timevis(data,
        groups = data.frame(id = 1:2, content = c("", ""), style=c("color: red;",NA)),
        options= list(configure=TRUE, orientation="top"),
        width = "100%")

style <- "
.vis-item .vis-item-overflow { overflow: visible; }
"

tv2 <- tagList(tags$style(style), tv)
htmltools::html_print(tv2)

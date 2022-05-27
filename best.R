best = function(state, outcome) {
  df = read.csv("outcome-of-care-measures.csv")
  if (outcome == "heart attack") {
    df = df[, c(2, 7, 11)]
  }
  if (outcome == "heart failure") {
    df = df[, c(2, 7, 17)]
  }
  if (outcome == "pneumonia") {
    df = df[, c(2, 7, 23)]
  }
  df[, 3] = as.numeric(df[, 3])
  df = df[df[, 2] == state,]
  df = df[order(df[, 3]),]
  res = df[1, 3]
  df = df[df[, 3] == res,]
  df[complete.cases(df),][,1]
}
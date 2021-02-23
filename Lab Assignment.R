
# load packages -----------------------------

library(tidyverse)

# read data ---------------------------------

iris
iris <- as_tibble(iris)
iris

# question 1 -------------------------------

iris_new <- 
  rename(
    iris,
    sepal_length = Sepal.Length,
    sepal_width = Sepal.Width,
    petal_length = Petal.Length,
    petal_width = Petal.Width
  )

iris_new

# question 2 -------------------------------

iris_numbers<- select(iris_new, sepal_length, sepal_width, petal_length, petal_width)
iris_numbers
mutate(iris_new, iris_numbers = iris_numbers * 10)


# question 3 -------------------------------

Q3 <-mutate(iris_new, sepal_area = sepal_length * sepal_width, petal_area = petal_length * petal_width)
Q3
Q3.5 <- select(Q3, sepal_area, petal_area)
Q3.5

# question 4 -------------------------------

summarize(
  iris_new,
  sampl_size = n(),
  min = min(sepal_length),
  max = max(sepal_length),
  range = max(sepal_length) - min(sepal_length),
  median = median(sepal_length),
  q1 = quantile(sepal_length, probs = 0.25),
  q2 = quantile(sepal_length, probs = 0.75),
  IQR = IQR(sepal_length)
)


# question 5 -------------------------------

summarize(
  iris_new,
  sample_size = n(),
  mean = mean(petal_width),
  sd = sd(petal_width),
  var = var(petal_width),
  sem = mean / sqrt(sample_size),
  ci_upper = mean + 2 * sem,
  ci_lower = mean - 2 * sem
)

# question 6 -------------------------------

ggplot

# question 7 -------------------------------


# question 8 -------------------------------




